class Pastie
  require 'net/http'
  require 'uri'
  require 'rbconfig'

  PASTIE_URL = URI.parse "http://pastie.org/pastes"
  
  def self.using_mac_os?
    RbConfig::CONFIG['host_os'] =~ /darwin/i
  end
  
  def self.create(body, options={})
    raise "Pastie uses `pbpaste` and `pbcopy`, which are only available on Mac OS X." unless using_mac_os?
    
    req = Net::HTTP::Post.new(PASTIE_URL.path)
    
    form_data = {"paste[body]" => body, "paste[authorization]" => "burger"}
    form_data.merge!({"paste[restricted]" => "1" }) if options[:private]
    
    req.set_form_data(form_data)
    req.add_field("User-Agent", "pastie gem")
    
    result = Net::HTTP.new(PASTIE_URL.host, PASTIE_URL.port).start {|http| http.request(req) }
    result['location']
  end
end
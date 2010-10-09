require 'rubygems'
require 'open-uri'
require 'nokogiri'
require 'cgi'

class FoafProxy
  @@foaf_query_url = 'http://foaf.sk/?q='

  def self.related_companies(name,address = nil)
    doc = FoafProxy.foaf_query(name, address)
    own = parse_out_own(doc, 'ludia')
    related = parse_out_related_info(doc,'.companies .item')
    own + related
  end

  def self.related_persons(name,address = nil)
    doc = FoafProxy.foaf_query(name, address)
    own = parse_out_own(doc, 'firmy')
    related = parse_out_related_info(doc, '.people .item')
    own + related
  end

  private

  def self.foaf_query(name, address)
    query = name
    query = query + " #{address}" unless address.nil?
    Nokogiri::HTML(open(@@foaf_query_url+CGI.escape(query)))
  end

  def self.parse_out_related_info(doc, selector)
    doc.css(selector).collect {|item| item.css('p:first a').inner_text}
  end

  def self.parse_out_own(doc, ommit)
    return [] if doc.css('.match .related a').first['href'].match(/\/#{ommit}*/)
    results = doc.css('.match .related a').collect {|item| item.inner_text }
  end
end

#companies = FoafProxy.related_companies("Microsoft")
#companies = FoafProxy.related_companies("PhDr. Pavol Rusko")
#puts companies.inspect
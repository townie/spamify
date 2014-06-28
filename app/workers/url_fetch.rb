require 'mechanize'
require 'pry'
agent = Mechanize.new

class UrlFetch

@queue = :url
	def work
		puts "Hello world"
	end

	def self.perform(url_id)
		url = Url.find(url_id)
	
		agent = Mechanize.new
		

		page = agent.get(url.ip)
		page.links.each do |link|
  			visted_link = VisitedUrl.new
  			visted_link.page = link.text
  			visted_link.url = link.href
  			visted_link.content = link.click.content
  			
  			visted_link.save!
		end	
	end
end
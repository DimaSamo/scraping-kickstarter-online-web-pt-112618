# require libraries/modules here
require 'nokogiri'
require 'pry'
def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  #kickstarter.css(".project-card-wrap") -- projects
  #project.css("h2.bbcard_name strong a").text -- title
  binding.pry
end

create_project_hash

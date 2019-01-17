# require libraries/modules here
require 'nokogiri'
require 'pry'
def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  projects = {}
  kickstarter.css(".project-card-wrap").each do |project|
    projects[project] = {}
  end
  projects


  #kickstarter.css(".project-card-wrap") -- projects
  #project.css("h2.bbcard_name strong a").text -- title
  #project.css(".project-thumbnail img").attribute("src").value -- img URL
  #project.css(".bbcard_blurb").text -- Description
  #project.css(".project-meta li a .location-name").text -- Location
  #project.css("ul.project-stats li.first.funded strong").text.gsub("%", "").to_i -- Percent Funded
  binding.pry
end

create_project_hash

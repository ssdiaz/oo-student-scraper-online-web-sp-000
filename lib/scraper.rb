require 'nokogiri'
require 'open-uri'
require 'pry'

#index_url = open("https://learn-co-curriculum.github.io/student-scraper-test-page/index.html")

class Scraper

  def self.scrape_index_page(index_url)
    #The return value of this method should be an array of hashes in which each hash represents a single student.
    #The keys of the individual student hashes should be :name, :location and :profile_url

    website = Nokogiri::HTML(open(index_url))
    students = []

    # length of 1; whole container
    section = website.css("div.roster-cards-container")
    # length of 110; each student card
    student_cards = section.css("div.student-card") #note: I can use instead of both above: student-card = website.css("div,student-card")

    #scraping the section and adding student hash into array
     student_cards.each do |student|
       students <<  {
          :name => student.css("h4.student-name").text,
          :location => student.css("p.student-location").text,
          :profile_url => student.css("a").attribute("href").text,
        }
     end

     #return the array
     students
  # binding.pry
  end


  def self.scrape_profile_page(profile_url)
    # scraping an individual student's profile page
    # The return value should be a hash in which the key/value pairs describe an individual student

    profile = Nokogiri::HTML(open(profile_url))
    hash_socials = []

    #length of 1; whole container
    icon_section = profile.css("div.social-icon-container")
    #length of 4; per person
    #icons_per_page = profile.css("img.social-icon")
    icons_per_page = icon_section.css("a")

       icons_per_page.each do |icon|
         if ___ .include?("twitter")
           :twitter => icon.attribute("href").text
         end


         hash_socials << :twitter if true
        #
        #     {
        #       #if profile.css("div.social-icon-container a").attribute("href").text.include?("twitter")
        #         :twitter => icon.attribute("href").text,
        #         :linkedin => icon.attribute("href").text,
        #         # :github =>
        #         # :blog =>
        #         # :profile_quote =>
        #          :bio => profile.css("div.description-holder p").text
        #       #end
        #   }
         end
    # #      :twitter => icon.css("div.social-icon-container a").attribute("href").text
    # #             # profile.css(".social-icon").attribute("src").text
    # #             # profile.css("div.social-icon-container a").attribute("href").text.include?("twitter")
    # #  gives tru # profile.css("div.social-icon-container a").attribute("href").text.include?("twitter")
    #
    # # #     :linkedin =>
    # # #     :github =>
    # # #     :bog =>
    # # #     :profile_quote =>
    # # #     :bio =>
    # #
    #     }
    #  end
     #binding.pry
    #hash_socials
    binding.pry
  end

end

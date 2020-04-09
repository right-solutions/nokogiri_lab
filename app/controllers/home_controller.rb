  class HomeController < ApplicationController 

    require 'nokogiri'
    require 'open-uri'
    
    def index     
      # binding.pry



      # Fetch and parse HTML document
      doc = Nokogiri::HTML(open('https://nokogiri.org/tutorials/installing_nokogiri.html'))

      # puts "### Search for nodes by css"
      # doc.css('nav ul.menu li a', 'article h2').each do |link|
      #   puts "----------"
      #   puts link.content
      # end

      # puts "### Search for nodes by xpath"
      # doc.xpath('//nav//ul//li/a', '//article//h2').each do |link|
      #   puts link.content
      # end

      puts "### Or mix and match."
      doc.search('nav ul.menu li a', '//article//h2').each do |link|
        text = link.content.split(' ')
        rev_text = text.reverse
        binding.pry
        raise
        puts link.content
      end 
    end

  end




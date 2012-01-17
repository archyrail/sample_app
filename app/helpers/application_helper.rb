module ApplicationHelper
   #Return a title on a per-page basis
   #entered by lrg on 1/3/2011 from ROR tutorial Listing 4.2
   def title
      base_title="Ruby on Rails Tutorial Sample App"
      if @title.nil?
	 base_title
      else
	 "#{base_title} | #{@title}"
      end
   end
end

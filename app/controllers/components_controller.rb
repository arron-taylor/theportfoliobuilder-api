class ComponentsController < ApplicationController

	def configure(page)

			todo_list = Component.create(:name => "Todo List", :component_type => "Dashboard", :size => "Default", :location => "1")
			page_visits = Component.create(:name => "Page Visits", :component_type => "Dashboard", :size => "Default", :location => "2")
			homepage_hero = Component.create(:name => "Hero", :component_type => "Hero", :size => "Large", :location => "1")

			if(page.name == "Dashboard")
				page.components << todo_list
				page.components << page_visits
			end

			if(page.name == "Homepage")
				page.components << homepage_hero
			end
			

	end

end
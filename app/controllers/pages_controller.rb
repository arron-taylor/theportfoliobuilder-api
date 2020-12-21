class PagesController < ApplicationController

	def make_initial_pages_for(user)
			components_to_add = ComponentsController.new
			dashboard = Page.create(:name => "Dashboard", :page_type => "Dashboard", :page_kind => "Admin", :page_layout => "Admin")
      homepage = Page.create(:name => "Homepage", :page_type => "Index", :page_kind => "Page", :page_layout => "Sidebar")
			components_to_add.configure(dashboard)
			components_to_add.configure(homepage)
      user.pages << dashboard
      user.pages << homepage
	end

end
class PagesController < ApplicationController

	def on_signup(user)
			dashboard = Page.create(:name => "Dashboard", :page_type => "Dashboard", :page_kind => "Admin", :page_layout => "Admin")
      homepage = Page.create(:name => "Home", :page_type => "Index", :page_kind => "Page", :page_layout => "Sidebar")
      user.pages << dashboard
      user.pages << homepage
	end

end
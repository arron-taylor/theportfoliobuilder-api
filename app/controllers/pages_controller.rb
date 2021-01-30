class PagesController < ApplicationController

	 wrap_parameters :page, include: [:name, :page_layout, :page_kind, :page_type]
   skip_before_action :require_login, only: [:all]

  def all
    @pages = Page.all
    render json: @pages
  end

	def make_initial_pages_for(user)
			components_to_add = ComponentsController.new
			dashboard = Page.create(:name => "Dashboard", :page_type => "Dashboard", :page_kind => "Admin", :page_layout => "Admin")
      homepage = Page.create(:name => "Homepage", :page_type => "Index", :page_kind => "Page", :page_layout => "Sidebar")
			components_to_add.configure(dashboard)
			components_to_add.configure(homepage)
      user.pages << dashboard
      user.pages << homepage
	end

	def create
		page = @user.pages.create(page_params)
    if page.valid?
      render json: {page: page}
    else
        render json: {errors: user.errors.full_messages}, status: :not_acceptable
    end
	end
  def delete 
    @page = Page.find_by(id: params[:id])
    @page.destroy
  end
  def edit 

    @page = Page.find_by(id: params[:id])
    @page.page_layout = params[:page_layout]
    @page.save

  end
	def page_params
      params.require(:page).permit(:name, :page_layout, :page_kind, :page_type, :id)
    end
end
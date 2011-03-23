class CompaniesController < ApplicationController

  hobo_model_controller

  skip_before_filter :login_required, :only => [:search_companies]

  auto_actions :none

  def search_companies
    @companies = @foo = Company.where(:name => params[:name])
    hobo_ajax_response
  end

end

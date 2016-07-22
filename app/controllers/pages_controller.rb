class PagesController < ApplicationController
  skip_authorization_check
  add_breadcrumb "Главная", :root_path
  
  def home
  end

  def about
  end

  def help
  end
end

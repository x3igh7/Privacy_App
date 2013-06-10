#This is the HomeController
class HomeController < ApplicationController

  def index
    
    
    if params[:commit].present? && params[:Name].present?
      session[:name] = 1
      flash[:notice] = "YES!"
      redirect_to results_path
    elsif params[:commit].present? && params[:Name].present? == false
      session[:name] = 2
      flash[:notice] = "YES!"
      redirect_to results_path
    end

  end

  def results
    @image_files = %w( .jpg .gif .png )
    @images  = Dir.entries("public/name").delete_if { |x| !@image_files.index(x[-4,4]) }
    random_no = rand(@images.length)
    @random_image = @images[random_no]
  end

end
# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  before_filter :adicionar_paginacion
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @documentos }
    end
  end
  protected
  def adicionar_paginacion
    @page = params[:page] || 1
  end

end

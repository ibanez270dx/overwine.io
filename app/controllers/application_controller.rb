class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
  end

  def contact
    ApplicationMailer.lets_talk(params[:email], params[:message]).deliver_now
    render js: <<-EOS
      $('#contact-us form').addClass('thank-you');
    EOS
  end

  def sitemap
    respond_to do |format|
      format.xml
    end
  end

end

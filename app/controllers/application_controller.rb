class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
  end

  def contact
    render js: if Google::Recaptcha.verify(params["g-recaptcha-response"])
      ApplicationMailer.lets_talk(params[:email], params[:message]).deliver_later
      <<~JS
        $("#contact-us form").addClass("thank-you");
      JS
    else
      <<~JS
        $("#contact-us form").addClass("verify-failed").delay(2000).queue(function(){
          $(this).removeClass("verify-failed").dequeue();
        });
      JS
    end
  end

  def sitemap
    respond_to do |format|
      format.xml
    end
  end

end

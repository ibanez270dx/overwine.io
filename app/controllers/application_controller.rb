class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
  end

  def contact
    render js: if Google::Recaptcha.verify(params["g-recaptcha-response"])
      ApplicationMailer.lets_talk(params[:email], params[:message]).deliver_later
      <<~JS
        $("form#contact").addClass("thank-you");
        $("form#contact button").removeClass("fa-spin");
      JS
    else
      <<~JS
        $("form#contact").addClass("verify-failed").delay(2000).queue(function(){
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

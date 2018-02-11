module Google
  class Recaptcha

    def self.verify(response)
      @tries = 3
      endpoint = "https://www.google.com/recaptcha/api/siteverify"
      response = Faraday.new(url: endpoint).post do |request|
        request.body = {
          url: endpoint,
          secret: Rails.application.secrets.recaptcha_secret_key,
          response: response
        }
      end
      JSON.parse(response.body)&.dig("success") || false
    rescue Faraday::ConnectionFailed, Faraday::TimeoutError
      retry unless (@tries -= 1).zero?
      Rails.logger.error "Couldn't verify recaptcha! #{$!}"
      false
    end

  end
end

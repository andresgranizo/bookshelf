module Web
  module Controllers
    module Weather
      class Temperature
        include Web::Action
        expose :result

        def call(params)
          # require 'net/http'
          # require 'json'
          # url = 'https://api.openweathermap.org/data/2.5/weather?id='+params[:id]+'&units=metric&APPID='16a64a47cbe6197d3ab73480a037754c''
          # uri = URI(url)
          # response = Net::HTTP.get(uri)
          # @result = JSON.parse(response)
        end
      end
    end
  end
end 



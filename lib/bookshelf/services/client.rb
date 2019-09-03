module Bookshelf
  module Services
    class Client
      BASE_URL = 'http://api.openweathermap.org/data/2.5/weather'.freeze

      def query(location)
        response = make_request(build_params_for(location))
        parsed_response = JSON.parse(response)
        Weather.new(
          parsed_response.dig('main', 'temp'),
          parsed_response.dig('main', 'temp_min'),
          parsed_response.dig('main', 'temp_max')
        )
      rescue RestClient::NotFound
        raise CityNotFound, "The city #{location} does not exist"
      end

      private

      def make_request(params)
        RestClient.get(BASE_URL, { params: params })
      end

      def build_params_for(location)
        {
          q: location,
          appid: '16a64a47cbe6197d3ab73480a037754c', # ENV['APP_ID'],
          units: 'metric'
        }
      end
    end
  end
end

module Web
  module Controllers
    module Weather
      class Search
        include Web::Action

        def call(params)
          client = ::Bookshelf::Services::Client.new
          @weather = client.query(params.dig(:weather, :location))
          redirect_to "/results?temp=#{@weather.temp}&temp_min=#{@weather.temp_min}"
        end
      end
    end
  end
end

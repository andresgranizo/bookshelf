module Web
  module Controllers
    module Weather
      class Results
        include Web::Action

        expose :weather

        def call(params)
          @weather = ::Bookshelf::Services::Weather.new(
            params[:temp], params[:temp_min], nil
          )
        end
      end
    end
  end
end

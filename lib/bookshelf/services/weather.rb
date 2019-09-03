module Bookshelf
  module Services
    class Weather
      attr_reader :temp, :temp_min, :temp_max

      def initialize(temp, temp_min, temp_max)
        @temp     = temp
        @temp_min = temp_min
        @temp_max = temp_max
      end
    end
  end
end

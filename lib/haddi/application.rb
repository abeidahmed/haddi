require "rack"
require "byebug"
require "erb"

module Haddi
  class Application
    class << self
      %w[GET POST PATCH PUT DELETE HEAD OPTIONS].each do |verb|
        define_method(verb.downcase) do |route, &block|
          set_route[verb] << [compile(route), block]
        end
      end

      def set_route
        @set_route ||= Hash.new { |hash, key| hash[key] = [] }
      end

      private

      def compile(route)
        keys = []
        route.gsub!(/(:\w+)/) do
          keys << Regexp.last_match(1)[n..]
          "([^/?#]+)"
        end

        [%r{^#{route}$}, keys]
      end

      def builder
        @builder ||= Rack::Builder.new
      end
    end

    attr_reader :request, :response

    def call(env)
      @request = Rack::Request.new(env)
      @response = Rack::Response.new(route_eval)
      @response.finish
    end

    private

    def route_eval
      self.class.set_route[request.request_method].each do |matcher, block|
        return block.call if request.path_info.match(matcher[0])
      end
    end
  end
end

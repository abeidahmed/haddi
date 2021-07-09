require "tilt"

module Haddi
  module Render
    def render(template, locals: {}, options: {}, &block)
      templates_cache.fetch(template) do
        Tilt.new(template, options)
      end.render(self, locals, &block)
    end

    def templates_cache
      Thread.current[:templates_cache] ||= Tilt::Cache.new
    end
  end
end

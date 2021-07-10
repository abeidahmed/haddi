require "tilt"
require_relative "./erb_renderer"

module Haddi
  module Render
    def render(template, layout: nil, locals: {})
      block = proc { ERBRenderer.new(template, locals).call }

      templates_cache.fetch(layout) do
        Tilt.new(layout)
      end.render(self, locals, &block)
    end

    def templates_cache
      Thread.current[:templates_cache] ||= Tilt::Cache.new
    end
  end
end

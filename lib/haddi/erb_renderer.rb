require "erb"

class ERBRenderer
  attr_reader :locals

  def initialize(template, locals)
    @template = template
    @locals = locals
  end

  def call
    ERB.new(File.read(@template)).result(binding)
  end
end

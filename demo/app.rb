require "erb"
require_relative "../lib/haddi/application"

class App < Haddi::Application
  get "/" do
    render "index.html.erb"
  end

  get "/hello" do
    "Hello to you"
  end

  def self.render(template)
    path = File.expand_path("../views/#{template}", __FILE__)
    ERB.new(File.read(path)).result(binding)
  end
end

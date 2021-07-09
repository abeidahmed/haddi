require_relative "../lib/haddi/application"
require_relative "../lib/haddi/render"

class App < Haddi::Application
  extend Haddi::Render

  get "/" do
    render "./demo/layouts/application.html.erb" do
      render "./demo/views/index.html.erb"
    end
  end

  get "/hello" do
    "Hello to you"
  end
end

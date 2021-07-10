require_relative "../lib/haddi/application"
require_relative "../lib/haddi/render"

class App < Haddi::Application
  extend Haddi::Render

  get "/" do
    render "./demo/views/index.html.erb", layout: "./demo/layouts/application.html.erb", locals: {
      hello: "hello from local variable",
      x: "x + &"
    }
  end

  get "/hello" do
    "Hello to you"
  end
end

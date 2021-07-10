# Haddi (Work in progress)

A super fast Ruby microframework for web development.

## Getting started

- clone the repo `https://github.com/abeidahmed/haddi.git`
- `cd` into the directory
- run `bin/setup` to install the dependencies
- run `rackup -Ilib demo/config.ru`
- open http://127.0.0.1:9292/

## Usage

After setting up the project, you can play with the `routes` by going into the
`./demo/app.rb` file.

```ruby
get "/" do
  render "index.html.erb", layout: "application.html.erb", locals: {
    hello: "Hi, there"
  }
end
```

The above code is run when you navigate to the `/` path into your browser.

The first argument to the `render` method is the name of the view file. The second
argument is the layout that you want to render the view file into. And the third,
is the local variables that you want to pass into the view file.

So a basic layout file would look like this:

```erb
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content ="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Application.html</title>
  </head>
  <body>
    <h1>Default application</h1>

    <%= yield %>
  </body>
</html>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`rake spec` to run the tests. You can also run `bin/console` for an interactive
prompt that will allow you to experiment.

## Issues

You may need to restart the server `rackup -Ilib demo/config.ru` to
see your changes every time you change a file.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Haddi project's codebases, issue trackers, chat
rooms and mailing lists is expected to follow the [code of conduct](https://github.com/abeidahmed/haddi/blob/main/CODE_OF_CONDUCT.md).

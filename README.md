# Supportator

Puts an actualization modal when old browsers are used.

## Installation

Add this line to your application's Gemfile:

	gem 'supportator', :git => "https://github.com/archdaily/supportator.git"

And then execute:

    $ bundle install

Then you have to generate the configuration files executing:

	$ rails generate supportator:install

This will create the locale (`supportator.en.yml`,`supportator.es.yml`) and also the template of the modal (`_browser_validator.html.haml`) in your application.

## Usage

You should include the Javascript of Supportator adding to `application.js` the following code:
	
	//= require supportator

Also you should include the CSS of Supportator adding to `application.css`the folowing code:

	*= require supportator

To display the modal when the browser is nos supported you have to add the following Javascript:

	$(document).ready(function () {
      if (!supported) {
        $("#nav-header").after("#{escape_javascript(render(:partial => 'browser_validator'))}");
      }
    });

The modal with the message will appear after `#nav-header`.

**NOTE**: You should have `_browser_validator.html.haml` in the same directory than the code that loads the modal.

## Configuration

To configurate the supported browsers you have to create an initializer `config/initializers/supportator.rb` and you can either pass a hash with the values:

	Supportator.configure({:chrome => 14, :safari => 5, :firefox => 3, :ie => 9, :opera => 12})
	
Or pass an yml file with the configuration:
	
	Supportator.configure_with("/config/supportator.yml")

## Default Supported Browsers

- Google Chrome 14+
- Safari 5+ 
- Firefox 3+
- Ie 9+
- Opera 12+
	
## Contributing

1. Fork it ( http://github.com/archdaily/supportator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

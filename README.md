# Supportator

Puts an actualization modal when old browsers are used.

## Installation

Add this line to your application's Gemfile:

	gem 'supportator', :git => "https://github.com/archdaily/supportator.git"

And then execute:

    $ bundle install

Then you have to generate the configuration files excecuting:

	$ rails generate supportator:install

This will create the locale (`supportator.en.yml`,`supportator.en.yml`) and also the template of the modal (`_browser_validator.html.haml`) in your application.

## Usage

You should include the Javascript in the application adding in `application.js` the following code:
	
	//= require supportator

Also you should include the CSS in the application adding in `application.css`the folowing code:

	*= require supportator

To display the modal when the browser is nos supported you have to add the following Javascript in your application:

	$(document).ready(function () {
      if (!supported) {
        $("#nav-header").after("#{escape_javascript(render(:partial => 'browser_validator'))}");
      }
    });

After `#nav-header` the modal with the message will appear.

**NOTE**: You should have `_browser_validator.html.haml` in the same directory than the code that loads the modal.

## Contributing

1. Fork it ( http://github.com/archdaily/supportator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

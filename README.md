[![Build Status](https://travis-ci.org/sul-dlss/robots_dot_text.svg?branch=master)](https://travis-ci.org/sul-dlss/robots_dot_text)

# RobotsDotText
Supply rails-environment specific robots.txt files.

**NOTE:** This will not work with applications mounted under a sub-directory.


## Installation

### Install the gem
    gem install robots_dot_text
    # or
    bundle install robots_dot_text

### Run the generator
There in an included generator that will move your existing robots.txt file to the robots.default.txt file that this gem will fallback to if an environment specific robots.txt file is not found.


    rails g robots_dot_text:move_existing_robots_file

If you don't run the generator the robots.txt file in your public directory will get picked up first.

## Environment specific robots.txt files
You can create a file for every rails environment using the naming convention robots.`rails environment`.txt in your public directory and they will be rendered when requesting /robots.txt under that particular environment.

    robots.production.txt
    robots.development.txt

## Further customization of robots.txt file names
If you would like to customize the robots.txt file name to something other than the rails environment you can do so by overriding the `RobotsDotTextController#robots_file_descriptor` method in your app.

    class RobotsDotTextController < ActionController::Base
      include RobotsDotText::Controller
      private
      def robots_file_descriptor
        request.env["SERVER_NAME"]
      end
    end

The above would load `robots.localhost.txt` when running under `localhost:3000` or `robots.example.txt` when running under `example.com`.
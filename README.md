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



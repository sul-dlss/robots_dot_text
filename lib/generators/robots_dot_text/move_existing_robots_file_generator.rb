module RobotsDotText
  class MoveExistingRobotsFileGenerator < Rails::Generators::Base
    source_root Rails.root
    def move_existing_robots_file
      copy_file "public/robots.txt", "public/robots.default.txt"
      remove_file "public/robots.txt"
    end
  end
end

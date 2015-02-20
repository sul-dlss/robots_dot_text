module RobotsDotText
  module Controller
    extend ActiveSupport::Concern

    def show
      begin
        render file: robots_file_path, layout: false, content_type: 'text/plain'
      rescue ActionView::MissingTemplate
        render file: default_robots_path, layout: false, content_type: 'text/plain'
      end
    end

    private

    def robots_file_path
      File.join([Rails.root, 'public', "robots.#{robots_file_descriptor}.txt"])
    end

    def default_robots_path
      File.join([Rails.root, 'public', 'robots.default.txt'])
    end

    def robots_file_descriptor
      Rails.env.to_s
    end

  end
end

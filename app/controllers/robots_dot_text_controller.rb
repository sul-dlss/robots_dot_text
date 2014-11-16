class RobotsDotTextController < ActionController::Base
  def show
    begin
      render "public/robots.#{Rails.env}.txt", layout: false, content_type: 'text/plain'
    rescue ActionView::MissingTemplate
      render "public/robots.default.txt", layout: false, content_type: 'text/plain'
    end
  end
end

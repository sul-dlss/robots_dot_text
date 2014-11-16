Rails.application.routes.draw do
  get "robots.txt" => "robots_dot_text#show"
end

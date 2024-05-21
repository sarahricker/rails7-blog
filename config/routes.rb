Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "blog_posts#index"

  # Single Blog post
  # relative: blog_post_path(1) or full url: blog_post_url(1) or object ( @blog_posts.each do |blog_post|)
  get "/blog_posts/:id", to: "blog_posts#show", as: :blog_post
end

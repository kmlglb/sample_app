class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

=begin  
  def hello
    render html: "Hello, world!"
  end
=end
end

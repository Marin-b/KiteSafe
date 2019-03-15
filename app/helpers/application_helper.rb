module ApplicationHelper
  def page_without_nav?
    ["/users/password/new", "/onboarding", "/level", "/users/sign_in"].include?(request.path)
    # binding.pry
  end
end

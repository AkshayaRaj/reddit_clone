module LinksHelper
  def user_email(user)
    if user.nil?
      "anonymous"
    else
      user.email
    end
  end
end

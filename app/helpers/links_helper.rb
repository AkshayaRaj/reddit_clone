module LinksHelper
  def user_email(user)
    if user.nil?
      "anonymous"
    else
      user.email
    end
  end

  def gravatar_for(user,options = {size: 80})
    gravatar_id=Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url="https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url,class: "gravatar",size: size)
  end
  
end

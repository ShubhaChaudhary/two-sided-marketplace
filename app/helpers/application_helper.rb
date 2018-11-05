module ApplicationHelper
    def gravatar_url(user, size)
        if user.image
          "http://graph.facebook.com/#{user.uid}/picture?type=small"

        else
            gravatar = Digest::MD5::hexdigest(user.email).downcase
            "http://gravatar.com/avatar/#{gravatar}.jpg?d=identical&s=#{size}"
        end
    end
end

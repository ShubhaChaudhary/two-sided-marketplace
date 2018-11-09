class Trainer < ApplicationRecord
     has_attached_file :avatar, styles: { medium: "150x>", thumb: "100x100>" }, default_url: "default.png"
     validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
     #belongs_to :lesson
     belongs_to :category

 validates  :first_name, 
            :last_name,
            :phone, 
            :bio, 
            :experience,
            :avatar_file_name, presence: true, length: {maximum: 50}
validates_attachment_presence :avatar
      

    attr_accessor :terms_of_service
    validates :terms_of_service, acceptance: true

end



class Trainer < ApplicationRecord
     has_attached_file :avatar, styles: { medium: "150x>", thumb: "100x100>" }, default_url: "default.png"
     validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
     belongs_to :lesson
     belongs_to :category

end

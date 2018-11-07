class Lesson < ApplicationRecord
     has_attached_file :image, styles: { medium: "150x>", thumb: "100x100>" }, default_url: "default.png"
     validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
     has_many :trainers
end

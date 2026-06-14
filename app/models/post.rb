class Post < ApplicationRecord
  belongs_to :creator,
             class_name: "User"

  has_many :editor_posts, dependent: :destroy
  has_many :editors, through: :editor_posts
end
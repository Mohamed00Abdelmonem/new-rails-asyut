class Editor < ApplicationRecord
  has_many :editor_posts, dependent: :destroy
  has_many :posts, through: :editor_posts
end
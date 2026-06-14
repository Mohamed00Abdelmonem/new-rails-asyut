class User < ApplicationRecord
  has_many :created_posts,
           class_name: "Post",
           foreign_key: "creator_id",
           dependent: :destroy

  validates :name, presence: true
  validates :dob, presence: true
  validates :email, presence: true,
                    uniqueness: true,
                    format: {
                      with: URI::MailTo::EMAIL_REGEXP,
                      message: "is invalid"
                    }
  validates :address, presence: true
  validates :phone_number, presence: true
end
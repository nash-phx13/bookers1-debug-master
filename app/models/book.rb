class Book < ApplicationRecord
	has_many :post_comments, dependent: :destroy
	belongs_to :user
	validates :title, presence: true
	validates :body, presence: true, length: {maximum: 200}
end

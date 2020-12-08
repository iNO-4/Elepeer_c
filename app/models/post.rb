class Post < ApplicationRecord

	belongs_to :customer
	has_many :favorites, dependent: :destroy
	has_many :favorited_customers, through: :favorites, source: :customer
	has_many :bookmarks, dependent: :destroy
	has_many :post_comments, dependent: :destroy
	attachment :product_image

	validates :rate, numericality: {
		less_than_or_equal_to: 5,
		greater_than_or_equal_to: 0
	}

	def favorited_by?(customer)
		favorites.where(customer_id: customer.id).exists?
	end

	def bookmark_by?(customer)
		bookmarks.where(customer_id: customer.id).exists?
	end

end

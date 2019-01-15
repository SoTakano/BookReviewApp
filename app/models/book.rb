class Book < ApplicationRecord
	belongs_to :user
	belongs_to :category
	has_many :reviews

	validates :title, :author, :description, :category_id, presence: true

	has_attached_file :book_img, styles: { book_index: "250x350>", book_show: "325x475>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :book_img, content_type: /\Aimage\/.*\z/

	def self.search(search)
		if search
			where(['title LIKE ?', "%#{search}%"])
		else
			all
		end
	end
end

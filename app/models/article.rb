class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
	belongs_to :dreamer
	validates :title, presence: true, length: { minimum: 5 }
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end

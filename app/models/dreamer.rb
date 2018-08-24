class Dreamer < ApplicationRecord
	has_many :articles, dependent: :destroy
end

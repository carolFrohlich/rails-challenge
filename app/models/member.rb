class Member < ApplicationRecord
	has_many :friendships

	validates :name, presence: true,
                    length: { minimum: 5 }

     validates :website, presence: true,
                    length: { minimum: 5 }
end

class User < ActiveRecord::Base
	has_many :decks, dependent: :destroy
	has_many :games, dependence: :destroy
end
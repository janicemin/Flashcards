class Card < ActiveRecord::Base
	# belongs_to :deck
	# validates :deck, presence: true

	def self.random 
        @cards = Card.all
        @card_random = @cards.shuffle.first
        return @card_random
  end

  def self.eql?
  	@card = Card.find(params[:id])
  	if @card.answer.downcase == params [:answer].downcase
  		@answer = "Correct"
  	else
  		@answer = "Nope. Try again."
  	end
  end

end
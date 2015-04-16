class CardsController < ApplicationController

	def index
		@cards = Card.all
		@card_shuffle = Card.random
		# @answer = Card.eql?
	end

	def show
		@card = Card.find(params[:id])
	end

	def new 
		@card = Card.new
	end

	def create
		@card = Card.new( card_params )
		if @card.save
			redirect_to @card
		else
			render :new
		end
	end

	def edit
    @card = Card.find(params[:id])
  end

  def answer
  	@answer
  end

  def update
    @card = Card.find(params[:id])
    @card.update(card_params)
    redirect_to @card
  end

  def destroy
  	find_card
     @card.destroy
     redirect_to cards_path
  end

private

  def card_params
    params.require(:card).permit(:question, :answer)
  end

  def find_card
    @card = Card.find(params[:id])
  end

end

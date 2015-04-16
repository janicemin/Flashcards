class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
    	t.string :name
    	t.string :description
    	t.belongs_to :user
    end
  end
end

class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
    	t.string :user
    	t.string :deck
    	t.integer :total_correct
    	t.integer :missed, array: true, default: []
    	t.integer :paused_at, default: nil
    end
  end
end

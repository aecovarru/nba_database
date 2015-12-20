class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|

    	t.references :season
    	t.integer :quarter
    	t.string :time
      t.float :range
      t.integer :total_bet
    	t.integer :total_win_bet
      t.integer :total_lose_bet
      t.float :total_win_percent
      t.integer :spread_bet
      t.integer :spread_win_bet
      t.integer :spread_lose_bet
      t.float :spread_win_percent

      t.timestamps
    end
  end
end

class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|

      t.references :season
      t.references :game_date
    	t.references :away_team
    	t.references :home_team
      t.integer  "away_rest"
      t.integer  "home_rest"
      t.float "away_full_game_ps"
      t.float "away_full_game_ps"
      t.float "away_first_half_ps"
      t.float "home_first_half_ps"
      t.float "away_first_quarter_ps"
      t.float "home_first_quarter_ps"
      t.float "full_game_total_cl"
      t.float "full_game_spread_cl"
      t.float "first_half_total_cl"
      t.float "first_half_spread_cl"
      t.float "first_quarter_total_cl"
      t.float "first_quarter_spread_cl"

      t.timestamps
    end
  end
end

class CreateTeamData < ActiveRecord::Migration
  def change
    create_table :team_data do |t|

    	t.references :game_date, index: true
    	t.references :past_team, index: true

    	t.integer "rest"

      t.float "full_game_base_poss"
      t.float "full_game_season_poss"
      t.float "full_game_base_ortg"
      t.float "full_game_season_ortg"
      t.float "full_game_base_drtg"
      t.float "full_game_season_drtg"

      t.float "first_half_base_poss"
      t.float "first_half_season_poss"
      t.float "first_half_base_ortg"
      t.float "first_half_season_ortg"
      t.float "first_half_base_drtg"
      t.float "first_half_season_drtg"

      t.float "first_quarter_base_poss"
      t.float "first_quarter_season_poss"
      t.float "first_quarter_base_ortg"
      t.float "first_quarter_season_ortg"
      t.float "first_quarter_base_drtg"
      t.float "first_quarter_season_drtg"

      t.timestamps
    end

  end
end

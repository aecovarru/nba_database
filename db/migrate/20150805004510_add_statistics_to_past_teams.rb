class AddStatisticsToPastTeams < ActiveRecord::Migration
  def change
  	add_column :past_teams, :total_pts, :float
  	add_column :past_teams, :total_opp_pts, :float
  	add_column :past_teams, :total_size, :integer
  	add_column :past_teams, :sun_pts, :float
  	add_column :past_teams, :sun_opp_pts, :float
  	add_column :past_teams, :sun_size, :integer
  	add_column :past_teams, :mon_pts, :float
  	add_column :past_teams, :mon_opp_pts, :float
  	add_column :past_teams, :mon_size, :integer
  	add_column :past_teams, :tue_pts, :float
  	add_column :past_teams, :tue_opp_pts, :float
  	add_column :past_teams, :tue_size, :integer
  	add_column :past_teams, :wed_pts, :float
  	add_column :past_teams, :wed_opp_pts, :float
  	add_column :past_teams, :wed_size, :integer
  	add_column :past_teams, :thu_pts, :float
  	add_column :past_teams, :thu_opp_pts, :float
  	add_column :past_teams, :thu_size, :integer
  	add_column :past_teams, :fri_pts, :float
  	add_column :past_teams, :fri_opp_pts, :float
  	add_column :past_teams, :fri_size, :integer
  	add_column :past_teams, :sat_pts, :float
  	add_column :past_teams, :sat_opp_pts, :float
  	add_column :past_teams, :sat_size, :integer
  	add_column :past_teams, :zero_pts, :float
  	add_column :past_teams, :zero_opp_pts, :float
  	add_column :past_teams, :zero_size, :integer
  	add_column :past_teams, :one_pts, :float
  	add_column :past_teams, :one_opp_pts, :float
  	add_column :past_teams, :one_size, :integer
  	add_column :past_teams, :two_pts, :float
  	add_column :past_teams, :two_opp_pts, :float
  	add_column :past_teams, :two_size, :integer
  	add_column :past_teams, :three_pts, :float
  	add_column :past_teams, :three_opp_pts, :float
  	add_column :past_teams, :three_size, :integer
  end
end
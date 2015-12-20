# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150923184857) do

  create_table "actions", force: true do |t|
    t.integer  "game_id"
    t.integer  "season_id"
    t.integer  "quarter"
    t.float    "time",       limit: 24
    t.string   "action"
    t.string   "player1"
    t.string   "player2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bets", force: true do |t|
    t.integer  "season_id"
    t.integer  "quarter"
    t.string   "time"
    t.float    "range",              limit: 24
    t.integer  "total_bet"
    t.integer  "total_win_bet"
    t.integer  "total_lose_bet"
    t.float    "total_win_percent",  limit: 24
    t.integer  "spread_bet"
    t.integer  "spread_win_bet"
    t.integer  "spread_lose_bet"
    t.float    "spread_win_percent", limit: 24
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "game_dates", force: true do |t|
    t.integer  "season_id"
    t.string   "year"
    t.string   "month"
    t.string   "day"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: true do |t|
    t.integer  "season_id"
    t.integer  "game_date_id"
    t.integer  "away_team_id"
    t.integer  "home_team_id"
    t.integer  "away_rest"
    t.integer  "home_rest"
    t.float    "away_full_game_ps",       limit: 24
    t.float    "away_first_half_ps",      limit: 24
    t.float    "home_first_half_ps",      limit: 24
    t.float    "away_first_quarter_ps",   limit: 24
    t.float    "home_first_quarter_ps",   limit: 24
    t.float    "full_game_total_cl",      limit: 24
    t.float    "full_game_spread_cl",     limit: 24
    t.float    "first_half_total_cl",     limit: 24
    t.float    "first_half_spread_cl",    limit: 24
    t.float    "first_quarter_total_cl",  limit: 24
    t.float    "first_quarter_spread_cl", limit: 24
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lineups", force: true do |t|
    t.integer  "season_id"
    t.integer  "game_id"
    t.integer  "opponent_id"
    t.boolean  "home"
    t.integer  "quarter"
    t.float    "mp",          limit: 24, default: 0.0
    t.float    "fgm",         limit: 24, default: 0.0
    t.float    "fga",         limit: 24, default: 0.0
    t.float    "thpm",        limit: 24, default: 0.0
    t.float    "thpa",        limit: 24, default: 0.0
    t.float    "ftm",         limit: 24, default: 0.0
    t.float    "fta",         limit: 24, default: 0.0
    t.float    "orb",         limit: 24, default: 0.0
    t.float    "drb",         limit: 24, default: 0.0
    t.float    "ast",         limit: 24, default: 0.0
    t.float    "stl",         limit: 24, default: 0.0
    t.float    "blk",         limit: 24, default: 0.0
    t.float    "tov",         limit: 24, default: 0.0
    t.float    "pf",          limit: 24, default: 0.0
    t.float    "pts",         limit: 24, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "past_players", force: true do |t|
    t.integer  "season_id"
    t.integer  "player_id"
    t.integer  "past_team_id"
    t.string   "alias"
    t.float    "mp",           limit: 24, default: 0.0
    t.float    "fgm",          limit: 24, default: 0.0
    t.float    "fga",          limit: 24, default: 0.0
    t.float    "thpm",         limit: 24, default: 0.0
    t.float    "thpa",         limit: 24, default: 0.0
    t.float    "ftm",          limit: 24, default: 0.0
    t.float    "fta",          limit: 24, default: 0.0
    t.float    "orb",          limit: 24, default: 0.0
    t.float    "drb",          limit: 24, default: 0.0
    t.float    "ast",          limit: 24, default: 0.0
    t.float    "stl",          limit: 24, default: 0.0
    t.float    "blk",          limit: 24, default: 0.0
    t.float    "tov",          limit: 24, default: 0.0
    t.float    "pf",           limit: 24, default: 0.0
    t.float    "pts",          limit: 24, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "past_teams", force: true do |t|
    t.integer  "season_id"
    t.integer  "team_id"
    t.string   "name"
    t.string   "abbr"
    t.string   "city"
    t.float    "mp",         limit: 24, default: 0.0
    t.float    "fgm",        limit: 24, default: 0.0
    t.float    "fga",        limit: 24, default: 0.0
    t.float    "thpm",       limit: 24, default: 0.0
    t.float    "thpa",       limit: 24, default: 0.0
    t.float    "ftm",        limit: 24, default: 0.0
    t.float    "fta",        limit: 24, default: 0.0
    t.float    "orb",        limit: 24, default: 0.0
    t.float    "drb",        limit: 24, default: 0.0
    t.float    "ast",        limit: 24, default: 0.0
    t.float    "stl",        limit: 24, default: 0.0
    t.float    "blk",        limit: 24, default: 0.0
    t.float    "tov",        limit: 24, default: 0.0
    t.float    "pf",         limit: 24, default: 0.0
    t.float    "pts",        limit: 24, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.integer  "team_id"
    t.boolean  "starter",    default: false
    t.string   "name"
    t.string   "alias"
    t.string   "height"
    t.string   "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "players", ["alias"], name: "index_players_on_alias", using: :btree
  add_index "players", ["name"], name: "index_players_on_name", using: :btree

  create_table "seasons", force: true do |t|
    t.string   "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "starters", force: true do |t|
    t.integer  "season_id"
    t.integer  "game_id"
    t.integer  "team_id"
    t.integer  "opponent_id"
    t.integer  "past_player_id"
    t.string   "alias"
    t.boolean  "starter"
    t.boolean  "home"
    t.integer  "quarter"
    t.float    "mp",             limit: 24, default: 0.0
    t.float    "fgm",            limit: 24, default: 0.0
    t.float    "fga",            limit: 24, default: 0.0
    t.float    "thpm",           limit: 24, default: 0.0
    t.float    "thpa",           limit: 24, default: 0.0
    t.float    "ftm",            limit: 24, default: 0.0
    t.float    "fta",            limit: 24, default: 0.0
    t.float    "orb",            limit: 24, default: 0.0
    t.float    "drb",            limit: 24, default: 0.0
    t.float    "ast",            limit: 24, default: 0.0
    t.float    "stl",            limit: 24, default: 0.0
    t.float    "blk",            limit: 24, default: 0.0
    t.float    "tov",            limit: 24, default: 0.0
    t.float    "pf",             limit: 24, default: 0.0
    t.float    "pts",            limit: 24, default: 0.0
    t.float    "poss_percent",   limit: 24, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "starters", ["alias"], name: "index_starters_on_alias", using: :btree

  create_table "team_data", force: true do |t|
    t.integer  "game_date_id"
    t.integer  "past_team_id"
    t.integer  "rest"
    t.float    "full_game_base_poss",       limit: 24
    t.float    "full_game_season_poss",     limit: 24
    t.float    "full_game_base_ortg",       limit: 24
    t.float    "full_game_season_ortg",     limit: 24
    t.float    "full_game_base_drtg",       limit: 24
    t.float    "full_game_season_drtg",     limit: 24
    t.float    "first_half_base_poss",      limit: 24
    t.float    "first_half_season_poss",    limit: 24
    t.float    "first_half_base_ortg",      limit: 24
    t.float    "first_half_season_ortg",    limit: 24
    t.float    "first_half_base_drtg",      limit: 24
    t.float    "first_half_season_drtg",    limit: 24
    t.float    "first_quarter_base_poss",   limit: 24
    t.float    "first_quarter_season_poss", limit: 24
    t.float    "first_quarter_base_ortg",   limit: 24
    t.float    "first_quarter_season_ortg", limit: 24
    t.float    "first_quarter_base_drtg",   limit: 24
    t.float    "first_quarter_season_drtg", limit: 24
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "team_data", ["game_date_id"], name: "index_team_data_on_game_date_id", using: :btree
  add_index "team_data", ["past_team_id"], name: "index_team_data_on_past_team_id", using: :btree

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "abbr"
    t.string   "city"
    t.float    "latitude",   limit: 24
    t.float    "longitude",  limit: 24
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teams", ["abbr"], name: "index_teams_on_abbr", using: :btree
  add_index "teams", ["city"], name: "index_teams_on_city", using: :btree
  add_index "teams", ["name"], name: "index_teams_on_name", using: :btree

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

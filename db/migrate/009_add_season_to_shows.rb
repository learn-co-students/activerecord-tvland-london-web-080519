class AddSeasonToShows < ActiveRecord::Migration[5.1]
    add_column :shows, :season, :string
end
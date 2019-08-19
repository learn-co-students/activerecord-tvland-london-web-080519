class AddDayToShows < ActiveRecord::Migration[5.1]
    add_column :shows, :day, :string
end
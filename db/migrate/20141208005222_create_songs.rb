class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |table|
      table.string :title, null: false
      table.string :album, null: false
      table.string :artist, null: false
      table.integer :year, null: false

      # timestamps is a helper method that will create created_at and
      # updated_at columns for you that will automatically update
      table.timestamps
    end
  end
end

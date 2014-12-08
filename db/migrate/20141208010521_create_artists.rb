class CreateArtists < ActiveRecord::Migration
  def change
    # Create the artists table
    create_table :artists do |table|
      table.string :name, null: false

      table.timestamps
    end

    # Add the new foreign key to the songs table
    # add_column(table, type, name)
    add_column :songs, :artist_id, :integer
  end
end

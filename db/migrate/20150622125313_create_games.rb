class CreateGames < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'

    create_table :games, :id => :uuid do |t|
      t.string :name
      t.json :state, :null => false, :default => {}

      t.timestamps
    end
  end
end

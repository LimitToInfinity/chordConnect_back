class CreateArtistAgents < ActiveRecord::Migration[5.2]
  def change
    create_table :artist_agents do |t|
      t.references :artist, foreign_key: true
      t.references :agent, foreign_key: true

      t.timestamps
    end
  end
end

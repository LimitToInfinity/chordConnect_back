class CreateVenueAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :venue_addresses do |t|
      t.references :venue, foreign_key: true
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end

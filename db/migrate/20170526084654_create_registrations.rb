class CreateRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :registrations do |t|
      t.references :user
      t.references :event
      t.decimal :price
      t.string :status
      t.integer :guests_count

      t.timestamps
    end
  end
end

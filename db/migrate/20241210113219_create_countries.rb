class CreateCountries < ActiveRecord::Migration[7.1]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :capital_city
      t.integer :size
      t.string :available_activities
      t.string :flag
      t.string :continent
      t.integer :price_per_day
      t.date :availability_start_date
      t.date :availability_end_date
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end

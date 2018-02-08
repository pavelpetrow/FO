class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.integer     :number, null: false
      t.string      :country, null: false
      t.string      :state
      t.string      :region
      t.string      :city, null: false
      t.string      :street, null: false
      t.integer     :postal_code
      t.string      :description
      t.timestamps null: false
    end
  end
end

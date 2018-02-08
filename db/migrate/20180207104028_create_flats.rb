class CreateFlats < ActiveRecord::Migration
  def change
    create_table :flats do |t|
      t.integer     :number, null: false
      t.integer     :number_of_rooms, null: false
      t.integer     :area, null: false
      t.string      :status, null: false
      t.money       :price_per_month, null: false
      t.string      :description
      t.references  :house, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end

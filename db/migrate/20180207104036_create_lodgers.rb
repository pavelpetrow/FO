class CreateLodgers < ActiveRecord::Migration
  def change
    create_table :lodgers do |t|
      t.string      :full_name, null: false
      t.integer     :years_old
      t.date        :date_of_arrival, null: false
      t.references  :flat, index: true, foreign_key: true
      t.string      :description
      t.timestamps null: false
    end
  end
end

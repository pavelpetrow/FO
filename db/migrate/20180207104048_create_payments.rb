class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.money       :amount, null: false
      t.references  :lodger, index: true, foreign_key: true
      t.string      :description
      t.timestamps null: false
    end
  end
end

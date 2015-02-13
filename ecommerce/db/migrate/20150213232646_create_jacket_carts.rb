class CreateJacketCarts < ActiveRecord::Migration
  def change
    create_table :jacket_carts do |t|

      t.timestamps null: false
    end
  end
end

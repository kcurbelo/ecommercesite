class CreateJackets < ActiveRecord::Migration
  def change
    create_table :jackets do |t|
      #todo Would having qoutes make this act weird?
      t.string   "name"
      t.float    "price"
      t.integer  "size"
      t.timestamps null: false
    end
  end
end

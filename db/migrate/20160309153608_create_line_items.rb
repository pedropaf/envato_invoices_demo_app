class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.string :description
      t.float :price
      t.belongs_to :invoice, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

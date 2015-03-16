class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :title
      t.text :description
      t.references :board, index: true
      t.string :url
      t.string :image
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :pins, :boards
    add_foreign_key :pins, :users
  end
end

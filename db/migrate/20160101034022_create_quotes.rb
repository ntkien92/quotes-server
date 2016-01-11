class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :image
      t.integer :type_quote

      t.timestamps null: false
    end
  end
end

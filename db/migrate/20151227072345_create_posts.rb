class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :link_url
      t.integer :total_like

      t.timestamps null: false
    end
  end
end

class CreateRabbits < ActiveRecord::Migration
  def change
    create_table :rabbits do |t|
      t.string :title
      t.text :content
      t.string :link_url
      t.integer :total_like

      t.timestamps null: false
    end
  end
end

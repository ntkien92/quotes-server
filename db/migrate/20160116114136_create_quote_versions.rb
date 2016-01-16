class CreateQuoteVersions < ActiveRecord::Migration
  def change
    create_table :quote_versions do |t|
      t.integer :quote_version

      t.timestamps null: false
    end
  end
end

class CreateCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :collections do |t|
      t.string :collection_name
      t.belongs_to :user, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end

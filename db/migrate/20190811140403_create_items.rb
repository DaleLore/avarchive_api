class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title
      t.belongs_to :collection, foreign_key: true
      t.string :media_type

      t.timestamps
    end
  end
end

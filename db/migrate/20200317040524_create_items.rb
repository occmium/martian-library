class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :image_url, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

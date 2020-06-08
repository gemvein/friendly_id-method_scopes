class CreateBooks < ActiveRecord::Migration[4.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :slug, unique: true

      t.timestamps null: false
    end
  end
end

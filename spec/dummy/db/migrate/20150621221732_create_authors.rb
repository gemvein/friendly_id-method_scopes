class CreateAuthors < ActiveRecord::Migration[4.2]
  def change
    create_table :authors do |t|
      t.string :full_name
      t.string :slug, unique: true

      t.timestamps null: false
    end
  end
end

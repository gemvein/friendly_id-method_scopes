class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :full_name
      t.string :slug, unique: true

      t.timestamps null: false
    end
  end
end

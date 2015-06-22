class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :slug, unique: true

      t.timestamps null: false
    end
  end
end

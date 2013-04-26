class CreateAportes < ActiveRecord::Migration
  def change
    create_table :aportes do |t|
      t.string :name
      t.string :title
      t.text :content
      t.datetime :created_at
      t.datetime :updated_at
      t.date :fecha
      t.string :file
      t.string :file2
      t.string :file3
      t.string :category

      t.timestamps
    end
  end
end

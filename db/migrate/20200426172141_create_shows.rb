class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.string :title
      t.string :director
      t.integer :year
      t.boolean :explicit

      t.timestamps
    end
  end
end

class CreateTunes < ActiveRecord::Migration[6.0]
  def change
    create_table :tunes do |t|
      t.string :title
      t.integer :date
      t.references :composer, null: false, foreign_key: true

      t.timestamps
    end
  end
end

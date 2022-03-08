class CreateWords < ActiveRecord::Migration[6.1]
  def change
    create_table :words do |t|
      t.string :english_def
      t.string :spanish_def
      t.text :extra_info
      t.references :wordbank, null: false, foreign_key: true

      t.timestamps
    end
  end
end

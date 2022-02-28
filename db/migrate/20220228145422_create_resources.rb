class CreateResources < ActiveRecord::Migration[6.1]
  def change
    create_table :resources do |t|
      t.string :source
      t.string :url
      t.string :author
      t.string :title
      t.integer :length
      t.date :published_on
      t.string :type

      t.timestamps
    end
  end
end

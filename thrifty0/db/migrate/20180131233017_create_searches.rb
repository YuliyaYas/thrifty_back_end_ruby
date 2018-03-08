class CreateSearches < ActiveRecord::Migration[5.1]
  def change
    create_table :searches do |t|
      t.string :title
      t.string :info
      t.string :link
      t.belongs_to :image, foreign_key: true

      t.timestamps
    end
  end
end

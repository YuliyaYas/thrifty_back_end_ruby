class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :name
      t.string :otr
      t.string :note
      t.string :price
      t.string :store
      t.text :blob
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end

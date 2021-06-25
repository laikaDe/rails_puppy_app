class CreateToys < ActiveRecord::Migration[6.1]
  def change
    create_table :toys do |t|
      t.string :type
      t.belongs_to :puppy, null: false, foreign_key: true

      t.timestamps
    end
  end
end

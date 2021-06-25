class CreatePuppies < ActiveRecord::Migration[6.1]
  def change
    create_table :puppies do |t|
      t.string :name
      t.integer :age
      t.string :breed
      t.string :sex
      t.string :size
      t.text :personality
      t.belongs_to :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end

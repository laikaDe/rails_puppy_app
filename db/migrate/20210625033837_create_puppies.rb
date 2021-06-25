class CreatePuppies < ActiveRecord::Migration[6.1]
  def change
    create_table :puppies do |t|
      t.string :name
      t.integer :age
      t.string :breed
      t.string :sex
      t.string :size
      t.text :personality
      t.integer :owner_id

      t.timestamps
    end
  end
end

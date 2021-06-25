class CreateOwners < ActiveRecord::Migration[6.1]
  def change
    create_table :owners do |t|
      t.string :username
      t.string :password_digest
      t.string :name
      t.integer :age
      t.string :city
      t.text :bio

      t.timestamps
    end
  end
end

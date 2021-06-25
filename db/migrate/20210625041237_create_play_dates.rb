class CreatePlayDates < ActiveRecord::Migration[6.1]
  def change
    create_table :play_dates do |t|
      t.string :location
      t.date :date
      t.time :time
      t.string :notes
      t.belongs_to :owner, null: false, foreign_key: true
      t.belongs_to :puppy, null: false, foreign_key: true

      t.timestamps
    end
  end
end

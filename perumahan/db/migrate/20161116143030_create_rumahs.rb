class CreateRumahs < ActiveRecord::Migration
  def change
    create_table :rumahs do |t|
      t.string :nombor
      t.boolean :sah

      t.timestamps null: false
    end
  end
end

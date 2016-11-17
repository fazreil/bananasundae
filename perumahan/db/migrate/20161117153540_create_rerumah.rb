class CreateRerumah < ActiveRecord::Migration
  def change
    create_table :rerumah do |t|
      t.string :nombor
      t.boolean :sah
      t.string :nama
      t.string :telefon
      t.string :nota

      t.timestamps null: false
    end
  end
end

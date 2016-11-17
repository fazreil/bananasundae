class CreateBayaran < ActiveRecord::Migration
  def change
    create_table :bayaran do |t|
      t.date :tarikh
      t.decimal :jumlah
      t.string :nota

      t.timestamps null: false
    end
  end
end

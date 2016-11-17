class CreateTetaman < ActiveRecord::Migration
  def change
    create_table :tetaman do |t|
      t.string :nama
      t.string :nota

      t.timestamps null: false
    end
  end
end

class AddTamanToRumah < ActiveRecord::Migration
  def change
    add_column :rerumah, :taman_id, :integer
  end
end

class AddRumahToBayaran < ActiveRecord::Migration
  def change
    add_column :bayaran, :rumah_id, :integer
  end
end

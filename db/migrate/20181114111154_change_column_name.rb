class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    change_column :restaurants, :phone, :phone_number
  end
end

class ChangeDefaultValuesToTest < ActiveRecord::Migration[6.1]
  def change
    change_column :tests, :level, :numeric, default: 1
  end
end

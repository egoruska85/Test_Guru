class ChangeDefaultValuesTables < ActiveRecord::Migration[6.1]
  def change
    change_column :tests, :level, :numeric, default: 1
    change_column :answers, :correct, :boolean, default: false
  end
end

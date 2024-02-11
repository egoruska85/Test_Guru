class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.string :title
      t.numeric :level, :numeric, default: 1
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end

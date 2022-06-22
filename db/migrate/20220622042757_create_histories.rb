class CreateHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :histories do |t|
      t.integer :small, default: 0
      t.integer :good, default: 0
      t.integer :excellent, default: 0
      t.integer :total, default: 0
      t.timestamps null: false
    end
  end
end

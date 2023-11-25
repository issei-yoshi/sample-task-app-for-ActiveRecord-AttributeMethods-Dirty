class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.integer :level, null: false, default: 1

      t.timestamps
    end
  end
end

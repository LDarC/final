class CreateFinals < ActiveRecord::Migration[5.1]
  def change
    create_table :finals do |t|
      t.string :name
      t.text :number
      t.integer :results

      t.timestamps
    end
  end
end

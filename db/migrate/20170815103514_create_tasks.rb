class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :details
      t.boolean :complete, default: false

      t.timestamps
    end
  end
end

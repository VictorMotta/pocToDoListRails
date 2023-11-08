class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.text :task
      t.boolean :finished, default: false

      t.timestamps
    end
  end
end

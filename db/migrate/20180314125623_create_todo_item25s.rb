class CreateTodoItem25s < ActiveRecord::Migration[5.1]
  def change
    create_table :todo_item25s do |t|
      t.string :description

      t.timestamps
    end
  end
end

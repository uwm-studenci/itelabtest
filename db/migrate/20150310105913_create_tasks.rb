class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :active
      t.string :status

      t.timestamps null: false
    end
    create_table :tasks_users, id: false do |t|
    	t.belongs_to :user, index: true
    	t.belongs_to :task, index: true
    end
  end
end

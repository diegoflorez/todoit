class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :due
      t.datetime :completed_at
      t.integer :priority
      t.belongs_to :user, index:true

      t.timestamps
    end

    create_table :contexts_tasks, id: false do |t|
      t.belongs_to :task, index: true
      t.belongs_to :context, index: true
    end

    create_table :projects_tasks, id: false do |t|
      t.belongs_to :task, index: true
      t.belongs_to :projects, index: true
    end
  end
end

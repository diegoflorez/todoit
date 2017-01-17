class CreatePomodoros < ActiveRecord::Migration[5.0]
  def change
    create_table :pomodoros do |t|
      t.integer :work_time
      t.integer :rest_time
      t.belongs_to :user, index:true

      t.timestamps
    end

    # indexes
    add_foreign_key :users
  end
end

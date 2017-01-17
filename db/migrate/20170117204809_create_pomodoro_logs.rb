class CreatePomodoroLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :pomodoro_logs do |t|
      t.datetime :start_time
      t.belongs_to :task, index:true
      t.belongs_to :pomodoro, index: true

      t.timestamps
    end
  end
end

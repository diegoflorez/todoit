class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end

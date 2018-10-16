class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :milestone
      t.datetime :deadline
      t.references :dossier, foreign_key: true

      t.timestamps
    end
  end
end

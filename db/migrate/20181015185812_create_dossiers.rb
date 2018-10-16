class CreateDossiers < ActiveRecord::Migration[5.2]
  def change
    create_table :dossiers do |t|
      t.string :name
      t.datetime :open
      t.datetime :close
      t.string :nature
      t.integer :price
      t.string :status
      t.integer :progress
      t.references :client, foreign_key: true


      t.timestamps
    end
  end
end

class CreateUpdates < ActiveRecord::Migration[6.1]
  def change
    create_table :updates do |t|
      t.references :incident, null: false, foreign_key: true
      t.string :message
      t.string :status

      t.timestamps
    end
  end
end

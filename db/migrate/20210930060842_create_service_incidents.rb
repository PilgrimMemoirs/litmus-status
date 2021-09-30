class CreateServiceIncidents < ActiveRecord::Migration[6.1]
  def change
    create_table :service_incidents do |t|
      t.references :incident, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end

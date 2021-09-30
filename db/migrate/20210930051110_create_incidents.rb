class CreateIncidents < ActiveRecord::Migration[6.1]
  def change
    create_table :incidents do |t|
      t.string :title
      t.text :description
      t.string :impact
      t.datetime :happended_at

      t.timestamps
    end
  end
end

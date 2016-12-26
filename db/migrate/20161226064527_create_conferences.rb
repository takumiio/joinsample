class CreateConferences < ActiveRecord::Migration[5.0]
  def change
    create_table :conferences do |t|
      t.boolean :validity
      t.string :name

      t.timestamps
    end
  end
end

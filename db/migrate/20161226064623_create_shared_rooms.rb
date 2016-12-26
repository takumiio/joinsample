class CreateSharedRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :shared_rooms do |t|
      t.references :conference, foreign_key: true
      t.string :user_id
      t.string :name

      t.timestamps
    end
  end
end

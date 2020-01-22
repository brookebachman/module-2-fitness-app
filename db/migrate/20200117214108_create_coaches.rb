class CreateCoaches < ActiveRecord::Migration[6.0]
  def change
    create_table :coaches do |t|
      t.string :name
      t.string :bio
      t.string :img
      t.timestamps
    end
  end
end

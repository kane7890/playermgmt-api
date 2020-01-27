class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :firstname
      t.string :lastname
      t.string :position
      t.string :salary
      t.string :coach_id

      t.timestamps
    end
  end
end

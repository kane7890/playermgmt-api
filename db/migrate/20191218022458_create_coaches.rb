class CreateCoaches < ActiveRecord::Migration[6.0]
  def change
    create_table :coaches do |t|
      t.string :firstname
      t.string :lastname
      t.string :teamname

      t.timestamps
    end
  end
end

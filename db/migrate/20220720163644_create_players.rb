class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :email
      t.string :contact

      t.timestamps
    end
  end
end

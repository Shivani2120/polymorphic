class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.text :content
      t.integer :notable_id
      t.string :notable_type

      t.timestamps
    end
  end
end

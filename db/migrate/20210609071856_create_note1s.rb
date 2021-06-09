class CreateNote1s < ActiveRecord::Migration[6.1]
  def change
    create_table :note1s do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end

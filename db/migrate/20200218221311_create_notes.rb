class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :date
      t.string :author
      t.text :notes
      t.string :delivery_date

      t.timestamps
    end
  end
end

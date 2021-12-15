class CreateConcerts < ActiveRecord::Migration[6.1]
  def change
    create_table :concerts do |t|
      t.datetime :datetime
      t.integer :duration
      t.integer :assistants

      t.timestamps
    end
  end
end

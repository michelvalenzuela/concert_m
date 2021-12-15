class AddCrewToBands < ActiveRecord::Migration[6.1]
  def change
    add_column :bands, :crew, :integer
  end
end

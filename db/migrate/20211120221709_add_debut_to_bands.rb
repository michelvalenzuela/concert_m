class AddDebutToBands < ActiveRecord::Migration[6.1]
  def change
    add_column :bands, :debut, :date
  end
end

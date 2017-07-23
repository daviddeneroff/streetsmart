class ChangeNotesInPremises < ActiveRecord::Migration[5.1]
  def change
    change_column :premises, :notes, :text
  end
end

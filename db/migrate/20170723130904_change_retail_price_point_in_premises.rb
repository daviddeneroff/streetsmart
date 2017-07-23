class ChangeRetailPricePointInPremises < ActiveRecord::Migration[5.1]
  def change
    change_column :premises, :retail_price_point, :string
  end
end
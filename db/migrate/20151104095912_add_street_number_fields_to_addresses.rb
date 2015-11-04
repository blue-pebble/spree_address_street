class AddStreetNumberFieldsToAddresses < ActiveRecord::Migration
  def change
    change_table :spree_addresses do |t|
      t.string :street
      t.string :number
      t.string :number_postfix
    end
  end
end

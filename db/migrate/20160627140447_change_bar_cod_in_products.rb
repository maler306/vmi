class ChangeBarCodInProducts < ActiveRecord::Migration
  def change
    change_column :products, :bar_cod, :string
    change_column :products, :distributor_cod, :string

  end
end

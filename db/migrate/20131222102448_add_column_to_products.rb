class AddColumnToProducts < ActiveRecord::Migration
  def change
    add_column :products, :product_name, :string
    add_column :products, :price, :decimal, :precision => 8, :scale => 2
    add_column :products, :image, :string
    add_column :products, :description, :string
  end
end

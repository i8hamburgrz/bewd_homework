class RemoveDateColumn < ActiveRecord::Migration
  def change
  	remove_column :items, :expiration_date
  end
end

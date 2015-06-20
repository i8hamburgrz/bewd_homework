class AddDateColumn < ActiveRecord::Migration
  def change
  	add_column :items, :expiration_date, :date
  end
end

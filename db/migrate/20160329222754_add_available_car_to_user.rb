class AddAvailableCarToUser < ActiveRecord::Migration
  def change
    add_column :users, :car_available, :boolean
    add_column :users, :car_extra_seats, :integer
  end
end

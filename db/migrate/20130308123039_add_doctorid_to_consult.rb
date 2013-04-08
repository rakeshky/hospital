class AddDoctoridToConsult < ActiveRecord::Migration
  def change
    add_column :consults, :doctor_id, :string
  end
end

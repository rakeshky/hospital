class RenmaeColumndoctorIdToconsultantIdInconsult < ActiveRecord::Migration
 def change
 rename_column :consults, :doctor_id, :consultant_id
 end
end

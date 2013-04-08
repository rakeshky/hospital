class CreateConsults < ActiveRecord::Migration
  def change
    create_table :consults do |t|
      t.string :patient

      t.timestamps
    end
  end
end

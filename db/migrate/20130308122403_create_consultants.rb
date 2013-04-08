class CreateConsultants < ActiveRecord::Migration
  def change
    create_table :consultants do |t|
      t.string :doctor

      t.timestamps
    end
  end
end

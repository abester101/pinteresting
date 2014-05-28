class CreatePinners < ActiveRecord::Migration
  def change
    create_table :pinners do |t|
      t.string :description
      

      t.timestamps
    end
  end
end

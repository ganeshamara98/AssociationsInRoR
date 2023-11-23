class CreateAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :state
      t.integer :pin

      t.timestamps
    end
  end
end

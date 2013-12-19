class CreatePotlucks < ActiveRecord::Migration
  def change
    create_table :potlucks do |t|
      t.string :name
      t.string :location
      t.datetime :datetime

      t.timestamps
    end
  end
end

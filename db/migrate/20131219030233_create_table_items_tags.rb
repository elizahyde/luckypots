class CreateTableItemsTags < ActiveRecord::Migration
  def self.up
     create_table :items_tags, :id => false do |t|
        t.references :item
        t.references :tag
        t.timestamps
       end
  end

  def self.down
     drop_table :items_tags
  end
end
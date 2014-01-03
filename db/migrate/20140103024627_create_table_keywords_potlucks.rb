class CreateTableKeywordsPotlucks < ActiveRecord::Migration
  def self.up
        create_table :keywords_potlucks, :id => false do |t|
           t.references :keyword
           t.references :potluck
           t.timestamps
          end
      end

     def self.down
        drop_table :keywords_potlucks
     end
end

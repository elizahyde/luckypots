class CreateTableKeywordsPotlucks < ActiveRecord::Migration
  def change
    create_table :keywords_potlucks, id: false do |t|
      t.integer :keyword_id
      t.integer :potluck_id
    end
  end
end

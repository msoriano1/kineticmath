class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.string :description
      t.references :yearlevel, foreign_key: true
      
      t.timestamps null: false
    end
    
  end
end

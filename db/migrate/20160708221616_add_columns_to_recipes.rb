class AddColumnsToRecipes < ActiveRecord::Migration
  def change
  	change_table :recipes do |t|
  		t.text :ingredient
  		t.string :quantity
  		t.attachment :avatar

  		t.references :user
  	end
  end
end

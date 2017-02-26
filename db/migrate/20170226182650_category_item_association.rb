class CategoryItemAssociation < ActiveRecord::Migration[5.0]
  def change
    change_table :items do |t|
      t.belongs_to :category, index: true
    end
  end
end

class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :producent
      t.string :datasheet

      t.timestamps
    end
  end
end

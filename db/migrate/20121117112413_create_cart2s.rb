class CreateCart2s < ActiveRecord::Migration
  def change
    create_table :cart2s do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

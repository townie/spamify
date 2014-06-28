class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :name
      t.string :ip
      t.text :description

      t.timestamps
    end
  end
end

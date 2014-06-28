class CreateVisitedUrls < ActiveRecord::Migration
  def change
    create_table :visited_urls do |t|
      t.text :url
      t.text :page
      t.text :duration
      t.text :content

      t.timestamps
    end
  end
end

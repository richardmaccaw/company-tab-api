class CreateAnnouncements < ActiveRecord::Migration[5.2]
  def change
    create_table :announcements do |t|
      t.string :title
      t.string :description
      t.string :date
      t.boolean :published
      t.integer :company_id
      t.timestamps
    end
  end
end

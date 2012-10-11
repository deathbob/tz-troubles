class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.datetime :display_start_at

      t.timestamps
    end
  end
end

require 'test_helper'

class AnnouncementTest < ActiveSupport::TestCase

  test "display_start_at should be the same after saving as before" do
    a = Announcement.new
    before_save = a.display_start_at = Time.current
    puts a.display_start_at
    a.save!
    a.reload
    puts a.display_start_at
    assert before_save == a.display_start_at
  end
end

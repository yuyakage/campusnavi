require 'test_helper'

class MicropostTest < ActiveSupport::TestCase

  def setup
    @user = users(:michael)
    @micropost = @user.microposts.build(content: "とても分かりやすいです", professor: "田中", subject: "憲法")
  end

  test "should be valid" do
    assert @micropost.valid?
  end

  test "user id should be present" do
    @micropost.user_id = nil
    assert_not @micropost.valid?
  end

  test "content should be present" do
    @micropost.content = "   "
    assert_not @micropost.valid?
  end

  test "content should be at most 140 characters" do
    @micropost.content = "a" * 141
    assert_not @micropost.valid?
  end

  test "professor should be present" do
    @micropost.professor = "   "
    assert_not @micropost.valid?
  end

  test "professor should be at most 30 characters" do
    @micropost.professor = "a" * 31
    assert_not @micropost.valid?
  end

  test "subject should be present" do
    @micropost.subject = "   "
    assert_not @micropost.valid?
  end

  test "subject should be at most 50 characters" do
    @micropost.subject = "a" * 51
    assert_not @micropost.valid?
  end

  test "order should be most recent first" do
    assert_equal microposts(:most_recent), Micropost.first
  end
end

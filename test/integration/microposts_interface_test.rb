require 'test_helper'

class MicropostsInterfaceTest < ActionDispatch::IntegrationTest
  
  def setup
    @user = users(:michael)
  end

  test "micropost interface" do
    log_in_as(@user)
    get new_micropost_path
    # 無効な送信
    assert_no_difference 'Micropost.count' do
      post microposts_path, params: { micropost: { content: "" , professor: "", subject: "",
                                      university: "", faculty: "", department: "" } }
    end
    assert_select 'div#error_explanation'
    # 有効な送信
    content = "This micropost really ties the room together"
    professor = "西田"
    subject = "宗教学"
    university = "福岡大学"
    faculty = "法学部"
    department = "法律学科"
    assert_difference 'Micropost.count', 1 do
      post microposts_path, params: { micropost: { content: content, professor: professor, subject: subject, 
                                      university: university, faculty: faculty, department: department } }
    end
    assert_redirected_to root_url
    follow_redirect!
    assert_match content, response.body
    # 投稿を削除する
    assert_select 'a', text: '削除'
    first_micropost = @user.microposts.paginate(page: 1).first
    assert_difference 'Micropost.count', -1 do
      delete micropost_path(first_micropost)
    end
    # 違うユーザーのプロフィールにアクセス (削除リンクがないことを確認)
    get user_path(users(:archer))
    assert_select 'a', text: '削除', count: 0
  end
end

require 'rails_helper'

RSpec.describe "videos/new", type: :view do
  before(:each) do
    assign(:video, Video.new(
      :column_id => 1,
      :tv_code => "MyString",
      :recommend => 1,
      :title => "MyString",
      :cover => "MyString",
      :duration => "MyString",
      :summary => "MyText"
    ))
  end

  it "renders new video form" do
    render

    assert_select "form[action=?][method=?]", videos_path, "post" do

      assert_select "input#video_column_id[name=?]", "video[column_id]"

      assert_select "input#video_tv_code[name=?]", "video[tv_code]"

      assert_select "input#video_recommend[name=?]", "video[recommend]"

      assert_select "input#video_title[name=?]", "video[title]"

      assert_select "input#video_cover[name=?]", "video[cover]"

      assert_select "input#video_duration[name=?]", "video[duration]"

      assert_select "textarea#video_summary[name=?]", "video[summary]"
    end
  end
end

require 'spec_helper'

describe "libs/index" do
  before(:each) do
    assign(:libs, [
      stub_model(Lib,
        :cover => "Cover",
        :author => "Author",
        :title => "Title",
        :isbn => "Isbn"
      ),
      stub_model(Lib,
        :cover => "Cover",
        :author => "Author",
        :title => "Title",
        :isbn => "Isbn"
      )
    ])
  end

  it "renders a list of libs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cover".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Isbn".to_s, :count => 2
  end
end

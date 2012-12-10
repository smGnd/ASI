require 'spec_helper'

describe "libs/new" do
  before(:each) do
    assign(:lib, stub_model(Lib,
      :cover => "MyString",
      :author => "MyString",
      :title => "MyString",
      :isbn => "MyString"
    ).as_new_record)
  end

  it "renders new lib form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => libs_path, :method => "post" do
      assert_select "input#lib_cover", :name => "lib[cover]"
      assert_select "input#lib_author", :name => "lib[author]"
      assert_select "input#lib_title", :name => "lib[title]"
      assert_select "input#lib_isbn", :name => "lib[isbn]"
    end
  end
end

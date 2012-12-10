require 'spec_helper'

describe "libs/show" do
  before(:each) do
    @lib = assign(:lib, stub_model(Lib,
      :cover => "Cover",
      :author => "Author",
      :title => "Title",
      :isbn => "Isbn"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cover/)
    rendered.should match(/Author/)
    rendered.should match(/Title/)
    rendered.should match(/Isbn/)
  end
end

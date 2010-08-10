require File.expand_path(File.dirname(__FILE__) + "/../../../lib/rspec_rails_extensions/comparable_array.rb")

describe ComparableArray do
  describe "#=~" do
    before { @a = ComparableArray.new([:foo, :bar]) }
    it "should match identical array" do
      (@a =~ [:foo, :bar]).should == true
    end
    it "should match array with same elements in different order" do
      (@a =~ [:bar, :foo]).should == true
    end
    it "should not match array with different number of elements" do
      (@a =~ [:foo, :bar, :sed]).should == false
    end
    it "should not match array with same number of different elements" do
      (@a =~ [:foo, :sed]).should == false
    end
  end
end

describe Array do
  describe "~" do
    it "should wrap self in ComparableArray" do
      (~[]).should be_a_kind_of(ComparableArray)
      (~[:foo]).should be_a_kind_of(ComparableArray)
      (~[:foo]).array.should == [:foo]
    end
  end
end

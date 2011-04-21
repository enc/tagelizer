require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Tagelizer" do
  it "has a locale set" do
    tagi = Tagelizer.new('ru')
    tagi.dictionary.should == 'ru'
  end


  it "splits strings" do
    tagi = Tagelizer.new
    text = "Hi my jealous 34 friend!"
    tagi.parse(text).should == ["jealous", "friend"]
  end

  it "can fix mistakes" do
    tagi = Tagelizer.new
    text = "Hi my jealous 34 freind!"
    tagi.parse(text).should == ["jealous", "Friend"]
  end

  it "can use basic form of words" do
    tagi = Tagelizer.new
    text = "He reads a book."
    tagi.parse(text).should == ["reads", "book"]
  end

  it "should compare stems" do
    tagi = Tagelizer.new
    text = "He reads a book as a reading."
    tagi.parse(text).should == ["book", "reading"]
  end
end

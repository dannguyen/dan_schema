require 'spec_helper'
describe DanSchema do
  it "should be awesome" do
    expect("awesome").to eq "awesome"
  end

  describe 'init' do
    it 'should be indifferently hashed' do
      s = Base.new(title: "Dan")
      q = Base.new("title" => "Dan")

      expect(s.title).to eq q.title
    end
  end


  describe 'aliases' do
    let(:thing){Base.new(title: "Danny boy")}

    it 'should have :name alias to title' do
      expect(thing.title).to be thing.name
    end
  end
end

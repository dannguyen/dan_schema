require 'spec_helper'

describe DanSchema do
  describe 'errors' do
    describe 'initialization' do
      it 'should raise error if URL not provided' do
        expect{ Link.new({title: 'whatev'})}.to raise_error URLMissing
      end
    end
  end
end

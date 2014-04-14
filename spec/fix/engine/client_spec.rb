require_relative '../../spec_helper'

require 'fix/engine/client'

describe 'FE::Client' do

  describe '.get' do
    it 'should instantiate a new client if there is none registered with the same IP' do
      FE::Client.should_receive(:new).with('foo')
      FE::Client.get('foo')
    end
  end

end


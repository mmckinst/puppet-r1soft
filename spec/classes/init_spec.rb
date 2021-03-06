require 'spec_helper'
describe 'r1soft' do
  context 'supported operating systems' do
    on_supported_os.each do |os, facts|
      context "on #{os}" do
        let(:facts) do
          facts
        end
        context 'with defaults for all parameters' do
          it { should contain_class('r1soft') }
          it { should_not contain_class('r1soft::agent') }
        end
      end
    end
  end
end

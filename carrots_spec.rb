require 'rspec'
require_relative 'carrots'

RSpec.describe 'Carrots' do
  describe 'test case 1' do
    let(:t) { 50 }
    let(:c) { [15, 30, 30, 20, 40] }
    let(:r) { [30, 10, 50, 40, 95] }

    it { expect(carrots(t, c, r)).to match_array([2, 3])}
  end

  describe 'test case 2' do
    let(:t) { 20 }
    let(:c) { [10, 8, 8, 2] }
    let(:r) { [15, 10, 12, 1] }

    it { expect(carrots(t, c, r)).to match_array([0, 2, 3])}
  end
end

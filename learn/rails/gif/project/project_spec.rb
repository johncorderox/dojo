require_relative 'project'
RSpec.describe AppleTree do
  before(:each) do
    @tree = AppleTree.new
    @tree.age = 0
  end
  it 'should raise error IF height attribute is changed' do
    expect{@tree.height = 6}.to raise_error(NoMethodError)
  end

  it 'should not grow apples for the first three years of its life' do
    @baby_tree = AppleTree.new
    @baby_tree.year_gone_by
    @baby_tree.year_gone_by
    @baby_tree.year_gone_by
    expect(@baby_tree.count_apples).to eq(0)
    @baby_tree.year_gone_by
    @baby_tree.year_gone_by
    @baby_tree.year_gone_by
    @baby_tree.year_gone_by
    expect(@baby_tree.pick_apples).to eq(0)

  end

end

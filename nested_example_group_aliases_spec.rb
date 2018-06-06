#nested_example_group_aliases_spec.rb
#rspec nested_example_group_aliases_spec.rb --tag detailed -fdoc
RSpec.configure do |rspec|
	rspec.alias_example_group_to :detail,:detailed => true
end
RSpec.detail 'a detail' do
	it 'can do sth less important stuff' do

	end
end

RSpec.describe "a thing" do
  describe "in broad strokes" do
    it "can do things" do
    end
  end

  detail "something less important" do
    it "can do an unimportant thing" do
    end
  end
end

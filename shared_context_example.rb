#shared_context_example.rb
require './shared_stuff.rb'
RSpec.describe 'group that does not include shared context' do 
	it 'does not have access to shared method normally' do
		expect(self).not_to respond_to(:shared_method)
	end
	it "has access to shared methods from examples with matching metadata",:include_shared=> true do
		expect(shared_method).to eq('it works')
	end

    it 'inherits metadata from the included context due to the matching metadata',:include_shared => true do |ex|
    	expect(ex.metadata).to include(:shared_context => :metadata)
    end
end

RSpec.describe 'group that include shared context using metadata', :include_shared=> true do

	it 'can access to method in shared_context' do
		expect(shared_method).to eq('it works')
	end
	  group = self
    it 'inherits metadata from included context ' do |ex|
    	expect(ex.metadata).to include(:shared_context=>:metadata)
    	expect(group.metadata).to include(:shared_context=>:metadata)
    end

end

RSpec.describe 'including shared context using include_context and a block' do 
	include_context 'shared stuff' do 
		let(:shared_let) { {'in_a' => 'block'} }
	end
	it 'evaluates the block in the shared context' do
		expect(shared_let['in_a']).to eq('block')
	end
end

RSpec.describe 'group that include shared context using include_context' do 
	include_context 'shared stuff'
	it 'can access to method in sahred context' do  
		expect(shared_method).to eq('it works')
	end
	group = self

  it "inherits metadata from the included context" do |ex|
    expect(group.metadata).to include(:shared_context => :metadata)
    expect(ex.metadata).to include(:shared_context => :metadata)
  end
end
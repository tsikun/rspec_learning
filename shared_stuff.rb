#shared_stuff.rb
RSpec.configure do |rspec|
	rspec.shared_context_metadata_behavior=:apply_to_host_groups
end
RSpec.shared_context 'shared stuff',:shared_context => :metadata do
	before(:each) {@some_var=:some_val}
    def shared_method
    	'it works'
    end
    let(:shared_let){{:arbitary=> :object}}
    subject do
    	'this is the subject'
    end
end

RSpec.configure do |rspec|
	rspec.include_context 'shared stuff',:include_shared=> true
end
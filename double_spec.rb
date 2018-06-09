#double_spec.rb
RSpec.describe 'double spec' do
	it 'raises errors when messages not allowed or expected are received' do
		dble=double("some object",:foo=> 3, :bar=> 4)
 		expect(dble.foo).to eq(3)
 		expect(dble.bar).to eq(4)
 	end
end
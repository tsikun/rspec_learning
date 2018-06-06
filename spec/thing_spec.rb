#spec/thing_spec.rb
RSpec.describe 'something' do
	it 'has a tag',:fast=> true do

	end
	it 'has not a tag' do
		fail
	end
end
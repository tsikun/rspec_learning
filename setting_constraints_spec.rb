RSpec.describe 'An invitation' do
	let(:invitation){spy("invitation")}
	before do
		invitation.deliver('foo@mail.com')
		invitation.deliver('bar@mail.com')
	end

	it 'shoud reciver message twice' do
		expect(invitation).to have_received(:deliver).twice
	end
	it 'should recieve msg with correct parameter' do 
		expect(invitation).to have_received(:deliver).with('foo@mail.com').ordered
		expect(invitation).to have_received(:deliver).with('bar@mail.com').ordered
	end
end
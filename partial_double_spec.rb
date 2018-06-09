class User
  def self.find(id)
    :original_return_value
  end
end

RSpec.describe "A partial double" do
  it "redefines a method" do
    allow(User).to receive(:find).and_return(:redefined)
    expect(User.find(3)).to eq(:redefined)
  end

  it "restores the redefined method after the example completes" do
    expect(User.find(3)).to eq(:original_return_value)
  end
end
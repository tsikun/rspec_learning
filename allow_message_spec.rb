#allow_message_spec.rb
RSpec.describe "allow" do
  it "returns nil from allowed messages" do
    dbl = double("Some Collaborator")
    expect(dbl).to receive(:foo)
    dbl.foo
  end
end
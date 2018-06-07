RSpec.describe 'randomized example' do
  it 'prints random numbers' do
    puts 5.times.map { rand(99) }.join("-")
  end
end
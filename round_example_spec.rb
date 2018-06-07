class Database
	def self.trancsaction
		puts 'before trancsaction'
		yield
		puts 'after trancsaction'
	end	
end

RSpec.describe 'round_example' do
	# around(:example) do |p|
	# 	Database.trancsaction(&p)
	# end
	around(:example) do |p|
		puts 'before example'
		p.run
		puts 'after example'
	end
	
	it 'around example' do
		puts 'this is example'
	end
end

RSpec.describe "around filter" do
  around(:example) do |example|
    puts "around example before"
    example.run
    puts "around example after"
  end

  before(:context) do
    puts "before context"
  end

  after(:context) do
    puts "after context"
  end
   before(:example) do
    puts "before example"
  end

  after(:example) do
    puts "after example"
  end
  it "gets run in order" do
    puts "in the example"
  end
end
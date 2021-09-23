# frozen_string_literal: true

def load_file(path, name)
  File.read(File.join(path, name))
end

def write_file(filename, content)
  File.write(filename, content)
  # File.open(filename, "w") do |file|
  #   file.write(content)
  # end
end

RSpec.describe "Client" do
  let(:client) { OpenAI::Client.new(access_token: access_token) }
  let(:access_token) { ENV['OPENAI_SECRET_KEY'] }
  let(:engine) { 'davinci-codex' }
  let(:max_tokens) { 50 }
  let(:temperature) { 0 }
  let(:top_p) { 1 }
  let(:frequency_penalty) { 0 }
  let(:presence_penalty) { 0 }
  let(:prompt) { question }
  let(:path) { 'spec/samples/inputs' }

  let(:output_path) { 'spec/samples/outputs' }
  let(:output) { File.join(output_path, output_name) }

  # max_tokens=60,
# top_p=1,
# frequency_penalty=0.5,
# presence_penalty=0,

  let(:prompt1) {
    <<-TEXT
print hello world using ruby

puts "Hello World"

now put this code inside a method and class
    TEXT
  }

  let(:prompt2) {
    <<-TEXT
    JavaScript chatbot
    
    
    You: How do I combine arrays?
    TEXT
  }

  let(:prompt3) {
    <<-TEXT
    Ruby chatbot
    
    
    You: How do I create a class

    Ruby:

    class Person
      def initialize
      end
    end

    TEXT
  }

  let(:prompt4) {
    <<-TEXT
    Ruby chatbot
    
    
    You: How do I create a class

    Ruby:

    class Person
      def initialize
      end
    end

    You: How to do multiple inheritance

    TEXT
  }

  let(:prompt5) {
    <<-TEXT

    Ruby chatbot

    You: Create a configuration class for the person table with the fields, First Name, Last Name and Date of Birth and three rows of sample data

    class Configuration

      table :person do

        columns [:first_name, :last_name, :date_of_birth]

        row "David", "Cruwys", 17/01/1972
        row "Sean", "Wallace", 29/05/1967
        row "Lisa", "Cudro", 01/12/1974

      end
    end

    You: Create a configuration class for the products table for our restaurant with the fields, Product Name, Quantity, Ingredients and five rows of sample data
    
    TEXT
  }

  # let(:prompt) { 'print hello world in ruby\n\nputs \"Hello World\"\n\nnow put this code inside a methond and class\n' }

  let(:prompt6) {
    <<~TEXT

    YOU: Create an empty table called address with the following (fields city, country, state, state_name, street1, street2, zip) and set the values to nil

    RUBY:

    #{example1}

    YOU: Create an empty table called company with the following (name, stock_code, location, employee_count) and set the values to nil
    TEXT
  }

  context 'read and write' do
    let(:example1) { load_file(path, 'address-a-question1.rb') }
    let(:output_name) { 'make_empty_company.rb' }
        
    it 'reader' do
      puts prompt6
      
    end

    fit 'writer' do
      write_file(output, 'sample out')
    end
  end

  let(:question) {
    <<~TEXT
    Ruby bot:
    YOU: How to read a file in ruby

    RUBY:

    content = File.read("filename.txt")

    YOU: How do you write a text file in ruby
    TEXT
  }

  it 'should ask a question using davinci' do
    response = client.completions(engine: engine,
                                  parameters: { 
                                    prompt: prompt, 
                                    max_tokens: max_tokens,
                                    temperature: temperature,
                                    top_p: top_p,
                                    frequency_penalty: frequency_penalty,
                                    presence_penalty: presence_penalty
                                  })
    puts '-' * 70
    puts response.parsed_response['choices'].map{ |c| c["text"] }
    puts '-' * 70
  end
end

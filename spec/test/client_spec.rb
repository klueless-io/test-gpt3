# frozen_string_literal: true

RSpec.describe "Client" do
  let(:client) { OpenAI::Client.new(access_token: access_token) }
  let(:access_token) { ENV['OPENAI_SECRET_KEY'] }
  let(:engine) { 'davinci-codex' }
  let(:max_tokens) { 128 }
  let(:temperature) { 0 }
  let(:top_p) { 1 }
  let(:frequency_penalty) { 0 }
  let(:presence_penalty) { 0 }

  let(:prompt) {
    <<-TEXT
print hello world using ruby

puts "Hello World"

now put this code inside a method and class
    TEXT
  }

  # let(:prompt) { 'print hello world in ruby\n\nputs \"Hello World\"\n\nnow put this code inside a methond and class\n' }

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

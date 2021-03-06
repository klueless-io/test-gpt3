# frozen_string_literal: true

RSpec.describe Gpt3 do
  it 'has a version number' do
    expect(Gpt3::VERSION).not_to be nil
  end

  it 'has a standard error' do
    expect { raise Gpt3::Error, 'some message' }
      .to raise_error('some message')
  end

  it 'prints access token' do
    puts ENV['OPENAI_SECRET_KEY']
  end
end

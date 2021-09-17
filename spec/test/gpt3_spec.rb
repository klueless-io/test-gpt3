# frozen_string_literal: true

RSpec.describe Test::Gpt3 do
  it 'has a version number' do
    expect(Test::Gpt3::VERSION).not_to be nil
  end

  it 'has a standard error' do
    expect { raise Test::Gpt3::Error, 'some message' }
      .to raise_error('some message')
  end
end

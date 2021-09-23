# frozen_string_literal: true

RSpec.describe Gpt3::Gpt3Builder do
  let(:instance) { described_class.init }
  let(:cfg) { ->(config) {} }

  let(:max_tokens) { 50 }
  let(:temperature) { 0 }
  let(:top_p) { 1 }
  let(:frequency_penalty) { 0 }
  let(:presence_penalty) { 0 }
  # let(:prompt) { question }
  # let(:path) { 'spec/samples/inputs' }

  describe '#initialize' do
    subject { instance }

    let(:instance) { described_class.new }

    it { is_expected.not_to be_nil }
  end

  describe '#init' do
    subject { instance }

    it { is_expected.to be_a(described_class) }

    context 'with no configuration' do

      it do
        is_expected.to have_attributes(
          max_tokens: 50,
          temperature: 0,
          top_p: 1,
          frequency_penalty: 0,
          presence_penalty: 0,
          prompt: '',
          engine: 'davinci-codex')
      end

      context '.access_token' do
        subject { instance.access_token }
      
        it { is_expected.not_to be_nil }
      end

      context '.client' do
        subject { instance.client }
      
        it { is_expected.not_to be_nil }
      end

      # DEAL with ENV['OPENAI_ACCESS_TOKEN'] vs ENV['OPENAI_SECRET_KEY']

      # context '.template_folders.folders' do
      #   subject { instance.template_folders.folders }

      #   it { is_expected.to be_empty }
      # end
    end

  end

  describe '#samples' do
    
    xit 'sample' do
      example = <<-RUBY

      class Configuration

        table :person do
  
          columns [:first_name, :last_name, :date_of_birth]
  
          row "David", "Cruwys", 17/01/1972
          row "Sean", "Wallace", 29/05/1967
          row "Lisa", "Cudro", 01/12/1974
  
        end
      end
  
      RUBY

      instance
        .prompt("Ruby chatbot")
        .command(:you, 'Create a configuration class for the person table with the fields, First Name, Last Name and Date of Birth and three rows of sample data')
        .example(example)
        .execute()
        .write_to('xyz.rb')

    end
  end
end

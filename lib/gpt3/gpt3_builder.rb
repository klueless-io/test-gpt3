# frozen_string_literal: true

module Gpt3
  class Gpt3Builder
    include KLog::Logging

    attr_reader :client

    attr_accessor :prompt

    attr_accessor :access_token
    attr_accessor :engine

    attr_accessor :max_tokens
    attr_accessor :temperature
    attr_accessor :top_p
    attr_accessor :frequency_penalty
    attr_accessor :presence_penalty

    # response = client.completions(engine: engine,
    #   parameters: { 
    #     prompt: prompt, 
    #   })


    # def self.build
    #   init.build
    # end

    # Create and initialize the builder.
    #
    # @return [Builder] Returns the builder via fluent interface
    def self.init() #configuration = nil)
      builder = new() #configuration)

      yield(builder) if block_given?

      builder
    end

    # assigns a builder hash and defines builder methods
    def initialize() # configuration = nil)
      @access_token       = ENV['OPENAI_ACCESS_TOKEN'] # ENV['OPENAI_SECRET_KEY']
      @client             = OpenAI::Client.new(access_token: access_token)
      
      @engine             = 'davinci-codex'

      @max_tokens         = 50
      @temperature        = 0
      @top_p              = 1
      @frequency_penalty  = 0
      @presence_penalty   = 0

      @prompt             = ''

      # @target_folders = configuration.target_folders.clone
      # @template_folders = configuration.template_folders.clone
    end

    # @return [Hash/StrongType] Returns data object, can be a hash
    #                           or strong typed object that you
    #                           have wrapped around the hash
    def build
      raise NotImplementedError
    end

    # def to_h
    #   {
    #     target_folders: target_folders.to_h,
    #     template_folders: template_folders.to_h
    #   }
    # end

    # def debug
    #   log.subheading 'kbuilder'

    #   log.kv 'current folder key' , current_folder_key
    #   log.kv 'current folder'     , target_folder
    #   target_folders.debug(title: 'target_folders')

    #   log.info ''

    #   template_folders.debug(title: 'template folders (search order)')
    #   ''
    # end

    # ----------------------------------------------------------------------
    # Fluent interface
    # ----------------------------------------------------------------------

    def add_file(file, **opts)
      # move to command
      full_file = opts.key?(:folder_key) ? target_file(file, folder: opts[:folder_key]) : target_file(file)

      # Need logging options that can log these internal details
      FileUtils.mkdir_p(File.dirname(full_file))

      content = process_any_content(**opts)

      file_write(full_file, content, on_exist: opts[:on_exist])

      # Prettier needs to work with the original file name
      run_prettier file if opts.key?(:pretty)
      # Need support for rubocop -a

      self
    end
    alias touch add_file # it is expected that you would not supply any options, just a file name

    # def make_folder(folder_key = nil, sub_path: nil)
    #   folder_key  = current_folder_key if folder_key.nil?
    #   folder      = target_folder(folder_key)
    #   folder      = File.join(folder, sub_path) unless sub_path.nil?

    #   FileUtils.mkdir_p(folder)

    #   self
    # end

    # def add_clipboard(**opts)
    #   # move to command
    #   content = process_any_content(**opts)

    #   begin
    #     IO.popen('pbcopy', 'w') { |f| f << content }
    #   rescue Errno::ENOENT => e
    #     if e.message == 'No such file or directory - pbcopy'
    #       # May want to use this GEM in the future
    #       # https://github.com/janlelis/clipboard
    #       puts 'Clipboard paste is currently only supported on MAC'
    #     end
    #   end

    #   self
    # end
    # alias clipboard_copy add_clipboard

    # def vscode(*file_parts, folder: current_folder_key)
    #   # move to command
    #   file = target_file(*file_parts, folder: folder)

    #   rc "code #{file}"

    #   self
    # end

    # Fluent adder for target folder (KBuilder::NamedFolders)
    def add_target_folder(folder_key, value)
      target_folders.add(folder_key, value)

      self
    end

    # def run_cop(file, **opts)
    #   command = Commands::RuboCopCommand.new(file, builder: self, **opts)
    #   command.execute

    #   self
    # end

    # # Need to handle absolute files, see
    # # /Users/davidcruwys/dev/printspeak/reference_application/printspeak-domain/.builders/presentation/presentation_builder/commands/copy_ruby_resource_command.rb
    # def run_prettier(file, log_level: :log)
    #   # command = "prettier --check #{file} --write #{file}"
    #   command = "npx prettier --loglevel #{log_level} --write #{file}"

    #   run_command command
    # end

    # def run_command(command)
    #   # Deep path create if needed
    #   tf = target_folder

    #   FileUtils.mkdir_p(tf)

    #   build_command = "cd #{tf} && #{command}"

    #   puts build_command

    #   # need to support the fork process options as I was not able to run
    #   # k_builder_watch -n because it hid all the following output
    #   system(build_command)
    # end
    # alias rc run_command

    # def file_write(file, content, on_exist: :skip)
    #   not_found = !File.exist?(file)

    #   if not_found
    #     File.write(file, content)
    #     return
    #   end

    #   return if on_exist == :skip || on_exist == :ignore

    #   if on_exist == :overwrite || on_exist == :write
    #     File.write(file, content)
    #     return
    #   end

    #   if on_exist == :compare
    #     # need to use some sort of caching folder for this
    #     ext = File.extname(file)
    #     fn  = File.basename(file, ext)
    #     temp_file = Tempfile.new([fn, ext])

    #     temp_file.write(content)
    #     temp_file.close

    #     return if File.read(file) == content

    #     system("code -d #{file} #{temp_file.path}")
    #     sleep 2
    #   end
    # end
  end
end

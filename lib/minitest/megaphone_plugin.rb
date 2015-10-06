require "minitest"

module Minitest
  def self.plugin_megaphone_options(opts, _options)
    opts.on "--meg", "Print out all errors from the test suite after it has completed running" do
      MegaphoneReporter.megaphone!
    end
    opts.on "--megaphone", "Print out all errors from the test suite after it has completed running" do
      MegaphoneReporter.megaphone!
    end
  end

  def self.plugin_megaphone_init(options)
    if MegaphoneReporter.megaphone?
      self.reporter.reporters << MegaphoneReporter.new(options)
    end
  end

  class MegaphoneReporter < AbstractReporter
    attr_accessor :results

    def initialize(options)
      @options = options
      self.results = []
    end

    def self.megaphone!
      @megaphone = true
    end

    def self.megaphone?
      @megaphone ||= false
    end

    def record(result)
      if result.failures.reject { |failure| failure.kind_of?(Minitest::Skip) }.any?
        self.results << result
      end
    end

    def report
      self.results.each_with_index do |result, index|
        puts "\n"
        puts "FAILURE #{index} --> Test: #{result.name} failed."
      end

      puts "MEGAPHONE WAS HERE! TOTAL NUMBER OF TEST FAILURES == #{self.results.length}!"
      puts "\n"
    end
  end
end

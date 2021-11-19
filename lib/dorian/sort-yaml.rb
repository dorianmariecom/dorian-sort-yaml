require "yaml"

module Dorian
  class SortYaml
    def self.run
      if ARGV[0] == "--help" || ARGV[0] == "-h"
        puts "USAGE: sort-yaml FILES..."
        puts "USAGE: ... | sort-yaml"
        exit
      end

      inputs = ARGV

      if inputs.size.zero?
        inputs = STDIN.each_line.to_a

        if File.exist?(inputs.first.strip)
          inputs = inputs.map(&:strip)
        else
          inputs = [inputs.join]
        end
      end

      inputs.each do |input|
        content = File.exist?(input) ? File.read(input) : input
        yaml = sort_yaml(YAML.safe_load(File.read(filepath))).to_yaml
        File.exist?(input) ? File.write(input, yaml) : puts(yaml)
      end
    end

    def self.sort_yaml(data)
      if data.is_a?(Array)
        data.map { |element| sort_yaml(element) }
      elsif data.is_a?(Hash)
        data
          .sort_by { |key, _value| key }
          .to_h
          .transform_values { |value| sort_yaml(value) }
      else
        data
      end
    end
  end
end

require 'yaml'

module Dorian
  class SortYaml
    def self.run
      if ARGV.size < 1
        puts 'USAGE: sort-yaml FILE [FILE...]'
        exit
      end

      ARGV.each do |filepath|
        File.write(
          filepath,
          sort_yaml(YAML.safe_load(File.read(filepath))).to_yaml
        )
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

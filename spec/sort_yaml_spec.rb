# frozen_string_literal: true

require "spec_helper"
require "tempfile"

RSpec.describe "sort-yaml" do
  it "works" do
    tempfile = Tempfile.create
    File.write(tempfile, <<~YAML)
      b: 2
      a: 1
    YAML

    expect(`bin/sort-yaml #{tempfile.path}`).to eq(<<~YAML)
      ---
      a: 1
      b: 2
    YAML
  ensure
    begin
      File.delete(tempfile)
    rescue StandardError
      nil
    end
  end
end

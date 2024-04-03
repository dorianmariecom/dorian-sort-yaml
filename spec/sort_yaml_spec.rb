require "spec_helper"
require "tempfile"

RSpec.describe "sort-yaml" do
  it "works" do
    tempfile = Tempfile.create
    File.write(tempfile, <<~YAML)
    b: 2
    a: 1
    YAML

    `bin/sort-yaml #{tempfile.path}`

    expect(File.read(tempfile)).to eq(<<~YAML)
    ---
    a: 1
    b: 2
    YAML
  ensure
    File.delete(tempfile) rescue nil
  end
end

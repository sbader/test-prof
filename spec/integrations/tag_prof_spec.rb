# frozen_string_literal: true

require "spec_helper"

describe "TagProf" do
  specify "RSpec integration", :aggregate_failures do
    output = run_rspec('tag_prof', env: { 'TAG_PROF' => 'type' })

    expect(output).to include("TagProf report for type")
    expect(output).to match(/type\s+time\s+total\s+\%total\s+%time\s+avg\n\n/)
    expect(output).to match(/fail\s+\d{2}\:\d{2}\.\d{3}\s+1\s+/)
    expect(output).to match(/pass\s+\d{2}\:\d{2}\.\d{3}\s+2\s+/)
    expect(output).to match(/__unknown__\s+\d{2}\:\d{2}\.\d{3}\s+1\s+/)
  end
end

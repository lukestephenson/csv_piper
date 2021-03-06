$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
if ENV['CODECLIMATE_REPO_TOKEN'].nil?
  require 'simplecov'
  SimpleCov.start do
    minimum_coverage 99
    refuse_coverage_drop
  end
else
  require 'codeclimate-test-reporter'
  CodeClimate::TestReporter.start
end

require 'csv_piper'
require 'csv_piper/pre_processors/remove_extra_columns'
require 'csv_piper/processors/collect_output'
require 'csv_piper/processors/collect_errors'
require 'csv_piper/processors/create_active_model'
require 'csv_piper/processors/copy'
require 'support/csv_import_test_utils'
require 'csv_piper/test_support/csv_mock_file'

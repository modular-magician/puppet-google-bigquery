# Copyright 2018 Google Inc.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------

require 'google/bigquery/property/base'

module Google
  module Bigquery
    module Data
      # A class to manage data for DatasetReference for dataset.
      class DatasetDatasetReferen
        include Comparable

        attr_reader :dataset_id
        attr_reader :project_id

        def to_json(_arg = nil)
          {
            'datasetId' => dataset_id,
            'projectId' => project_id
          }.reject { |_k, v| v.nil? }.to_json
        end

        def to_s
          {
            dataset_id: dataset_id,
            project_id: project_id
          }.reject { |_k, v| v.nil? }.map { |k, v| "#{k}: #{v}" }.join(', ')
        end

        def ==(other)
          return false unless other.is_a? DatasetDatasetReferen
          compare_fields(other).each do |compare|
            next if compare[:self].nil? || compare[:other].nil?
            return false if compare[:self] != compare[:other]
          end
          true
        end

        def <=>(other)
          return false unless other.is_a? DatasetDatasetReferen
          compare_fields(other).each do |compare|
            next if compare[:self].nil? || compare[:other].nil?
            result = compare[:self] <=> compare[:other]
            return result unless result.zero?
          end
          0
        end

        private

        def compare_fields(other)
          [
            { self: dataset_id, other: other.dataset_id },
            { self: project_id, other: other.project_id }
          ]
        end
      end

      # Manages a DatasetDatasetReferen nested object
      # Data is coming from the GCP API
      class DatasetDatasetReferenApi < DatasetDatasetReferen
        def initialize(args)
          @dataset_id =
            Google::Bigquery::Property::String.api_munge(args['datasetId'])
          @project_id =
            Google::Bigquery::Property::String.api_munge(args['projectId'])
        end
      end

      # Manages a DatasetDatasetReferen nested object
      # Data is coming from the Puppet manifest
      class DatasetDatasetReferenCatalog < DatasetDatasetReferen
        def initialize(args)
          @dataset_id =
            Google::Bigquery::Property::String.unsafe_munge(args['dataset_id'])
          @project_id =
            Google::Bigquery::Property::String.unsafe_munge(args['project_id'])
        end
      end
    end

    module Property
      # A class to manage input to DatasetReference for dataset.
      class DatasetDatasetReferen < Google::Bigquery::Property::Base
        # Used for parsing Puppet catalog
        def unsafe_munge(value)
          self.class.unsafe_munge(value)
        end

        # Used for parsing Puppet catalog
        def self.unsafe_munge(value)
          return if value.nil?
          Data::DatasetDatasetReferenCatalog.new(value)
        end

        # Used for parsing GCP API responses
        def self.api_munge(value)
          return if value.nil?
          Data::DatasetDatasetReferenApi.new(value)
        end
      end
    end
  end
end

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

require 'google/bigquery/property/array'
require 'google/bigquery/property/base'

module Google
  module Bigquery
    module Data
      # A class to manage data for Access for dataset.
      class DatasetAccess
        include Comparable

        attr_reader :domain
        attr_reader :group_by_email
        attr_reader :role
        attr_reader :special_group
        attr_reader :user_by_email
        attr_reader :view

        def to_json(_arg = nil)
          {
            'domain' => domain,
            'groupByEmail' => group_by_email,
            'role' => role,
            'specialGroup' => special_group,
            'userByEmail' => user_by_email,
            'view' => view
          }.reject { |_k, v| v.nil? }.to_json
        end

        def to_s
          {
            domain: domain,
            group_by_email: group_by_email,
            role: role,
            special_group: special_group,
            user_by_email: user_by_email,
            view: view
          }.reject { |_k, v| v.nil? }.map { |k, v| "#{k}: #{v}" }.join(', ')
        end

        def ==(other)
          return false unless other.is_a? DatasetAccess
          compare_fields(other).each do |compare|
            next if compare[:self].nil? || compare[:other].nil?
            return false if compare[:self] != compare[:other]
          end
          true
        end

        def <=>(other)
          return false unless other.is_a? DatasetAccess
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
            { self: domain, other: other.domain },
            { self: group_by_email, other: other.group_by_email },
            { self: role, other: other.role },
            { self: special_group, other: other.special_group },
            { self: user_by_email, other: other.user_by_email },
            { self: view, other: other.view }
          ]
        end
      end

      # Manages a DatasetAccess nested object
      # Data is coming from the GCP API
      class DatasetAccessApi < DatasetAccess
        def initialize(args)
          @domain = Google::Bigquery::Property::String.api_munge(args['domain'])
          @group_by_email =
            Google::Bigquery::Property::String.api_munge(args['groupByEmail'])
          @role = Google::Bigquery::Property::Enum.api_munge(args['role'])
          @special_group =
            Google::Bigquery::Property::String.api_munge(args['specialGroup'])
          @user_by_email =
            Google::Bigquery::Property::String.api_munge(args['userByEmail'])
          @view =
            Google::Bigquery::Property::DatasetView.api_munge(args['view'])
        end
      end

      # Manages a DatasetAccess nested object
      # Data is coming from the Puppet manifest
      class DatasetAccessCatalog < DatasetAccess
        def initialize(args)
          @domain =
            Google::Bigquery::Property::String.unsafe_munge(args['domain'])
          @group_by_email = Google::Bigquery::Property::String.unsafe_munge(
            args['group_by_email']
          )
          @role = Google::Bigquery::Property::Enum.unsafe_munge(args['role'])
          @special_group = Google::Bigquery::Property::String.unsafe_munge(
            args['special_group']
          )
          @user_by_email = Google::Bigquery::Property::String.unsafe_munge(
            args['user_by_email']
          )
          @view =
            Google::Bigquery::Property::DatasetView.unsafe_munge(args['view'])
        end
      end
    end

    module Property
      # A class to manage input to Access for dataset.
      class DatasetAccess < Google::Bigquery::Property::Base
        # Used for parsing Puppet catalog
        def unsafe_munge(value)
          self.class.unsafe_munge(value)
        end

        # Used for parsing Puppet catalog
        def self.unsafe_munge(value)
          return if value.nil?
          Data::DatasetAccessCatalog.new(value)
        end

        # Used for parsing GCP API responses
        def self.api_munge(value)
          return if value.nil?
          Data::DatasetAccessApi.new(value)
        end
      end

      # A Puppet property that holds an integer
      class DatasetAccessArray < Google::Bigquery::Property::Array
        # Used for parsing Puppet catalog
        def unsafe_munge(value)
          self.class.unsafe_munge(value)
        end

        # Used for parsing Puppet catalog
        def self.unsafe_munge(value)
          return if value.nil?
          return DatasetAccess.unsafe_munge(value) \
            unless value.is_a?(::Array)
          value.map { |v| DatasetAccess.unsafe_munge(v) }
        end

        # Used for parsing GCP API responses
        def self.api_munge(value)
          return if value.nil?
          return DatasetAccess.api_munge(value) \
            unless value.is_a?(::Array)
          value.map { |v| DatasetAccess.api_munge(v) }
        end
      end
    end
  end
end

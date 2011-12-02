#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.6.0 on 2011-12-02 16:39:46.

require 'ads_common/savon_service'
require 'adwords_api/v200909/ad_group_service_registry'

module AdwordsApi; module V200909; module AdGroupService
  class AdGroupService < AdsCommon::SavonService
    def initialize(api, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/cm/v200909'
      super(api, endpoint, namespace, :v200909)
    end

    def get(*args, &block)
      return execute_action('get', args, &block)
    end

    def mutate(*args, &block)
      return execute_action('mutate', args, &block)
    end

    private

    def get_service_registry()
      return AdGroupServiceRegistry
    end

    def get_module()
      return AdwordsApi::V200909::AdGroupService
    end
  end
end; end; end

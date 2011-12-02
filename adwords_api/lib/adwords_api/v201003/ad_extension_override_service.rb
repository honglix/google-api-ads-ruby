#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.6.0 on 2011-12-02 16:40:08.

require 'ads_common/savon_service'
require 'adwords_api/v201003/ad_extension_override_service_registry'

module AdwordsApi; module V201003; module AdExtensionOverrideService
  class AdExtensionOverrideService < AdsCommon::SavonService
    def initialize(api, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/cm/v201003'
      super(api, endpoint, namespace, :v201003)
    end

    def get(*args, &block)
      return execute_action('get', args, &block)
    end

    def mutate(*args, &block)
      return execute_action('mutate', args, &block)
    end

    private

    def get_service_registry()
      return AdExtensionOverrideServiceRegistry
    end

    def get_module()
      return AdwordsApi::V201003::AdExtensionOverrideService
    end
  end
end; end; end

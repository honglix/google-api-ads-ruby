#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.6.0 on 2011-12-02 16:40:06.

require 'ads_common/savon_service'
require 'adwords_api/v200909/targeting_idea_service_registry'

module AdwordsApi; module V200909; module TargetingIdeaService
  class TargetingIdeaService < AdsCommon::SavonService
    def initialize(api, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/o/v200909'
      super(api, endpoint, namespace, :v200909)
    end

    def get(*args, &block)
      return execute_action('get', args, &block)
    end

    def get_bulk_keyword_ideas(*args, &block)
      return execute_action('get_bulk_keyword_ideas', args, &block)
    end

    private

    def get_service_registry()
      return TargetingIdeaServiceRegistry
    end

    def get_module()
      return AdwordsApi::V200909::TargetingIdeaService
    end
  end
end; end; end

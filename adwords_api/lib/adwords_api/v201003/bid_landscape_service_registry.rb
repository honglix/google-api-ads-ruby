#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.6.0 on 2011-12-02 16:40:18.

require 'adwords_api/errors'

module AdwordsApi; module V201003; module BidLandscapeService
  class BidLandscapeServiceRegistry
    BIDLANDSCAPESERVICE_METHODS = {:get_bid_landscape=>{:input=>[{:name=>:selector, :type=>"BidLandscapeSelector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_bid_landscape_response", :fields=>[{:name=>:rval, :type=>"BidLandscape", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    BIDLANDSCAPESERVICE_TYPES = {:BidLandscapeIdFilter=>{:fields=>[{:name=>:campaign_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_group_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:criterion_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :CriterionBidLandscape=>{:fields=>[{:name=>:criterion_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"BidLandscape"}, :CriterionBidLandscapeSelector=>{:fields=>[], :base=>"BidLandscapeSelector"}, :DoubleValue=>{:fields=>[{:name=>:number, :type=>"double", :min_occurs=>0, :max_occurs=>1}], :base=>"NumberValue"}, :LongValue=>{:fields=>[{:name=>:number, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"NumberValue"}, :Money=>{:fields=>[{:name=>:micro_amount, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"ComparableValue"}, :NumberValue=>{:fields=>[], :abstract=>true, :base=>"ComparableValue"}, :OperationAccessDenied=>{:fields=>[{:name=>:reason, :type=>"OperationAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SoapHeader=>{:fields=>[{:name=>:auth_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:client_email, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:units, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :BidLandscapeSelector=>{:fields=>[{:name=>:id_filters, :type=>"BidLandscapeIdFilter", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:bid_landscape_selector_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ComparableValue=>{:fields=>[{:name=>:comparable_value_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :"BidLandscape.LandscapePoint"=>{:fields=>[{:name=>:bid, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:clicks, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:cost, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:marginal_cpc, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:impressions, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :BidLandscape=>{:fields=>[{:name=>:campaign_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_group_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:landscape_points, :type=>"BidLandscape.LandscapePoint", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:bid_landscape_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}}
    BIDLANDSCAPESERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return BIDLANDSCAPESERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return BIDLANDSCAPESERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return BIDLANDSCAPESERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < AdwordsApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end

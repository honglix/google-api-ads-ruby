#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.6.0 on 2011-12-02 16:40:52.

require 'adwords_api/errors'

module AdwordsApi; module V201008; module AdParamService
  class AdParamServiceRegistry
    ADPARAMSERVICE_METHODS = {:get=>{:input=>[{:name=>:selector, :type=>"AdParamSelector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"AdParamPage", :min_occurs=>0, :max_occurs=>1}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"AdParamOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"AdParam", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    ADPARAMSERVICE_TYPES = {:AdParam=>{:fields=>[{:name=>:ad_group_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:criterion_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:insertion_text, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:param_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :AdParamOperation=>{:fields=>[{:name=>:operand, :type=>"AdParam", :min_occurs=>0, :max_occurs=>1}], :base=>"Operation"}, :AdParamPage=>{:fields=>[{:name=>:entries, :type=>"AdParam", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :"PolicyViolationError.Part"=>{:fields=>[{:name=>:index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:length, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :PolicyViolationKey=>{:fields=>[{:name=>:policy_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:violating_text, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SoapHeader=>{:fields=>[{:name=>:auth_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:client_email, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:partial_failure, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:units, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :AdParamSelector=>{:fields=>[{:name=>:ad_group_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:criteria_id, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :Operator=>{:fields=>[]}}
    ADPARAMSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return ADPARAMSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return ADPARAMSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return ADPARAMSERVICE_NAMESPACES[index]
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

#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.6.0 on 2011-12-02 16:41:10.

require 'adwords_api/errors'

module AdwordsApi; module V201008; module CampaignTargetService
  class CampaignTargetServiceRegistry
    CAMPAIGNTARGETSERVICE_METHODS = {:get=>{:input=>[{:name=>:selector, :type=>"CampaignTargetSelector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"CampaignTargetPage", :min_occurs=>0, :max_occurs=>1}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"CampaignTargetOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"CampaignTargetReturnValue", :min_occurs=>0, :max_occurs=>1}]}}}
    CAMPAIGNTARGETSERVICE_TYPES = {:AdScheduleTarget=>{:fields=>[{:name=>:day_of_week, :type=>"DayOfWeek", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_minute, :type=>"MinuteOfHour", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_minute, :type=>"MinuteOfHour", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_multiplier, :type=>"double", :min_occurs=>0, :max_occurs=>1}], :base=>"Target"}, :Address=>{:fields=>[{:name=>:street_address, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:street_address2, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:city_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:province_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:province_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:postal_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:country_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AgeTarget=>{:fields=>[{:name=>:age, :type=>"AgeTarget.Age", :min_occurs=>0, :max_occurs=>1}], :base=>"DemographicTarget"}, :CityTarget=>{:fields=>[{:name=>:city_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:province_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:country_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"GeoTarget"}, :CountryTarget=>{:fields=>[{:name=>:country_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"GeoTarget"}, :EntityNotFound=>{:fields=>[{:name=>:reason, :type=>"EntityNotFound.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :GenderTarget=>{:fields=>[{:name=>:gender, :type=>"GenderTarget.Gender", :min_occurs=>0, :max_occurs=>1}], :base=>"DemographicTarget"}, :GeoPoint=>{:fields=>[{:name=>:latitude_in_micro_degrees, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:longitude_in_micro_degrees, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :LanguageTarget=>{:fields=>[{:name=>:language_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Target"}, :MetroTarget=>{:fields=>[{:name=>:metro_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"GeoTarget"}, :MobileCarrierTarget=>{:fields=>[{:name=>:carrier_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:country_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"MobileTarget"}, :MobilePlatformTarget=>{:fields=>[{:name=>:platform_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"MobileTarget"}, :MobileTarget=>{:fields=>[], :abstract=>true, :base=>"Target"}, :NetworkTarget=>{:fields=>[{:name=>:network_coverage_type, :type=>"NetworkCoverageType", :min_occurs=>0, :max_occurs=>1}], :base=>"Target"}, :OperationAccessDenied=>{:fields=>[{:name=>:reason, :type=>"OperationAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PlatformTarget=>{:fields=>[{:name=>:platform_type, :type=>"PlatformType", :min_occurs=>0, :max_occurs=>1}], :base=>"Target"}, :PolygonTarget=>{:fields=>[{:name=>:vertices, :type=>"GeoPoint", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"GeoTarget"}, :ProvinceTarget=>{:fields=>[{:name=>:province_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"GeoTarget"}, :ProximityTarget=>{:fields=>[{:name=>:geo_point, :type=>"GeoPoint", :min_occurs=>0, :max_occurs=>1}, {:name=>:radius_distance_units, :type=>"ProximityTarget.DistanceUnits", :min_occurs=>0, :max_occurs=>1}, {:name=>:radius_in_units, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:address, :type=>"Address", :min_occurs=>0, :max_occurs=>1}, {:name=>:allow_service_of_address, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"GeoTarget"}, :SoapHeader=>{:fields=>[{:name=>:auth_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:client_email, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:partial_failure, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:units, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :CampaignTargetSelector=>{:fields=>[{:name=>:campaign_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}]}, :DemographicTarget=>{:fields=>[{:name=>:bid_modifier, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :base=>"Target"}, :GeoTarget=>{:fields=>[{:name=>:excluded, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :base=>"Target"}, :Target=>{:fields=>[{:name=>:target_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :AdScheduleTargetList=>{:fields=>[{:name=>:targets, :type=>"AdScheduleTarget", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"TargetList"}, :DemographicTargetList=>{:fields=>[{:name=>:targets, :type=>"DemographicTarget", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"TargetList"}, :GeoTargetList=>{:fields=>[{:name=>:targets, :type=>"GeoTarget", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"TargetList"}, :LanguageTargetList=>{:fields=>[{:name=>:targets, :type=>"LanguageTarget", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"TargetList"}, :MobileTargetList=>{:fields=>[{:name=>:targets, :type=>"MobileTarget", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"TargetList"}, :NetworkTargetList=>{:fields=>[{:name=>:targets, :type=>"NetworkTarget", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"TargetList"}, :PlatformTargetList=>{:fields=>[{:name=>:targets, :type=>"PlatformTarget", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"TargetList"}, :TargetList=>{:fields=>[{:name=>:campaign_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:target_list_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :CampaignTargetOperation=>{:fields=>[{:name=>:operand, :type=>"TargetList", :min_occurs=>0, :max_occurs=>1}], :base=>"Operation"}, :CampaignTargetPage=>{:fields=>[{:name=>:entries, :type=>"TargetList", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :CampaignTargetReturnValue=>{:fields=>[{:name=>:value, :type=>"TargetList", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :"AgeTarget.Age"=>{:fields=>[]}, :DayOfWeek=>{:fields=>[]}, :"GenderTarget.Gender"=>{:fields=>[]}, :MinuteOfHour=>{:fields=>[]}, :NetworkCoverageType=>{:fields=>[]}, :Operator=>{:fields=>[]}, :PlatformType=>{:fields=>[]}, :"ProximityTarget.DistanceUnits"=>{:fields=>[]}}
    CAMPAIGNTARGETSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return CAMPAIGNTARGETSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return CAMPAIGNTARGETSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return CAMPAIGNTARGETSERVICE_NAMESPACES[index]
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

#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.6.0 on 2011-12-02 16:40:45.

require 'adwords_api/errors'

module AdwordsApi; module V201008; module AdGroupAdService
  class AdGroupAdServiceRegistry
    ADGROUPADSERVICE_METHODS = {:get=>{:input=>[{:name=>:selector, :type=>"AdGroupAdSelector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"AdGroupAdPage", :min_occurs=>0, :max_occurs=>1}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"AdGroupAdOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"AdGroupAdReturnValue", :min_occurs=>0, :max_occurs=>1}]}}}
    ADGROUPADSERVICE_TYPES = {:AdExtensionOverrideStats=>{:fields=>[], :base=>"Stats"}, :AdGroupAdCountLimitExceeded=>{:fields=>[], :base=>"EntityCountLimitExceeded"}, :AdScheduleTarget=>{:fields=>[{:name=>:day_of_week, :type=>"DayOfWeek", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_minute, :type=>"MinuteOfHour", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_minute, :type=>"MinuteOfHour", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_multiplier, :type=>"double", :min_occurs=>0, :max_occurs=>1}], :base=>"Target"}, :AdStats=>{:fields=>[{:name=>:percent_served, :type=>"double", :min_occurs=>0, :max_occurs=>1}], :base=>"Stats"}, :AdStatsSelector=>{:fields=>[], :base=>"StatsSelector"}, :Address=>{:fields=>[{:name=>:street_address, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:street_address2, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:city_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:province_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:province_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:postal_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:country_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AgeTarget=>{:fields=>[{:name=>:age, :type=>"AgeTarget.Age", :min_occurs=>0, :max_occurs=>1}], :base=>"DemographicTarget"}, :Audio=>{:fields=>[{:name=>:duration_millis, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:streaming_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:ready_to_play_on_the_web, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Media"}, :CityTarget=>{:fields=>[{:name=>:city_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:province_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:country_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"GeoTarget"}, :CountryTarget=>{:fields=>[{:name=>:country_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"GeoTarget"}, :DateRange=>{:fields=>[{:name=>:min, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:max, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DeprecatedAd=>{:fields=>[{:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:type, :type=>"DeprecatedAd.Type", :min_occurs=>0, :max_occurs=>1}], :base=>"Ad"}, :Dimensions=>{:fields=>[{:name=>:width, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:height, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :DoubleValue=>{:fields=>[{:name=>:number, :type=>"double", :min_occurs=>0, :max_occurs=>1}], :base=>"NumberValue"}, :EntityCountLimitExceeded=>{:fields=>[{:name=>:reason, :type=>"EntityCountLimitExceeded.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:enclosing_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:limit, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :EntityNotFound=>{:fields=>[{:name=>:reason, :type=>"EntityNotFound.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :GenderTarget=>{:fields=>[{:name=>:gender, :type=>"GenderTarget.Gender", :min_occurs=>0, :max_occurs=>1}], :base=>"DemographicTarget"}, :GeoPoint=>{:fields=>[{:name=>:latitude_in_micro_degrees, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:longitude_in_micro_degrees, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :Image=>{:fields=>[{:name=>:data, :type=>"base64Binary", :min_occurs=>0, :max_occurs=>1}], :base=>"Media"}, :LanguageTarget=>{:fields=>[{:name=>:language_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Target"}, :LongValue=>{:fields=>[{:name=>:number, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"NumberValue"}, :Media_Size_DimensionsMapEntry=>{:fields=>[{:name=>:key, :type=>"Media.Size", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Dimensions", :min_occurs=>0, :max_occurs=>1}]}, :Media_Size_StringMapEntry=>{:fields=>[{:name=>:key, :type=>"Media.Size", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :MetroTarget=>{:fields=>[{:name=>:metro_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"GeoTarget"}, :MobileAd=>{:fields=>[{:name=>:headline, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:description, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:markup_languages, :type=>"MarkupLanguageType", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:mobile_carriers, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:business_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:country_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:phone_number, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Ad"}, :MobileCarrierTarget=>{:fields=>[{:name=>:carrier_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:country_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"MobileTarget"}, :MobilePlatformTarget=>{:fields=>[{:name=>:platform_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"MobileTarget"}, :MobileTarget=>{:fields=>[], :abstract=>true, :base=>"Target"}, :NetworkTarget=>{:fields=>[{:name=>:network_coverage_type, :type=>"NetworkCoverageType", :min_occurs=>0, :max_occurs=>1}], :base=>"Target"}, :NumberValue=>{:fields=>[], :abstract=>true, :base=>"ComparableValue"}, :OperationAccessDenied=>{:fields=>[{:name=>:reason, :type=>"OperationAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :PlatformTarget=>{:fields=>[{:name=>:platform_type, :type=>"PlatformType", :min_occurs=>0, :max_occurs=>1}], :base=>"Target"}, :"PolicyViolationError.Part"=>{:fields=>[{:name=>:index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:length, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :PolicyViolationKey=>{:fields=>[{:name=>:policy_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:violating_text, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :PolygonTarget=>{:fields=>[{:name=>:vertices, :type=>"GeoPoint", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"GeoTarget"}, :ProductAd=>{:fields=>[{:name=>:promotion_line, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Ad"}, :ProvinceTarget=>{:fields=>[{:name=>:province_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"GeoTarget"}, :ProximityTarget=>{:fields=>[{:name=>:geo_point, :type=>"GeoPoint", :min_occurs=>0, :max_occurs=>1}, {:name=>:radius_distance_units, :type=>"ProximityTarget.DistanceUnits", :min_occurs=>0, :max_occurs=>1}, {:name=>:radius_in_units, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:address, :type=>"Address", :min_occurs=>0, :max_occurs=>1}, {:name=>:allow_service_of_address, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"GeoTarget"}, :SoapHeader=>{:fields=>[{:name=>:auth_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:client_email, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:partial_failure, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:units, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :StatsSelector=>{:fields=>[{:name=>:date_range, :type=>"DateRange", :min_occurs=>0, :max_occurs=>1}, {:name=>:stats_selector_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :TempAdUnionId=>{:fields=>[], :base=>"AdUnionId"}, :TextAd=>{:fields=>[{:name=>:headline, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:description1, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:description2, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Ad"}, :ThirdPartyRedirectAd=>{:fields=>[{:name=>:is_cookie_targeted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_user_interest_targeted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_tagged, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:video_types, :type=>"VideoType", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"RichMediaAd"}, :Video=>{:fields=>[{:name=>:duration_millis, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:streaming_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:ready_to_play_on_the_web, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:industry_standard_commercial_identifier, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:advertising_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:you_tube_video_id_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Media"}, :AdUnionId=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_union_id_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DemographicTarget=>{:fields=>[{:name=>:bid_modifier, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :base=>"Target"}, :ExemptionRequest=>{:fields=>[{:name=>:key, :type=>"PolicyViolationKey", :min_occurs=>0, :max_occurs=>1}]}, :GeoTarget=>{:fields=>[{:name=>:excluded, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :base=>"Target"}, :Money=>{:fields=>[{:name=>:micro_amount, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"ComparableValue"}, :RichMediaAd=>{:fields=>[{:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:dimensions, :type=>"Dimensions", :min_occurs=>0, :max_occurs=>1}, {:name=>:snippet, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:impression_beacon_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:certified_vendor_format_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :base=>"Ad"}, :Target=>{:fields=>[{:name=>:target_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ComparableValue=>{:fields=>[{:name=>:comparable_value_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Media=>{:fields=>[{:name=>:media_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:type, :type=>"Media.MediaType", :min_occurs=>0, :max_occurs=>1}, {:name=>:reference_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:dimensions, :type=>"Media_Size_DimensionsMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:urls, :type=>"Media_Size_StringMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:mime_type, :type=>"Media.MimeType", :min_occurs=>0, :max_occurs=>1}, {:name=>:source_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:file_size, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:creation_time, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:media_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :MobileImageAd=>{:fields=>[{:name=>:markup_languages, :type=>"MarkupLanguageType", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:mobile_carriers, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:image, :type=>"Image", :min_occurs=>0, :max_occurs=>1}], :base=>"Ad"}, :Stats=>{:fields=>[{:name=>:start_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:network, :type=>"Stats.Network", :min_occurs=>0, :max_occurs=>1}, {:name=>:clicks, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:impressions, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:cost, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:average_position, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:average_cpc, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:average_cpm, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:ctr, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:conversions, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:conversion_rate, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:cost_per_conversion, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:conversions_many_per_click, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:conversion_rate_many_per_click, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:cost_per_conversion_many_per_click, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:view_through_conversions, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:total_conv_value, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:value_per_conv, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:value_per_conv_many_per_click, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:stats_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :TemplateElementField=>{:fields=>[{:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:type, :type=>"TemplateElementField.Type", :min_occurs=>0, :max_occurs=>1}, {:name=>:field_text, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:field_media, :type=>"Media", :min_occurs=>0, :max_occurs=>1}]}, :ImageAd=>{:fields=>[{:name=>:image, :type=>"Image", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_to_copy_image_from, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"Ad"}, :LocalBusinessAd=>{:fields=>[{:name=>:full_business_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:phone_number, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:street_address, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:city, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:region, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:region_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:postal_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:country_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:business_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:description1, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:description2, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:target, :type=>"ProximityTarget", :min_occurs=>0, :max_occurs=>1}, {:name=>:business_image, :type=>"Image", :min_occurs=>0, :max_occurs=>1}, {:name=>:icon, :type=>"Image", :min_occurs=>0, :max_occurs=>1}], :base=>"Ad"}, :TemplateElement=>{:fields=>[{:name=>:unique_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:fields, :type=>"TemplateElementField", :min_occurs=>0, :max_occurs=>:unbounded}]}, :AdGroupAdSelector=>{:fields=>[{:name=>:campaign_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:ad_group_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:ad_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:statuses, :type=>"AdGroupAd.Status", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:stats_selector, :type=>"AdStatsSelector", :min_occurs=>0, :max_occurs=>1}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :TemplateAd=>{:fields=>[{:name=>:template_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_union_id, :type=>"AdUnionId", :min_occurs=>0, :max_occurs=>1}, {:name=>:template_elements, :type=>"TemplateElement", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:dimensions, :type=>"Dimensions", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:duration, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"Ad"}, :Ad=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:display_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:approval_status, :type=>"Ad.ApprovalStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:disapproval_reasons, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:trademark_disapproved, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AdGroupAd=>{:fields=>[{:name=>:ad_group_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad, :type=>"Ad", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"AdGroupAd.Status", :min_occurs=>0, :max_occurs=>1}, {:name=>:stats, :type=>"AdStats", :min_occurs=>0, :max_occurs=>1}]}, :AdGroupAdOperation=>{:fields=>[{:name=>:operand, :type=>"AdGroupAd", :min_occurs=>0, :max_occurs=>1}, {:name=>:exemption_requests, :type=>"ExemptionRequest", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Operation"}, :AdGroupAdPage=>{:fields=>[{:name=>:entries, :type=>"AdGroupAd", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :AdGroupAdReturnValue=>{:fields=>[{:name=>:value, :type=>"AdGroupAd", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :"Ad.ApprovalStatus"=>{:fields=>[]}, :"AdGroupAd.Status"=>{:fields=>[]}, :"AgeTarget.Age"=>{:fields=>[]}, :DayOfWeek=>{:fields=>[]}, :"DeprecatedAd.Type"=>{:fields=>[]}, :"GenderTarget.Gender"=>{:fields=>[]}, :MarkupLanguageType=>{:fields=>[]}, :"Media.MediaType"=>{:fields=>[]}, :"Media.MimeType"=>{:fields=>[]}, :"Media.Size"=>{:fields=>[]}, :MinuteOfHour=>{:fields=>[]}, :NetworkCoverageType=>{:fields=>[]}, :Operator=>{:fields=>[]}, :PlatformType=>{:fields=>[]}, :"ProximityTarget.DistanceUnits"=>{:fields=>[]}, :"Stats.Network"=>{:fields=>[]}, :"TemplateElementField.Type"=>{:fields=>[]}, :VideoType=>{:fields=>[]}}
    ADGROUPADSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return ADGROUPADSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return ADGROUPADSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return ADGROUPADSERVICE_NAMESPACES[index]
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

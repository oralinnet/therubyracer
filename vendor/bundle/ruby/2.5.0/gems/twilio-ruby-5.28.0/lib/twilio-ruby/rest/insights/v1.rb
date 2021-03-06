##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class Insights
      class V1 < Version
        ##
        # Initialize the V1 version of Insights
        def initialize(domain)
          super
          @version = 'v1'
          @summary = nil
        end

        ##
        # @param [String] call_sid The call_sid
        # @return [Twilio::REST::Insights::V1::CallSummaryContext] if call_sid was passed.
        # @return [Twilio::REST::Insights::V1::CallSummaryList]
        def summary(call_sid=:unset)
          if call_sid.nil?
            raise ArgumentError, 'call_sid cannot be nil'
          elsif call_sid == :unset
            @summary ||= CallSummaryList.new self
          else
            CallSummaryContext.new(self, call_sid)
          end
        end

        ##
        # Provide a user friendly representation
        def to_s
          '<Twilio::REST::Insights::V1>'
        end
      end
    end
  end
end
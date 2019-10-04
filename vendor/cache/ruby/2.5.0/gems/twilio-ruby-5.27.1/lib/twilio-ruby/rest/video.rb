##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class Video < Domain
      ##
      # Initialize the Video Domain
      def initialize(twilio)
        super

        @base_url = 'https://video.twilio.com'
        @host = 'video.twilio.com'
        @port = 443

        # Versions
        @v1 = nil
      end

      ##
      # Version v1 of video
      def v1
        @v1 ||= V1.new self
      end

      ##
      # @param [String] sid The unique string that we created to identify the
      #   CompositionHook resource.
      # @return [Twilio::REST::Video::V1::CompositionHookInstance] if sid was passed.
      # @return [Twilio::REST::Video::V1::CompositionHookList]
      def composition_hooks(sid=:unset)
        self.v1.composition_hooks(sid)
      end

      ##
      # @return [Twilio::REST::Video::V1::CompositionSettingsInstance]
      def composition_settings
        self.v1.composition_settings()
      end

      ##
      # @param [String] sid The unique string that we created to identify the Recording
      #   resource.
      # @return [Twilio::REST::Video::V1::RecordingInstance] if sid was passed.
      # @return [Twilio::REST::Video::V1::RecordingList]
      def recordings(sid=:unset)
        self.v1.recordings(sid)
      end

      ##
      # @return [Twilio::REST::Video::V1::RecordingSettingsInstance]
      def recording_settings
        self.v1.recording_settings()
      end

      ##
      # @param [String] sid The unique string that we created to identify the
      #   Composition resource.
      # @return [Twilio::REST::Video::V1::CompositionInstance] if sid was passed.
      # @return [Twilio::REST::Video::V1::CompositionList]
      def compositions(sid=:unset)
        self.v1.compositions(sid)
      end

      ##
      # @param [String] sid The unique string that we created to identify the Room
      #   resource.
      # @return [Twilio::REST::Video::V1::RoomInstance] if sid was passed.
      # @return [Twilio::REST::Video::V1::RoomList]
      def rooms(sid=:unset)
        self.v1.rooms(sid)
      end

      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio::REST::Video>'
      end
    end
  end
end
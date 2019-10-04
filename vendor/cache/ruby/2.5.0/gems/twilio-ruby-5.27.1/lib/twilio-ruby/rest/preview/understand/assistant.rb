##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class Preview < Domain
      class Understand < Version
        ##
        # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
        class AssistantList < ListResource
          ##
          # Initialize the AssistantList
          # @param [Version] version Version that contains the resource
          # @return [AssistantList] AssistantList
          def initialize(version)
            super(version)

            # Path Solution
            @solution = {}
            @uri = "/Assistants"
          end

          ##
          # Lists AssistantInstance records from the API as a list.
          # Unlike stream(), this operation is eager and will load `limit` records into
          # memory before returning.
          # @param [Integer] limit Upper limit for the number of records to return. stream()
          #    guarantees to never return more than limit.  Default is no limit
          # @param [Integer] page_size Number of records to fetch per request, when
          #    not set will use the default value of 50 records.  If no page_size is defined
          #    but a limit is defined, stream() will attempt to read the limit with the most
          #    efficient page size, i.e. min(limit, 1000)
          # @return [Array] Array of up to limit results
          def list(limit: nil, page_size: nil)
            self.stream(limit: limit, page_size: page_size).entries
          end

          ##
          # Streams AssistantInstance records from the API as an Enumerable.
          # This operation lazily loads records as efficiently as possible until the limit
          # is reached.
          # @param [Integer] limit Upper limit for the number of records to return. stream()
          #    guarantees to never return more than limit. Default is no limit.
          # @param [Integer] page_size Number of records to fetch per request, when
          #    not set will use the default value of 50 records. If no page_size is defined
          #    but a limit is defined, stream() will attempt to read the limit with the most
          #    efficient page size, i.e. min(limit, 1000)
          # @return [Enumerable] Enumerable that will yield up to limit results
          def stream(limit: nil, page_size: nil)
            limits = @version.read_limits(limit, page_size)

            page = self.page(page_size: limits[:page_size], )

            @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
          end

          ##
          # When passed a block, yields AssistantInstance records from the API.
          # This operation lazily loads records as efficiently as possible until the limit
          # is reached.
          def each
            limits = @version.read_limits

            page = self.page(page_size: limits[:page_size], )

            @version.stream(page,
                            limit: limits[:limit],
                            page_limit: limits[:page_limit]).each {|x| yield x}
          end

          ##
          # Retrieve a single page of AssistantInstance records from the API.
          # Request is executed immediately.
          # @param [String] page_token PageToken provided by the API
          # @param [Integer] page_number Page Number, this value is simply for client state
          # @param [Integer] page_size Number of records to return, defaults to 50
          # @return [Page] Page of AssistantInstance
          def page(page_token: :unset, page_number: :unset, page_size: :unset)
            params = Twilio::Values.of({
                'PageToken' => page_token,
                'Page' => page_number,
                'PageSize' => page_size,
            })
            response = @version.page(
                'GET',
                @uri,
                params
            )
            AssistantPage.new(@version, response, @solution)
          end

          ##
          # Retrieve a single page of AssistantInstance records from the API.
          # Request is executed immediately.
          # @param [String] target_url API-generated URL for the requested results page
          # @return [Page] Page of AssistantInstance
          def get_page(target_url)
            response = @version.domain.request(
                'GET',
                target_url
            )
            AssistantPage.new(@version, response, @solution)
          end

          ##
          # Retrieve a single page of AssistantInstance records from the API.
          # Request is executed immediately.
          # @param [String] friendly_name A text description for the Assistant. It is
          #   non-unique and can up to 255 characters long.
          # @param [Boolean] log_queries A boolean that specifies whether queries should be
          #   logged for 30 days further training. If false, no queries will be stored, if
          #   true, queries will be stored for 30 days and deleted thereafter. Defaults to
          #   true if no value is provided.
          # @param [String] unique_name A user-provided string that uniquely identifies this
          #   resource as an alternative to the sid. Unique up to 64 characters long.
          # @param [String] callback_url A user-provided URL to send event callbacks to.
          # @param [String] callback_events Space-separated list of callback events that
          #   will trigger callbacks.
          # @param [Hash] fallback_actions The JSON actions to be executed when the user's
          #   input is not recognized as matching any Task.
          # @param [Hash] initiation_actions The JSON actions to be executed on inbound
          #   phone calls when the Assistant has to say something first.
          # @param [Hash] style_sheet The JSON object that holds the style sheet for the
          #   assistant
          # @return [AssistantInstance] Newly created AssistantInstance
          def create(friendly_name: :unset, log_queries: :unset, unique_name: :unset, callback_url: :unset, callback_events: :unset, fallback_actions: :unset, initiation_actions: :unset, style_sheet: :unset)
            data = Twilio::Values.of({
                'FriendlyName' => friendly_name,
                'LogQueries' => log_queries,
                'UniqueName' => unique_name,
                'CallbackUrl' => callback_url,
                'CallbackEvents' => callback_events,
                'FallbackActions' => Twilio.serialize_object(fallback_actions),
                'InitiationActions' => Twilio.serialize_object(initiation_actions),
                'StyleSheet' => Twilio.serialize_object(style_sheet),
            })

            payload = @version.create(
                'POST',
                @uri,
                data: data
            )

            AssistantInstance.new(@version, payload, )
          end

          ##
          # Provide a user friendly representation
          def to_s
            '#<Twilio.Preview.Understand.AssistantList>'
          end
        end

        ##
        # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
        class AssistantPage < Page
          ##
          # Initialize the AssistantPage
          # @param [Version] version Version that contains the resource
          # @param [Response] response Response from the API
          # @param [Hash] solution Path solution for the resource
          # @return [AssistantPage] AssistantPage
          def initialize(version, response, solution)
            super(version, response)

            # Path Solution
            @solution = solution
          end

          ##
          # Build an instance of AssistantInstance
          # @param [Hash] payload Payload response from the API
          # @return [AssistantInstance] AssistantInstance
          def get_instance(payload)
            AssistantInstance.new(@version, payload, )
          end

          ##
          # Provide a user friendly representation
          def to_s
            '<Twilio.Preview.Understand.AssistantPage>'
          end
        end

        ##
        # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
        class AssistantContext < InstanceContext
          ##
          # Initialize the AssistantContext
          # @param [Version] version Version that contains the resource
          # @param [String] sid A 34 character string that uniquely identifies this
          #   resource.
          # @return [AssistantContext] AssistantContext
          def initialize(version, sid)
            super(version)

            # Path Solution
            @solution = {sid: sid, }
            @uri = "/Assistants/#{@solution[:sid]}"

            # Dependents
            @field_types = nil
            @tasks = nil
            @model_builds = nil
            @queries = nil
            @assistant_fallback_actions = nil
            @assistant_initiation_actions = nil
            @dialogues = nil
            @style_sheet = nil
          end

          ##
          # Fetch a AssistantInstance
          # @return [AssistantInstance] Fetched AssistantInstance
          def fetch
            params = Twilio::Values.of({})

            payload = @version.fetch(
                'GET',
                @uri,
                params,
            )

            AssistantInstance.new(@version, payload, sid: @solution[:sid], )
          end

          ##
          # Update the AssistantInstance
          # @param [String] friendly_name A text description for the Assistant. It is
          #   non-unique and can up to 255 characters long.
          # @param [Boolean] log_queries A boolean that specifies whether queries should be
          #   logged for 30 days further training. If false, no queries will be stored, if
          #   true, queries will be stored for 30 days and deleted thereafter. Defaults to
          #   true if no value is provided.
          # @param [String] unique_name A user-provided string that uniquely identifies this
          #   resource as an alternative to the sid. Unique up to 64 characters long.
          # @param [String] callback_url A user-provided URL to send event callbacks to.
          # @param [String] callback_events Space-separated list of callback events that
          #   will trigger callbacks.
          # @param [Hash] fallback_actions The JSON actions to be executed when the user's
          #   input is not recognized as matching any Task.
          # @param [Hash] initiation_actions The JSON actions to be executed on inbound
          #   phone calls when the Assistant has to say something first.
          # @param [Hash] style_sheet The JSON object that holds the style sheet for the
          #   assistant
          # @return [AssistantInstance] Updated AssistantInstance
          def update(friendly_name: :unset, log_queries: :unset, unique_name: :unset, callback_url: :unset, callback_events: :unset, fallback_actions: :unset, initiation_actions: :unset, style_sheet: :unset)
            data = Twilio::Values.of({
                'FriendlyName' => friendly_name,
                'LogQueries' => log_queries,
                'UniqueName' => unique_name,
                'CallbackUrl' => callback_url,
                'CallbackEvents' => callback_events,
                'FallbackActions' => Twilio.serialize_object(fallback_actions),
                'InitiationActions' => Twilio.serialize_object(initiation_actions),
                'StyleSheet' => Twilio.serialize_object(style_sheet),
            })

            payload = @version.update(
                'POST',
                @uri,
                data: data,
            )

            AssistantInstance.new(@version, payload, sid: @solution[:sid], )
          end

          ##
          # Deletes the AssistantInstance
          # @return [Boolean] true if delete succeeds, false otherwise
          def delete
            @version.delete('delete', @uri)
          end

          ##
          # Access the field_types
          # @return [FieldTypeList]
          # @return [FieldTypeContext] if sid was passed.
          def field_types(sid=:unset)
            raise ArgumentError, 'sid cannot be nil' if sid.nil?

            if sid != :unset
              return FieldTypeContext.new(@version, @solution[:sid], sid, )
            end

            unless @field_types
              @field_types = FieldTypeList.new(@version, assistant_sid: @solution[:sid], )
            end

            @field_types
          end

          ##
          # Access the tasks
          # @return [TaskList]
          # @return [TaskContext] if sid was passed.
          def tasks(sid=:unset)
            raise ArgumentError, 'sid cannot be nil' if sid.nil?

            if sid != :unset
              return TaskContext.new(@version, @solution[:sid], sid, )
            end

            unless @tasks
              @tasks = TaskList.new(@version, assistant_sid: @solution[:sid], )
            end

            @tasks
          end

          ##
          # Access the model_builds
          # @return [ModelBuildList]
          # @return [ModelBuildContext] if sid was passed.
          def model_builds(sid=:unset)
            raise ArgumentError, 'sid cannot be nil' if sid.nil?

            if sid != :unset
              return ModelBuildContext.new(@version, @solution[:sid], sid, )
            end

            unless @model_builds
              @model_builds = ModelBuildList.new(@version, assistant_sid: @solution[:sid], )
            end

            @model_builds
          end

          ##
          # Access the queries
          # @return [QueryList]
          # @return [QueryContext] if sid was passed.
          def queries(sid=:unset)
            raise ArgumentError, 'sid cannot be nil' if sid.nil?

            if sid != :unset
              return QueryContext.new(@version, @solution[:sid], sid, )
            end

            unless @queries
              @queries = QueryList.new(@version, assistant_sid: @solution[:sid], )
            end

            @queries
          end

          ##
          # Access the assistant_fallback_actions
          # @return [AssistantFallbackActionsList]
          # @return [AssistantFallbackActionsContext]
          def assistant_fallback_actions
            AssistantFallbackActionsContext.new(@version, @solution[:sid], )
          end

          ##
          # Access the assistant_initiation_actions
          # @return [AssistantInitiationActionsList]
          # @return [AssistantInitiationActionsContext]
          def assistant_initiation_actions
            AssistantInitiationActionsContext.new(@version, @solution[:sid], )
          end

          ##
          # Access the dialogues
          # @return [DialogueList]
          # @return [DialogueContext] if sid was passed.
          def dialogues(sid=:unset)
            raise ArgumentError, 'sid cannot be nil' if sid.nil?

            if sid != :unset
              return DialogueContext.new(@version, @solution[:sid], sid, )
            end

            unless @dialogues
              @dialogues = DialogueList.new(@version, assistant_sid: @solution[:sid], )
            end

            @dialogues
          end

          ##
          # Access the style_sheet
          # @return [StyleSheetList]
          # @return [StyleSheetContext]
          def style_sheet
            StyleSheetContext.new(@version, @solution[:sid], )
          end

          ##
          # Provide a user friendly representation
          def to_s
            context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
            "#<Twilio.Preview.Understand.AssistantContext #{context}>"
          end

          ##
          # Provide a detailed, user friendly representation
          def inspect
            context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
            "#<Twilio.Preview.Understand.AssistantContext #{context}>"
          end
        end

        ##
        # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
        class AssistantInstance < InstanceResource
          ##
          # Initialize the AssistantInstance
          # @param [Version] version Version that contains the resource
          # @param [Hash] payload payload that contains response from Twilio
          # @param [String] sid A 34 character string that uniquely identifies this
          #   resource.
          # @return [AssistantInstance] AssistantInstance
          def initialize(version, payload, sid: nil)
            super(version)

            # Marshaled Properties
            @properties = {
                'account_sid' => payload['account_sid'],
                'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
                'friendly_name' => payload['friendly_name'],
                'latest_model_build_sid' => payload['latest_model_build_sid'],
                'links' => payload['links'],
                'log_queries' => payload['log_queries'],
                'sid' => payload['sid'],
                'unique_name' => payload['unique_name'],
                'url' => payload['url'],
                'callback_url' => payload['callback_url'],
                'callback_events' => payload['callback_events'],
            }

            # Context
            @instance_context = nil
            @params = {'sid' => sid || @properties['sid'], }
          end

          ##
          # Generate an instance context for the instance, the context is capable of
          # performing various actions.  All instance actions are proxied to the context
          # @return [AssistantContext] AssistantContext for this AssistantInstance
          def context
            unless @instance_context
              @instance_context = AssistantContext.new(@version, @params['sid'], )
            end
            @instance_context
          end

          ##
          # @return [String] The unique ID of the Account that created this Assistant.
          def account_sid
            @properties['account_sid']
          end

          ##
          # @return [Time] The date that this resource was created
          def date_created
            @properties['date_created']
          end

          ##
          # @return [Time] The date that this resource was last updated
          def date_updated
            @properties['date_updated']
          end

          ##
          # @return [String] A text description for the Assistant. It is non-unique and can up to 255 characters long.
          def friendly_name
            @properties['friendly_name']
          end

          ##
          # @return [String] The unique ID (Sid) of the latest model build. Null if no model has been built.
          def latest_model_build_sid
            @properties['latest_model_build_sid']
          end

          ##
          # @return [String] The links
          def links
            @properties['links']
          end

          ##
          # @return [Boolean] A boolean that specifies whether queries should be logged for 30 days further training. If false, no queries will be stored, if true, queries will be stored for 30 days and deleted thereafter.
          def log_queries
            @properties['log_queries']
          end

          ##
          # @return [String] A 34 character string that uniquely identifies this resource.
          def sid
            @properties['sid']
          end

          ##
          # @return [String] A user-provided string that uniquely identifies this resource as an alternative to the sid. You can use the unique name in the URL path. Unique up to 64 characters long.
          def unique_name
            @properties['unique_name']
          end

          ##
          # @return [String] The url
          def url
            @properties['url']
          end

          ##
          # @return [String] A user-provided URL to send event callbacks to.
          def callback_url
            @properties['callback_url']
          end

          ##
          # @return [String] Space-separated list of callback events that will trigger callbacks.
          def callback_events
            @properties['callback_events']
          end

          ##
          # Fetch a AssistantInstance
          # @return [AssistantInstance] Fetched AssistantInstance
          def fetch
            context.fetch
          end

          ##
          # Update the AssistantInstance
          # @param [String] friendly_name A text description for the Assistant. It is
          #   non-unique and can up to 255 characters long.
          # @param [Boolean] log_queries A boolean that specifies whether queries should be
          #   logged for 30 days further training. If false, no queries will be stored, if
          #   true, queries will be stored for 30 days and deleted thereafter. Defaults to
          #   true if no value is provided.
          # @param [String] unique_name A user-provided string that uniquely identifies this
          #   resource as an alternative to the sid. Unique up to 64 characters long.
          # @param [String] callback_url A user-provided URL to send event callbacks to.
          # @param [String] callback_events Space-separated list of callback events that
          #   will trigger callbacks.
          # @param [Hash] fallback_actions The JSON actions to be executed when the user's
          #   input is not recognized as matching any Task.
          # @param [Hash] initiation_actions The JSON actions to be executed on inbound
          #   phone calls when the Assistant has to say something first.
          # @param [Hash] style_sheet The JSON object that holds the style sheet for the
          #   assistant
          # @return [AssistantInstance] Updated AssistantInstance
          def update(friendly_name: :unset, log_queries: :unset, unique_name: :unset, callback_url: :unset, callback_events: :unset, fallback_actions: :unset, initiation_actions: :unset, style_sheet: :unset)
            context.update(
                friendly_name: friendly_name,
                log_queries: log_queries,
                unique_name: unique_name,
                callback_url: callback_url,
                callback_events: callback_events,
                fallback_actions: fallback_actions,
                initiation_actions: initiation_actions,
                style_sheet: style_sheet,
            )
          end

          ##
          # Deletes the AssistantInstance
          # @return [Boolean] true if delete succeeds, false otherwise
          def delete
            context.delete
          end

          ##
          # Access the field_types
          # @return [field_types] field_types
          def field_types
            context.field_types
          end

          ##
          # Access the tasks
          # @return [tasks] tasks
          def tasks
            context.tasks
          end

          ##
          # Access the model_builds
          # @return [model_builds] model_builds
          def model_builds
            context.model_builds
          end

          ##
          # Access the queries
          # @return [queries] queries
          def queries
            context.queries
          end

          ##
          # Access the assistant_fallback_actions
          # @return [assistant_fallback_actions] assistant_fallback_actions
          def assistant_fallback_actions
            context.assistant_fallback_actions
          end

          ##
          # Access the assistant_initiation_actions
          # @return [assistant_initiation_actions] assistant_initiation_actions
          def assistant_initiation_actions
            context.assistant_initiation_actions
          end

          ##
          # Access the dialogues
          # @return [dialogues] dialogues
          def dialogues
            context.dialogues
          end

          ##
          # Access the style_sheet
          # @return [style_sheet] style_sheet
          def style_sheet
            context.style_sheet
          end

          ##
          # Provide a user friendly representation
          def to_s
            values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
            "<Twilio.Preview.Understand.AssistantInstance #{values}>"
          end

          ##
          # Provide a detailed, user friendly representation
          def inspect
            values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
            "<Twilio.Preview.Understand.AssistantInstance #{values}>"
          end
        end
      end
    end
  end
end
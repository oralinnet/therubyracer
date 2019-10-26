##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class Sync < Domain
      class V1 < Version
        class ServiceContext < InstanceContext
          ##
          # PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
          class SyncStreamList < ListResource
            ##
            # Initialize the SyncStreamList
            # @param [Version] version Version that contains the resource
            # @param [String] service_sid The SID of the [Sync
            #   Service](https://www.twilio.com/docs/sync/api/service) the resource is
            #   associated with.
            # @return [SyncStreamList] SyncStreamList
            def initialize(version, service_sid: nil)
              super(version)

              # Path Solution
              @solution = {service_sid: service_sid}
              @uri = "/Services/#{@solution[:service_sid]}/Streams"
            end

            ##
            # Retrieve a single page of SyncStreamInstance records from the API.
            # Request is executed immediately.
            # @param [String] unique_name An application-defined string that uniquely
            #   identifies the resource. This value must be unique within its Service and it can
            #   be up to 320 characters long. The `unique_name` value can be used as an
            #   alternative to the `sid` in the URL path to address the resource.
            # @param [String] ttl How long, in seconds, before the Stream expires and is
            #   deleted (time-to-live). Can be an integer from 0 to 31,536,000 (1 year). The
            #   default value is `0`, which means the Stream does not expire. The Stream will be
            #   deleted automatically after it expires, but there can be a delay between the
            #   expiration time and the resources's deletion.
            # @return [SyncStreamInstance] Newly created SyncStreamInstance
            def create(unique_name: :unset, ttl: :unset)
              data = Twilio::Values.of({'UniqueName' => unique_name, 'Ttl' => ttl, })

              payload = @version.create(
                  'POST',
                  @uri,
                  data: data
              )

              SyncStreamInstance.new(@version, payload, service_sid: @solution[:service_sid], )
            end

            ##
            # Lists SyncStreamInstance records from the API as a list.
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
            # Streams SyncStreamInstance records from the API as an Enumerable.
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
            # When passed a block, yields SyncStreamInstance records from the API.
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
            # Retrieve a single page of SyncStreamInstance records from the API.
            # Request is executed immediately.
            # @param [String] page_token PageToken provided by the API
            # @param [Integer] page_number Page Number, this value is simply for client state
            # @param [Integer] page_size Number of records to return, defaults to 50
            # @return [Page] Page of SyncStreamInstance
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
              SyncStreamPage.new(@version, response, @solution)
            end

            ##
            # Retrieve a single page of SyncStreamInstance records from the API.
            # Request is executed immediately.
            # @param [String] target_url API-generated URL for the requested results page
            # @return [Page] Page of SyncStreamInstance
            def get_page(target_url)
              response = @version.domain.request(
                  'GET',
                  target_url
              )
              SyncStreamPage.new(@version, response, @solution)
            end

            ##
            # Provide a user friendly representation
            def to_s
              '#<Twilio.Sync.V1.SyncStreamList>'
            end
          end

          ##
          # PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
          class SyncStreamPage < Page
            ##
            # Initialize the SyncStreamPage
            # @param [Version] version Version that contains the resource
            # @param [Response] response Response from the API
            # @param [Hash] solution Path solution for the resource
            # @return [SyncStreamPage] SyncStreamPage
            def initialize(version, response, solution)
              super(version, response)

              # Path Solution
              @solution = solution
            end

            ##
            # Build an instance of SyncStreamInstance
            # @param [Hash] payload Payload response from the API
            # @return [SyncStreamInstance] SyncStreamInstance
            def get_instance(payload)
              SyncStreamInstance.new(@version, payload, service_sid: @solution[:service_sid], )
            end

            ##
            # Provide a user friendly representation
            def to_s
              '<Twilio.Sync.V1.SyncStreamPage>'
            end
          end

          ##
          # PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
          class SyncStreamContext < InstanceContext
            ##
            # Initialize the SyncStreamContext
            # @param [Version] version Version that contains the resource
            # @param [String] service_sid The SID of the [Sync
            #   Service](https://www.twilio.com/docs/sync/api/service) with the Sync Stream
            #   resource to fetch.
            # @param [String] sid The SID of the Stream resource to fetch.
            # @return [SyncStreamContext] SyncStreamContext
            def initialize(version, service_sid, sid)
              super(version)

              # Path Solution
              @solution = {service_sid: service_sid, sid: sid, }
              @uri = "/Services/#{@solution[:service_sid]}/Streams/#{@solution[:sid]}"

              # Dependents
              @stream_messages = nil
            end

            ##
            # Fetch a SyncStreamInstance
            # @return [SyncStreamInstance] Fetched SyncStreamInstance
            def fetch
              params = Twilio::Values.of({})

              payload = @version.fetch(
                  'GET',
                  @uri,
                  params,
              )

              SyncStreamInstance.new(
                  @version,
                  payload,
                  service_sid: @solution[:service_sid],
                  sid: @solution[:sid],
              )
            end

            ##
            # Deletes the SyncStreamInstance
            # @return [Boolean] true if delete succeeds, false otherwise
            def delete
              @version.delete('delete', @uri)
            end

            ##
            # Update the SyncStreamInstance
            # @param [String] ttl How long, in seconds, before the Stream expires and is
            #   deleted (time-to-live). Can be an integer from 0 to 31,536,000 (1 year). The
            #   default value is `0`, which means the Stream does not expire. The Stream will be
            #   deleted automatically after it expires, but there can be a delay between the
            #   expiration time and the resources's deletion.
            # @return [SyncStreamInstance] Updated SyncStreamInstance
            def update(ttl: :unset)
              data = Twilio::Values.of({'Ttl' => ttl, })

              payload = @version.update(
                  'POST',
                  @uri,
                  data: data,
              )

              SyncStreamInstance.new(
                  @version,
                  payload,
                  service_sid: @solution[:service_sid],
                  sid: @solution[:sid],
              )
            end

            ##
            # Access the stream_messages
            # @return [StreamMessageList]
            # @return [StreamMessageContext]
            def stream_messages
              unless @stream_messages
                @stream_messages = StreamMessageList.new(
                    @version,
                    service_sid: @solution[:service_sid],
                    stream_sid: @solution[:sid],
                )
              end

              @stream_messages
            end

            ##
            # Provide a user friendly representation
            def to_s
              context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
              "#<Twilio.Sync.V1.SyncStreamContext #{context}>"
            end

            ##
            # Provide a detailed, user friendly representation
            def inspect
              context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
              "#<Twilio.Sync.V1.SyncStreamContext #{context}>"
            end
          end

          ##
          # PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
          class SyncStreamInstance < InstanceResource
            ##
            # Initialize the SyncStreamInstance
            # @param [Version] version Version that contains the resource
            # @param [Hash] payload payload that contains response from Twilio
            # @param [String] service_sid The SID of the [Sync
            #   Service](https://www.twilio.com/docs/sync/api/service) the resource is
            #   associated with.
            # @param [String] sid The SID of the Stream resource to fetch.
            # @return [SyncStreamInstance] SyncStreamInstance
            def initialize(version, payload, service_sid: nil, sid: nil)
              super(version)

              # Marshaled Properties
              @properties = {
                  'sid' => payload['sid'],
                  'unique_name' => payload['unique_name'],
                  'account_sid' => payload['account_sid'],
                  'service_sid' => payload['service_sid'],
                  'url' => payload['url'],
                  'links' => payload['links'],
                  'date_expires' => Twilio.deserialize_iso8601_datetime(payload['date_expires']),
                  'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                  'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
                  'created_by' => payload['created_by'],
              }

              # Context
              @instance_context = nil
              @params = {'service_sid' => service_sid, 'sid' => sid || @properties['sid'], }
            end

            ##
            # Generate an instance context for the instance, the context is capable of
            # performing various actions.  All instance actions are proxied to the context
            # @return [SyncStreamContext] SyncStreamContext for this SyncStreamInstance
            def context
              unless @instance_context
                @instance_context = SyncStreamContext.new(@version, @params['service_sid'], @params['sid'], )
              end
              @instance_context
            end

            ##
            # @return [String] The unique string that identifies the resource
            def sid
              @properties['sid']
            end

            ##
            # @return [String] An application-defined string that uniquely identifies the resource
            def unique_name
              @properties['unique_name']
            end

            ##
            # @return [String] The SID of the Account that created the resource
            def account_sid
              @properties['account_sid']
            end

            ##
            # @return [String] The SID of the Sync Service that the resource is associated with
            def service_sid
              @properties['service_sid']
            end

            ##
            # @return [String] The absolute URL of the Message Stream resource
            def url
              @properties['url']
            end

            ##
            # @return [String] The URLs of the Stream's nested resources
            def links
              @properties['links']
            end

            ##
            # @return [Time] The ISO 8601 date and time in GMT when the Message Stream expires
            def date_expires
              @properties['date_expires']
            end

            ##
            # @return [Time] The ISO 8601 date and time in GMT when the resource was created
            def date_created
              @properties['date_created']
            end

            ##
            # @return [Time] The ISO 8601 date and time in GMT when the resource was last updated
            def date_updated
              @properties['date_updated']
            end

            ##
            # @return [String] The Identity of the Stream's creator
            def created_by
              @properties['created_by']
            end

            ##
            # Fetch a SyncStreamInstance
            # @return [SyncStreamInstance] Fetched SyncStreamInstance
            def fetch
              context.fetch
            end

            ##
            # Deletes the SyncStreamInstance
            # @return [Boolean] true if delete succeeds, false otherwise
            def delete
              context.delete
            end

            ##
            # Update the SyncStreamInstance
            # @param [String] ttl How long, in seconds, before the Stream expires and is
            #   deleted (time-to-live). Can be an integer from 0 to 31,536,000 (1 year). The
            #   default value is `0`, which means the Stream does not expire. The Stream will be
            #   deleted automatically after it expires, but there can be a delay between the
            #   expiration time and the resources's deletion.
            # @return [SyncStreamInstance] Updated SyncStreamInstance
            def update(ttl: :unset)
              context.update(ttl: ttl, )
            end

            ##
            # Access the stream_messages
            # @return [stream_messages] stream_messages
            def stream_messages
              context.stream_messages
            end

            ##
            # Provide a user friendly representation
            def to_s
              values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
              "<Twilio.Sync.V1.SyncStreamInstance #{values}>"
            end

            ##
            # Provide a detailed, user friendly representation
            def inspect
              values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
              "<Twilio.Sync.V1.SyncStreamInstance #{values}>"
            end
          end
        end
      end
    end
  end
end
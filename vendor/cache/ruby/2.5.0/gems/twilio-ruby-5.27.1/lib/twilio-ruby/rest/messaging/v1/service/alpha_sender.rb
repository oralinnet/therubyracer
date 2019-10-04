##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class Messaging < Domain
      class V1 < Version
        class ServiceContext < InstanceContext
          ##
          # PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
          class AlphaSenderList < ListResource
            ##
            # Initialize the AlphaSenderList
            # @param [Version] version Version that contains the resource
            # @param [String] service_sid The SID of the
            #   [Service](https://www.twilio.com/docs/chat/rest/service-resource) the resource
            #   is associated with.
            # @return [AlphaSenderList] AlphaSenderList
            def initialize(version, service_sid: nil)
              super(version)

              # Path Solution
              @solution = {service_sid: service_sid}
              @uri = "/Services/#{@solution[:service_sid]}/AlphaSenders"
            end

            ##
            # Retrieve a single page of AlphaSenderInstance records from the API.
            # Request is executed immediately.
            # @param [String] alpha_sender The Alphanumeric Sender ID string. Can be up to 11
            #   characters long. Valid characters are A-Z, a-z, 0-9, space, and hyphen `-`. This
            #   value cannot contain only numbers.
            # @return [AlphaSenderInstance] Newly created AlphaSenderInstance
            def create(alpha_sender: nil)
              data = Twilio::Values.of({'AlphaSender' => alpha_sender, })

              payload = @version.create(
                  'POST',
                  @uri,
                  data: data
              )

              AlphaSenderInstance.new(@version, payload, service_sid: @solution[:service_sid], )
            end

            ##
            # Lists AlphaSenderInstance records from the API as a list.
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
            # Streams AlphaSenderInstance records from the API as an Enumerable.
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
            # When passed a block, yields AlphaSenderInstance records from the API.
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
            # Retrieve a single page of AlphaSenderInstance records from the API.
            # Request is executed immediately.
            # @param [String] page_token PageToken provided by the API
            # @param [Integer] page_number Page Number, this value is simply for client state
            # @param [Integer] page_size Number of records to return, defaults to 50
            # @return [Page] Page of AlphaSenderInstance
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
              AlphaSenderPage.new(@version, response, @solution)
            end

            ##
            # Retrieve a single page of AlphaSenderInstance records from the API.
            # Request is executed immediately.
            # @param [String] target_url API-generated URL for the requested results page
            # @return [Page] Page of AlphaSenderInstance
            def get_page(target_url)
              response = @version.domain.request(
                  'GET',
                  target_url
              )
              AlphaSenderPage.new(@version, response, @solution)
            end

            ##
            # Provide a user friendly representation
            def to_s
              '#<Twilio.Messaging.V1.AlphaSenderList>'
            end
          end

          ##
          # PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
          class AlphaSenderPage < Page
            ##
            # Initialize the AlphaSenderPage
            # @param [Version] version Version that contains the resource
            # @param [Response] response Response from the API
            # @param [Hash] solution Path solution for the resource
            # @return [AlphaSenderPage] AlphaSenderPage
            def initialize(version, response, solution)
              super(version, response)

              # Path Solution
              @solution = solution
            end

            ##
            # Build an instance of AlphaSenderInstance
            # @param [Hash] payload Payload response from the API
            # @return [AlphaSenderInstance] AlphaSenderInstance
            def get_instance(payload)
              AlphaSenderInstance.new(@version, payload, service_sid: @solution[:service_sid], )
            end

            ##
            # Provide a user friendly representation
            def to_s
              '<Twilio.Messaging.V1.AlphaSenderPage>'
            end
          end

          ##
          # PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
          class AlphaSenderContext < InstanceContext
            ##
            # Initialize the AlphaSenderContext
            # @param [Version] version Version that contains the resource
            # @param [String] service_sid The SID of the
            #   [Service](https://www.twilio.com/docs/chat/rest/service-resource) to fetch the
            #   resource from.
            # @param [String] sid The SID of the AlphaSender resource to fetch.
            # @return [AlphaSenderContext] AlphaSenderContext
            def initialize(version, service_sid, sid)
              super(version)

              # Path Solution
              @solution = {service_sid: service_sid, sid: sid, }
              @uri = "/Services/#{@solution[:service_sid]}/AlphaSenders/#{@solution[:sid]}"
            end

            ##
            # Fetch a AlphaSenderInstance
            # @return [AlphaSenderInstance] Fetched AlphaSenderInstance
            def fetch
              params = Twilio::Values.of({})

              payload = @version.fetch(
                  'GET',
                  @uri,
                  params,
              )

              AlphaSenderInstance.new(
                  @version,
                  payload,
                  service_sid: @solution[:service_sid],
                  sid: @solution[:sid],
              )
            end

            ##
            # Deletes the AlphaSenderInstance
            # @return [Boolean] true if delete succeeds, false otherwise
            def delete
              @version.delete('delete', @uri)
            end

            ##
            # Provide a user friendly representation
            def to_s
              context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
              "#<Twilio.Messaging.V1.AlphaSenderContext #{context}>"
            end

            ##
            # Provide a detailed, user friendly representation
            def inspect
              context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
              "#<Twilio.Messaging.V1.AlphaSenderContext #{context}>"
            end
          end

          ##
          # PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
          class AlphaSenderInstance < InstanceResource
            ##
            # Initialize the AlphaSenderInstance
            # @param [Version] version Version that contains the resource
            # @param [Hash] payload payload that contains response from Twilio
            # @param [String] service_sid The SID of the
            #   [Service](https://www.twilio.com/docs/chat/rest/service-resource) the resource
            #   is associated with.
            # @param [String] sid The SID of the AlphaSender resource to fetch.
            # @return [AlphaSenderInstance] AlphaSenderInstance
            def initialize(version, payload, service_sid: nil, sid: nil)
              super(version)

              # Marshaled Properties
              @properties = {
                  'sid' => payload['sid'],
                  'account_sid' => payload['account_sid'],
                  'service_sid' => payload['service_sid'],
                  'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                  'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
                  'alpha_sender' => payload['alpha_sender'],
                  'capabilities' => payload['capabilities'],
                  'url' => payload['url'],
              }

              # Context
              @instance_context = nil
              @params = {'service_sid' => service_sid, 'sid' => sid || @properties['sid'], }
            end

            ##
            # Generate an instance context for the instance, the context is capable of
            # performing various actions.  All instance actions are proxied to the context
            # @return [AlphaSenderContext] AlphaSenderContext for this AlphaSenderInstance
            def context
              unless @instance_context
                @instance_context = AlphaSenderContext.new(@version, @params['service_sid'], @params['sid'], )
              end
              @instance_context
            end

            ##
            # @return [String] The unique string that identifies the resource
            def sid
              @properties['sid']
            end

            ##
            # @return [String] The SID of the Account that created the resource
            def account_sid
              @properties['account_sid']
            end

            ##
            # @return [String] The SID of the Service that the resource is associated with
            def service_sid
              @properties['service_sid']
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
            # @return [String] The Alphanumeric Sender ID string
            def alpha_sender
              @properties['alpha_sender']
            end

            ##
            # @return [Hash] An array of values that describe whether the number can receive calls or messages
            def capabilities
              @properties['capabilities']
            end

            ##
            # @return [String] The absolute URL of the AlphaSender resource
            def url
              @properties['url']
            end

            ##
            # Fetch a AlphaSenderInstance
            # @return [AlphaSenderInstance] Fetched AlphaSenderInstance
            def fetch
              context.fetch
            end

            ##
            # Deletes the AlphaSenderInstance
            # @return [Boolean] true if delete succeeds, false otherwise
            def delete
              context.delete
            end

            ##
            # Provide a user friendly representation
            def to_s
              values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
              "<Twilio.Messaging.V1.AlphaSenderInstance #{values}>"
            end

            ##
            # Provide a detailed, user friendly representation
            def inspect
              values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
              "<Twilio.Messaging.V1.AlphaSenderInstance #{values}>"
            end
          end
        end
      end
    end
  end
end
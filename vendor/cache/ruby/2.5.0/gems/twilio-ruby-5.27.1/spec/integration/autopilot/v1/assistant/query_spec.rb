##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Query' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.autopilot.v1.assistants('UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                          .queries('UHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://autopilot.twilio.com/v1/Assistants/UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Queries/UHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "language": "language",
          "date_created": "2015-07-30T20:00:00Z",
          "model_build_sid": "UGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "query": "query",
          "date_updated": "2015-07-30T20:00:00Z",
          "status": "status",
          "sample_sid": "UFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "assistant_sid": "UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "results": {
              "task": {
                  "name": "name",
                  "task_sid": "UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "confidence": 0.9
              },
              "fields": [
                  {
                      "name": "name",
                      "value": "value",
                      "type": "type"
                  }
              ]
          },
          "url": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queries/UHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "sid": "UHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "source_channel": "voice"
      }
      ]
    ))

    actual = @client.autopilot.v1.assistants('UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                 .queries('UHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.autopilot.v1.assistants('UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                          .queries.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://autopilot.twilio.com/v1/Assistants/UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Queries',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "queries": [],
          "meta": {
              "previous_page_url": null,
              "next_page_url": null,
              "first_page_url": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queries?Status=status&ModelBuild=UGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&Language=language&PageSize=50&Page=0",
              "page": 0,
              "key": "queries",
              "url": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queries?Status=status&ModelBuild=UGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&Language=language&PageSize=50&Page=0",
              "page_size": 50
          }
      }
      ]
    ))

    actual = @client.autopilot.v1.assistants('UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                 .queries.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "queries": [
              {
                  "language": "language",
                  "date_created": "2015-07-30T20:00:00Z",
                  "model_build_sid": "UGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "query": "query",
                  "date_updated": "2015-07-30T20:00:00Z",
                  "status": "status",
                  "sample_sid": "UFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "assistant_sid": "UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "results": {
                      "task": {
                          "name": "name",
                          "task_sid": "UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                          "confidence": 0.9
                      },
                      "fields": [
                          {
                              "name": "name",
                              "value": "value",
                              "type": "type"
                          }
                      ]
                  },
                  "url": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queries/UHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "sid": "UHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "source_channel": null
              }
          ],
          "meta": {
              "previous_page_url": null,
              "next_page_url": null,
              "first_page_url": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queries?Status=status&ModelBuild=UGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&Language=language&PageSize=50&Page=0",
              "page": 0,
              "key": "queries",
              "url": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queries?Status=status&ModelBuild=UGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&Language=language&PageSize=50&Page=0",
              "page_size": 50
          }
      }
      ]
    ))

    actual = @client.autopilot.v1.assistants('UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                 .queries.list()

    expect(actual).to_not eq(nil)
  end

  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.autopilot.v1.assistants('UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                          .queries.create(language: 'language', query: 'query')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'Language' => 'language', 'Query' => 'query', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://autopilot.twilio.com/v1/Assistants/UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Queries',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "language": "language",
          "date_created": "2015-07-30T20:00:00Z",
          "model_build_sid": "UGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "query": "query",
          "date_updated": "2015-07-30T20:00:00Z",
          "status": "status",
          "sample_sid": "UFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "assistant_sid": "UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "results": {
              "task": {
                  "name": "name",
                  "task_sid": "UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "confidence": 0.9
              },
              "fields": [
                  {
                      "name": "name",
                      "value": "value",
                      "type": "type"
                  }
              ]
          },
          "url": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queries/UHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "sid": "UHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "source_channel": "voice"
      }
      ]
    ))

    actual = @client.autopilot.v1.assistants('UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                 .queries.create(language: 'language', query: 'query')

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.autopilot.v1.assistants('UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                          .queries('UHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://autopilot.twilio.com/v1/Assistants/UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Queries/UHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "language": "language",
          "date_created": "2015-07-30T20:00:00Z",
          "model_build_sid": "UGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "query": "query",
          "date_updated": "2015-07-30T20:00:00Z",
          "status": "status",
          "sample_sid": "UFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "assistant_sid": "UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "results": {
              "task": {
                  "name": "name",
                  "task_sid": "UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "confidence": 0.9
              },
              "fields": [
                  {
                      "name": "name",
                      "value": "value",
                      "type": "type"
                  }
              ]
          },
          "url": "https://autopilot.twilio.com/v1/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queries/UHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "sid": "UHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "source_channel": "sms"
      }
      ]
    ))

    actual = @client.autopilot.v1.assistants('UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                 .queries('UHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.autopilot.v1.assistants('UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                          .queries('UHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://autopilot.twilio.com/v1/Assistants/UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Queries/UHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.autopilot.v1.assistants('UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                 .queries('UHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()

    expect(actual).to eq(true)
  end
end
##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Conference' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Conferences/CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.json',
    ))).to eq(true)
  end

  it "receives fetch_valid_mixer_zone responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "api_version": "2010-04-01",
          "date_created": "Fri, 18 Feb 2011 19:26:50 +0000",
          "date_updated": "Fri, 18 Feb 2011 19:27:33 +0000",
          "friendly_name": "AHH YEAH",
          "sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "region": "us1",
          "status": "completed",
          "subresource_uris": {
              "participants": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants.json",
              "recordings": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings.json"
          },
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "receives fetch_valid_region_in_progress responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "api_version": "2010-04-01",
          "date_created": "Fri, 18 Feb 2011 19:26:50 +0000",
          "date_updated": "Fri, 18 Feb 2011 19:27:33 +0000",
          "friendly_name": "AHH YEAH",
          "sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "region": "au1",
          "status": "in-progress",
          "subresource_uris": {
              "participants": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants.json",
              "recordings": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings.json"
          },
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "receives fetch_without_mixer_zone_integer_status responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "api_version": "2010-04-01",
          "date_created": "Fri, 18 Feb 2011 19:26:50 +0000",
          "date_updated": "Fri, 18 Feb 2011 19:27:33 +0000",
          "friendly_name": "AHH YEAH",
          "sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "region": "us1",
          "status": "completed",
          "subresource_uris": {
              "participants": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants.json",
              "recordings": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings.json"
          },
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "receives fetch_unknown_mixer_zone_init_integer_status responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "api_version": "2010-04-01",
          "date_created": "Fri, 18 Feb 2011 19:26:50 +0000",
          "date_updated": "Fri, 18 Feb 2011 19:27:33 +0000",
          "friendly_name": "AHH YEAH",
          "sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "region": "unknown",
          "status": "init",
          "subresource_uris": {
              "participants": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants.json",
              "recordings": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings.json"
          },
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .conferences.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Conferences.json',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "conferences": [],
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences.json?Status=init&DateUpdated%3E=2018-11-12&DateUpdated%3C=2018-11-11&DateCreated=2008-01-03&FriendlyName=friendly_name&DateUpdated=2018-11-13&DateCreated%3C=2008-01-01&DateCreated%3E=2008-01-02&PageSize=50&Page=0",
          "next_page_uri": null,
          "previous_page_uri": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences.json?Status=init&DateUpdated%3E=2018-11-12&DateUpdated%3C=2018-11-11&DateCreated=2008-01-03&FriendlyName=friendly_name&DateUpdated=2018-11-13&DateCreated%3C=2008-01-01&DateCreated%3E=2008-01-02&PageSize=50&Page=0",
          "page": 0,
          "page_size": 50,
          "start": 0,
          "end": 0
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "conferences": [
              {
                  "status": "in-progress",
                  "region": "jp1",
                  "sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "date_updated": "Sat, 03 Jan 2015 11:23:45 +0000",
                  "date_created": "Sat, 03 Jan 2015 11:23:45 +0000",
                  "subresource_uris": {
                      "participants": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants.json",
                      "recordings": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings.json"
                  },
                  "friendly_name": "friendly_name",
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
                  "api_version": "2010-04-01",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              },
              {
                  "status": "in-progress",
                  "region": "unknown",
                  "sid": "CFbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb",
                  "date_updated": "Fri, 02 Jan 2015 11:23:45 +0000",
                  "date_created": "Fri, 02 Jan 2015 11:23:45 +0000",
                  "subresource_uris": {
                      "participants": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb/Participants.json",
                      "recordings": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb/Recordings.json"
                  },
                  "friendly_name": "friendly_name",
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb.json",
                  "api_version": "2010-04-01",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              },
              {
                  "status": "in-progress",
                  "region": "us1",
                  "sid": "CFcccccccccccccccccccccccccccccccc",
                  "date_updated": "Thu, 01 Jan 2015 11:23:45 +0000",
                  "date_created": "Thu, 01 Jan 2015 11:23:45 +0000",
                  "subresource_uris": {
                      "participants": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFcccccccccccccccccccccccccccccccc/Participants.json",
                      "recordings": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFcccccccccccccccccccccccccccccccc/Recordings.json"
                  },
                  "friendly_name": "friendly_name",
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFcccccccccccccccccccccccccccccccc.json",
                  "api_version": "2010-04-01",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              }
          ],
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences.json?Status=in-progress&DateUpdated%3E=2018-11-12&DateUpdated%3C=2018-11-11&DateCreated=2008-01-03&FriendlyName=friendly_name&DateUpdated=2018-11-13&DateCreated%3C=2008-01-01&DateCreated%3E=2008-01-02&PageSize=3&Page=0",
          "next_page_uri": null,
          "previous_page_uri": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences.json?Status=in-progress&DateUpdated%3E=2018-11-12&DateUpdated%3C=2018-11-11&DateCreated=2008-01-03&FriendlyName=friendly_name&DateUpdated=2018-11-13&DateCreated%3C=2008-01-01&DateCreated%3E=2008-01-02&PageSize=3&Page=0",
          "page": 0,
          "page_size": 3,
          "start": 0,
          "end": 2
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_next responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "conferences": [
              {
                  "status": "in-progress",
                  "region": "jp1",
                  "sid": "CFdddddddddddddddddddddddddddddddd",
                  "date_updated": "Thu, 01 Jan 2015 10:23:45 +0000",
                  "date_created": "Thu, 01 Jan 2015 10:23:45 +0000",
                  "subresource_uris": {
                      "participants": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFdddddddddddddddddddddddddddddddd/Participants.json",
                      "recordings": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFdddddddddddddddddddddddddddddddd/Recordings.json"
                  },
                  "friendly_name": "friendly_name",
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFdddddddddddddddddddddddddddddddd.json",
                  "api_version": "2010-04-01",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              },
              {
                  "status": "in-progress",
                  "region": "unknown",
                  "sid": "CFeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee",
                  "date_updated": "Thu, 01 Jan 2015 09:23:45 +0000",
                  "date_created": "Thu, 01 Jan 2015 09:23:45 +0000",
                  "subresource_uris": {
                      "participants": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee/Participants.json",
                      "recordings": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee/Recordings.json"
                  },
                  "friendly_name": "friendly_name",
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.json",
                  "api_version": "2010-04-01",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              },
              {
                  "status": "in-progress",
                  "region": "us1",
                  "sid": "CFffffffffffffffffffffffffffffffff",
                  "date_updated": "Thu, 01 Jan 2015 08:23:45 +0000",
                  "date_created": "Thu, 01 Jan 2015 08:23:45 +0000",
                  "subresource_uris": {
                      "participants": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFffffffffffffffffffffffffffffffff/Participants.json",
                      "recordings": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFffffffffffffffffffffffffffffffff/Recordings.json"
                  },
                  "friendly_name": "friendly_name",
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFffffffffffffffffffffffffffffffff.json",
                  "api_version": "2010-04-01",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              }
          ],
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences.json?Status=in-progress&DateUpdated%3E=2018-11-12&DateUpdated%3C=2018-11-11&DateCreated=2008-01-03&FriendlyName=friendly_name&DateUpdated=2018-11-13&DateCreated%3C=2008-01-01&DateCreated%3E=2008-01-02&PageSize=3&Page=0",
          "next_page_uri": null,
          "previous_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences.json?Status=in-progress&DateUpdated%3E=2018-11-12&DateUpdated%3C=2018-11-11&DateCreated=2008-01-03&FriendlyName=friendly_name&DateUpdated=2018-11-13&DateCreated%3C=2008-01-01&DateCreated%3E=2008-01-02&PageSize=3&Page=0&PageToken=PBCFdddddddddddddddddddddddddddddddd",
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences.json?Status=in-progress&DateUpdated%3E=2018-11-12&DateUpdated%3C=2018-11-11&DateCreated=2008-01-03&FriendlyName=friendly_name&DateUpdated=2018-11-13&DateCreated%3C=2008-01-01&DateCreated%3E=2008-01-02&PageSize=3&Page=1&PageToken=PACFcccccccccccccccccccccccccccccccc",
          "page": 1,
          "page_size": 3,
          "start": 3,
          "end": 5
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_previous responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "conferences": [
              {
                  "status": "in-progress",
                  "region": "jp1",
                  "sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "date_updated": "Sat, 03 Jan 2015 11:23:45 +0000",
                  "date_created": "Sat, 03 Jan 2015 11:23:45 +0000",
                  "subresource_uris": {
                      "participants": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants.json",
                      "recordings": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings.json"
                  },
                  "friendly_name": "friendly_name",
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
                  "api_version": "2010-04-01",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              },
              {
                  "status": "in-progress",
                  "region": "unknown",
                  "sid": "CFbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb",
                  "date_updated": "Fri, 02 Jan 2015 11:23:45 +0000",
                  "date_created": "Fri, 02 Jan 2015 11:23:45 +0000",
                  "subresource_uris": {
                      "participants": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb/Participants.json",
                      "recordings": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb/Recordings.json"
                  },
                  "friendly_name": "friendly_name",
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb.json",
                  "api_version": "2010-04-01",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              },
              {
                  "status": "in-progress",
                  "region": "us1",
                  "sid": "CFcccccccccccccccccccccccccccccccc",
                  "date_updated": "Thu, 01 Jan 2015 11:23:45 +0000",
                  "date_created": "Thu, 01 Jan 2015 11:23:45 +0000",
                  "subresource_uris": {
                      "participants": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFcccccccccccccccccccccccccccccccc/Participants.json",
                      "recordings": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFcccccccccccccccccccccccccccccccc/Recordings.json"
                  },
                  "friendly_name": "friendly_name",
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFcccccccccccccccccccccccccccccccc.json",
                  "api_version": "2010-04-01",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              }
          ],
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences.json?Status=in-progress&DateUpdated%3E=2018-11-12&DateUpdated%3C=2018-11-11&DateCreated=2008-01-03&FriendlyName=friendly_name&DateUpdated=2018-11-13&DateCreated%3C=2008-01-01&DateCreated%3E=2008-01-02&PageSize=3&Page=0",
          "next_page_uri": null,
          "previous_page_uri": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences.json?Status=in-progress&DateUpdated%3E=2018-11-12&DateUpdated%3C=2018-11-11&DateCreated=2008-01-03&FriendlyName=friendly_name&DateUpdated=2018-11-13&DateCreated%3C=2008-01-01&DateCreated%3E=2008-01-02&PageSize=3&Page=0&PageToken=PBCFdddddddddddddddddddddddddddddddd",
          "page": 0,
          "page_size": 3,
          "start": 0,
          "end": 2
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences.list()

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Conferences/CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.json',
    ))).to eq(true)
  end

  it "receives update_end_conference responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "api_version": "2010-04-01",
          "date_created": "Mon, 22 Aug 2011 20:58:45 +0000",
          "date_updated": "Mon, 22 Aug 2011 20:58:46 +0000",
          "friendly_name": null,
          "region": "us1",
          "sid": "CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "status": "completed",
          "subresource_uris": {
              "participants": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants.json",
              "recordings": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings.json"
          },
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conferences/CFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .conferences('CFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end
end
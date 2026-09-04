require 'spec_helper'

describe NfgRestClient::AccessToken do
  include NfgRestClientStubs

  let(:access_token) { NfgRestClient::AccessToken.new }
  describe "#create" do
    context "when the response is successful" do
      before do
        access_token.userid = "test-user"
        access_token.password = "test-password"
        stub_successful_access_token
        access_token.create
      end

      it "should have a status of 'Success'" do
        expect(access_token.status).to eq("Success")
        expect(access_token.token).to eq("stubbed-access-token")
      end
    end
  end

end

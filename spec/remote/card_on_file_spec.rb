require 'spec_helper'

describe NfgRestClient::CardOnFile  do
  include NfgRestClient::SpecAttributes
  include NfgRestClientStubs

  let(:card_on_file) { NfgRestClient::CardOnFile.new(card_on_file_attributes) }
  describe "#create" do
    before do
      stub_successful_card_on_file
      card_on_file.create
    end

    context "when the response is successful" do
      it "should have a status of 'Success'" do
        expect(card_on_file.status).to eq("Success")
        expect(card_on_file.cardOnFileId).to eq(13338)
      end
    end
  end

end

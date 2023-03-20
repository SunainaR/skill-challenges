require 'track_list'

RSpec.describe TrackList do
  context "When methods called incorrectly" do
    it "returns error for empty track" do
      track_list = TrackList.new
      expect { track_list.add_track("") }.to raise_error "Can't add an empty track."
    end

    it "returns error when trying to view empty listened list" do
      track_list = TrackList.new
      expect { track_list.view_listened_list }.to raise_error "There are no tracks in your listened list. Please use add_track methods."
    end

    it "return error when track being added exists already" do
      track_list = TrackList.new
      track_list.add_track("Track 1")
      expect { track_list.add_track("Track 1") }.to raise_error "This track already exists in your listened list."
    end
  end

  context "When multiple tracks added" do
    it "returns the listened list" do
      track_list = TrackList.new
      track_list.add_track("Track 1")
      track_list.add_track("Track 2")
      result = track_list.view_listened_list
      expect(result).to eq "Track 1, Track 2"
    end

    it "returns the list in the order the user added the tracks" do
      track_list = TrackList.new
      track_list.add_track("Track 2")
      track_list.add_track("Track 1")
      result = track_list.view_listened_list
      expect(result).to eq "Track 2, Track 1"
    end
  end

  context "When track_add method called" do
    it "return a message that the track was added" do
      track_list = TrackList.new
      result = track_list.add_track("Track 1")
      expect(result).to eq "Track 1 added to listened list"
    end
  end
end
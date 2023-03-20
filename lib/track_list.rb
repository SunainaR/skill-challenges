class TrackList
  def initialize()
    @listened_list = []
  end

  def add_track(track) #track is a string
    fail "Can't add an empty track." if track.empty?
    @listened_list << track
    "#{track} added to listened list"
  end

  def view_listened_list
  # returns all the tracks
    if @listened_list.empty?
      fail "There are no tracks in your listened list. Please use add_track methods."
    else
      @listened_list.join(", ")
    end
  end
end
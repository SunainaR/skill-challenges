# [Track List] Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

> As a user   
> So that I can keep track of my music listening    
> I want to add tracks I've listened to and see a list of them.

* Going to assume user only adds one track at a time
* Going to assume they want to return the list as a string to view the list
* Going to assume the listened list will be ordered by when the user added i.e. original order in the array. In reality, would probably sort by/group by date_added, alphabetical, genre etc.
* Going to assume the same track can't be added twice and returns an error if the user tries to add it i.e. unique enforcement on the track name in listened_list 

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
class TrackList
  def initialize()
    @listened_list = []
  end

  def add_track(track) #track is a string
  end

  def view_listened_list
  # returns all the tracks
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# 1
track_list = TrackList.new
track_list.add_track("") 
# => fail "Can't add an empty track."

# 2
track_list = TrackList.new
track_list.add_track("Track 1")
track_list.add_track("Track 2")
track_list.view_listened_list
# => "Track 1, Track 2"

# 3 
track_list = TrackList.new
track_list.view_listened_list
# => fail "There are no tracks in your listened list. Please use add_track methods."

# 4
track_list = TrackList.new
track_list.add_track("Track 2")
track_list.add_track("Track 1")
track_list.view_listened_list
# => "Track 2, Track 1"

# 5
track_list = TrackList.new
track_list.add_track("Track 1")
# => "Track 1 added to listened list"

# 6
track_list = TrackList.new
track_list.add_track("Track 1")
track_list.add_track("Track 1") 
# => fail "This track already exists in your listened list."
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
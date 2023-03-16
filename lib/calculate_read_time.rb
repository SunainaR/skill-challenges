def calculate_read_time(text, wpm)
    array = text.split()
    word_count = array.length
    read_time_in_seconds = ((word_count*60)/wpm.to_f).round
    "Estimated read time in seconds: #{read_time_in_seconds}"
end
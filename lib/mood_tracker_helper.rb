module MoodTracker
  INPUTS = %i[day mood].freeze
  HEADINGS = %i[Day Mood].freeze
  PROMPT = TTY::Prompt.new(active_color: :cyan)
end

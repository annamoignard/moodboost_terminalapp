module MoodTracker
  INPUTS = %i[day mood].freeze
  HEADINGS = %i[day mood].freeze
  PROMPT = TTY::Prompt.new(active_color: :cyan)
end   
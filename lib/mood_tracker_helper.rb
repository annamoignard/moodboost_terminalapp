module MoodTracker
  INPUTS = %i[day mood description].freeze
  HEADINGS = %i[id day mood description].freeze
  PROMPT = TTY::Prompt.new(active_color: :cyan)
end   
require 'solve_time'

class Result < ActiveRecord::Base
  self.table_name = "Results"

  belongs_to :competition, foreign_key: :competitionId

  def to_s(field)
    SolveTime.new(eventId, field, send(field)).clock_format
  end
end

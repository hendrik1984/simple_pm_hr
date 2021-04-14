class Task < ApplicationRecord
  belongs_to :project

  validates :status, inclusion: { in: %w['not-started', 'in-progress', 'complete'].freeze }

  STATUS_OPTIONS = %w[['Not started', 'not-started'], ['In Progress', 'in-progress'], ['Complete', 'complete']].freeze
end

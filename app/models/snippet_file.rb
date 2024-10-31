class SnippetFile < ApplicationRecord
  belongs_to :snippet

  counter_culture :snippet

  validates :title, presence: true, length: { maximum: 100 }
  validates :content, presence: true, length: { maximum: 200000 }
  validates :language, presence: true, inclusion: { in: Editor.languages.keys.map(&:to_s) }
  validates :tabs, numericality: { only_integer: true }, inclusion: { in: [2, 4, 8] }
end

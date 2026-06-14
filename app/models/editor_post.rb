class EditorPost < ApplicationRecord
  belongs_to :editor
  belongs_to :post
end
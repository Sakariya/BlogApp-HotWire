class Blog < ApplicationRecord
  has_rich_text :description
  has_many :comments, dependent: :destroy

  broadcasts
  # broadcasts does the all following things.
  # after_create_commit -> {broadcast_append_to self}
  # after_update_commit -> {broadcast_replace_to self}
  # after_destory_commit -> {broadcast_remove_to self}
end

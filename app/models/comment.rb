class Comment < ApplicationRecord
  belongs_to :blog
  has_rich_text :content

  broadcasts_to :blog

  # broadcasts_to does the all following things on blog.
  # after_create_commit -> {broadcast_append_to blog}
  # after_update_commit -> {broadcast_replace_to blog}
  # after_destory_commit -> {broadcast_remove_to blog}
end

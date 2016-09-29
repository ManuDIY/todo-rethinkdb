class Todo
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :content, type: String
  field :done, type: Boolean
  field :completed_at, type: Time

  def done?
    done == true
  end
end

class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    avg_note = subject_item_notes.where(subject_item_id: subject_item)
    if avg_note.empty?
      "0.00"
    else
      '%.2f' % (avg_note.average(:value))
    end
  end
end

module ApplicationHelper

  def rangify_dates(start_date, end_date)
    str = ""
    str = str + start_date.strftime("%B %d, %Y") if start_date.present?
    if start_date && end_date && start_date != end_date
      str = str + " - "
    end
    str = str + end_date.strftime("%B %d, %Y") if (end_date && (start_date != end_date))
  end
end

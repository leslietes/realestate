module ApplicationHelper
  def format_date(date, abbreviated=false)
    return unless date
    date.strftime("%b %d, %Y")
    #date.strftime("#{abbreviated ? '%b' : '%B'} %d, %Y")
  end

  def get_month(date)
    date.strftime("%b")
  end

  def get_day(date)
    date.strftime("%d")
  end
end

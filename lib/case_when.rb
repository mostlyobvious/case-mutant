class CaseWhen
  def call(number)
    case number
    when (0..3)
      'low value'
    when (4..7)
      'medium value'
    when (8..10)
      'high value'
    else
      'invalid value'
    end
  end
end

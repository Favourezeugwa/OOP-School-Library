module Validity
  def if_name(name)
    if name == ''
      put_label('Invalid name')
      return
    end
  end

  def if_age(age)
    if age < 18 || age > 65 || age.nil?
      put_label('Sorry, a teacher must have a valid age')
      return
    end
  end

  def if_specialization(specialization)
    if specialization == ''
      put_label('Invalid specialization')
      return
    end
  end

  def case_parent_permission(parent_permission)
    case parent_permission
    when 'Y'
      true
    when 'N'
      false
    else
      put_label('Invalid entry')
    end
  end
end

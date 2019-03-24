class Passenger < User
  validate :in_allow_age_rage?
  def in_allow_age_rage?
    return errors.add(:dob, 'Can\'t be over 75 years old') if dob.year < Date.today.year - 75
  end
end

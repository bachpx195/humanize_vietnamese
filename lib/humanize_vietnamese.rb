require_relative './humanize_vietnamese/locales/locale.rb'

module HumanizeVietnamese
  SPACER = ', '.freeze

  def humanize_vi
    return HumanizeVietnamese::Locale::UNDEFINED unless is_a? Integer
    return HumanizeVietnamese::Locale::SUB_ONE_GROUPING[0] if zero?
    return HumanizeVietnamese::Locale::INFINITY if to_f.infinite?
    return HumanizeVietnamese::Locale::UNDEFINE unless positive?

    parts = HumanizeVietnamese::Locale.new.humanize_vi(self)
    stringify(parts)
  end

  private

  def stringify(parts)
    parts.reverse.join(SPACER).squeeze(SPACER)
  end
end

class Integer
  include HumanizeVietnamese
end

class Float
  include HumanizeVietnamese
end

class String
  include HumanizeVietnamese
end

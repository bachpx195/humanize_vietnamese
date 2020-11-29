require_relative 'constants/vi'

module HumanizeVietnamese
  SPACE = ' '.freeze
  BILLION_LOTS_INDEX = 3

  class Locale
    def humanize_vi(number)
      iteration = 0
      parts = []
      until number.zero?
        str = ''
        number, remainder = number.divmod(1000)

        if remainder.positive?
          lot = LOTS[iteration] if iteration.positive?
          str = concat_string(SUB_ONE_GROUPING[remainder], lot)

          str = concat_string(add_linked_word(remainder), str) if number.positive?
        elsif iteration.positive? && iteration.modulo(3).zero?
          str = LOTS[BILLION_LOTS_INDEX]
        end

        # Handle single word like 'một tỷ tỷ' with comma
        if !parts.empty? && parts.last.start_with?(LOTS[BILLION_LOTS_INDEX])
          parts[-1] = concat_string(str, parts.last)
        else
          parts << str unless str.empty?
        end

        iteration += 1
      end

      parts
    end

    private

    def add_linked_word(remainder)
      return LINKED_WORDS[0] if remainder < 10
      return LINKED_WORDS[1] if remainder < 100
    end

    def concat_string(str1, str2)
      [str1, str2].join(SPACE).strip
    end
  end
end

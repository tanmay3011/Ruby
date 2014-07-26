class String

  def count_character_by_type
    character_count_hash = Hash.new { |hash, key| hash[key] = 0 }
    chars.each do |character|
      case character
      when '0'..'9'
        character_count_hash[:digits] += 1
      when 'a'..'z'
        character_count_hash[:lowercase_character] += 1
      when 'A'..'Z'
        character_count_hash[:upercase_character] += 1
      else
        character_count_hash[:special_char] += 1
      end
    end
    character_count_hash
  end
end

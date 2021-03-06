module LitaAws
  module ReplyFormatter

    protected

    def format_timeline(array)
      array.map { |d| "#{d[0]} : #{d[1]}" }.join("\n")
    end

    def format_hash_list_with_title(title_key, hash_list)
      lines = []
      hash_list.each do |hash|
        lines << hash[title_key]
        hash.reject { |k, _| k == title_key }.each do |col, v|
          lines << "  #{col}: #{v}"
        end
        lines << '---------------------'
      end
      lines.join("\n")
    end

  end
end

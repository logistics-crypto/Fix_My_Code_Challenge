result = []
ARGV.each do |arg|
    # skip if not integer
    next if arg !~ /^-?[0-9]+$/

    # convert to integer
    i_arg = arg.to_i

    # if the result array is empty or the argument is greater than the last element
    if result.empty? || result.last <= i_arg
        result << i_arg
    else
        # insert the argument at the right position
        result.each_with_index do |val, index|
            if val > i_arg
                result.insert(index, i_arg)
                break
            end
        end
    end
end

puts result

def convert_length(length, from: :m, to: :m)
    units = { m: 1.0, in: 39.37, ft: 3.28 }
    (length / units[from] * units[to]).round(2)
end

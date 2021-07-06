def BAD_convert_hash_syntax(old_syntax)
    old_syntax.gsub(/^(?<space>\s*)(:)(?<left>\w+)(\s*)=>(\s*)(?<right>[^$^\s]+),?$/, '\k<space>\k<left>: \k<right>')
end

def convert_hash_syntax(old_syntax)
    old_syntax.gsub(/:(\w+) *=> */, '\1: ')
end

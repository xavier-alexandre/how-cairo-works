func powerOf(x, n) -> (res):
    jmp powerOf_body if n != 0
    [ap] = 1; ap++
    ret

    powerOf_body:
    [ap] = x; ap++
    [ap] = n - 1; ap++
    call powerOf
    [ap] = x * [ap - 1]; ap++
    ret
end

func main():
    # Call powerOf(4, 8)
    [ap] = 4; ap++
    [ap] = 8; ap++
    call powerOf

    # Make sure that 4^8 is 65536
    [ap - 1] = 65536
    ret
end

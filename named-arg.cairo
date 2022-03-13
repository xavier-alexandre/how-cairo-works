func foo(new_x, y) -> (z, w):
    [ap] = new_x + y; ap++  # z.
    [ap] = new_x * y; ap++  # w.
    ret
end

func main():
    let args = cast(ap, foo.Args*)
    args.x = 4; ap++
    args.y = 5; ap++
    # Check that ap was advanced the correct number of times
    # (this will ensure arguments were not forgotten).
    static_assert args + foo.Args.SIZE == ap
    let foo_ret = call foo
    ret
end

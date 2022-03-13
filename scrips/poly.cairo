func main():
    [ap] = 100; ap++

    [ap] = [fp] * 45; ap++  # Store "45x"
    [ap] = [fp] * [fp]; ap++  # Store "x2"
    [ap] = [fp + 2] * 23; ap++  # Store "23x2"
    [ap] = [fp + 2] * [fp]; ap++  # Store "x3"
    [ap] = 67 + [fp + 1]; ap++  # Store "67 + 45x"
    [ap] = [ap - 1] + [fp + 3]; ap++  # Store "67 + 45x + 23x2"
    [ap] = [ap - 1] + [fp + 4]; ap++  # Store "67 + 45x + 23x2 + x3"
    ret
end

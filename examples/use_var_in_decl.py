def inner():
    global a
    a = a + 2
    print(a)

a = 1
inner()

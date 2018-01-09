def draw_stars(val):
    count = 0
    for x in val:
        if ( isinstance(x, int)):
            print "*" * x
            count += 1
        elif (isinstance(x, str)):
            print x[0][0].lower() * len(x)
            count += 1

x = [4, 6, 1, 3, 5, 7, 25]
y = [4, "Tom", 1, "Michael", 5, 7, "Jimmy Smith"]

draw_stars(x)
draw_stars(y)

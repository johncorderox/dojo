
def find(str, want):
    new_list = []
    for char in str:
        word_list = list(char)
        for x in word_list:
            if ( x == want):
                new_list.append(char)
    print new_list


word_list = ['hello','world','my','name','is','Anna']

find(word_list, "o")

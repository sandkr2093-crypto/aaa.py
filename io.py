class LibraryBook:
    def __init__(s,author,title,issued):
        s.author = author
        s.title = title
        s.__issued = issued
    def show(s):
        print("author is",s.author)
        print("title is",s.title)
        print("issued is",s.__issued)
obj = LibraryBook("Book1.author","Book1.title","Bookissued")
obj.issued = "Book is not issued"
obj.show()

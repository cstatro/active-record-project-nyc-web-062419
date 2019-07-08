def book_available?(title)
    Book.find_by(name: title,status: "in_stock")
end

def next_available(title)
    ###sort by return date and find the one closest to current time. 
end

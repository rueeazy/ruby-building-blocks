arr = [7, 9, 10, 76, 32, 109, 66, 4]

def bubble_sort(arr)
    n = arr.length - 1
    n.times do
    index = (0..arr.length - 1).to_a
    for indx in index 
        x = indx.to_i
        y = x + 1 if x < n
        currentNum = arr[x]
        nextNum = arr[y]
        if currentNum > nextNum
            arr[x] = nextNum
            arr[y] = currentNum
        end
    end
end
        p arr
end

bubble_sort(arr)
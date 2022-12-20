def bubbleSort(arr)
    length = arr.size - 1
    for i in 0..length
        for j in 0..length - i - 1
            if arr[j] > arr[j+1]
                temp = arr[j]
                arr[j]= arr[j+1]
                arr[j+1] = temp
            end
        end
    end
    p arr
end
arr = [99,0,4,3,24,2,5,7,6,3,100]
bubbleSort(arr)
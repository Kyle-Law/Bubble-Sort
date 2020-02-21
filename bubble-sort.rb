#bubble sort without yield
def bubble_sort(array)
    for j in 1..array.length-1 #run array.length-1 times eg.for 5-element array, we run it for 4 times
        loop_until = array.length-j
        for i in 0..loop_until #loop over the array
            if i != array.length-1 # if it's not the last item of the array
                if array[i] > array[i+1] #check if 1st element is bigger than 2nd element
                    array[i], array[i+1] = array[i+1], array[i] #swap them
                end
            end
        end
    end
    array
end

#bubble sort with yield
def bubble_sort_by
end

print bubble_sort([5,4,3,2,1])
puts
print bubble_sort(["tirtha","kyle","heh","haha","ruby","microverse"])



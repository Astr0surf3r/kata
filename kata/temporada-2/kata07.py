import heapq #for best performance for a lot of data

def queue_time(customers, n):
    # Initialize a min-heap with n zeros
    tills = [0] * n
    heapq.heapify(tills)

    for time in customers:
        # Pop the till with the minimum cumulative time
        min_time = heapq.heappop(tills)
        # Add the current customer's time
        heapq.heappush(tills, min_time + time)

    # The total time is the maximum value in tills
    return max(tills)

# Test cases
print(queue_time([], 1)) # 0
print(queue_time([5], 1)) # 5
print(queue_time([2], 5)) # 2
print(queue_time([1,2,3,4,5], 1)) # 15
print(queue_time([10,3,4], 2)) # 10
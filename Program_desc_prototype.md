User sends following information (basic app version):

1. Number of fake clients (How many users should app take) - and time for test (how long should test run) - or number of requests
    - Some apps might need 30-50 parallel clients, and some might need millions
2. List of all requests those clients make

```
{'link','method',data,freq} 

link - Where is request sent
method - What HTTP method is used
data - If we need to send something (could be nil)
freq - Frequency of sending requests (not all requests are bombarded) , could be 0, if we need it only once
```

dfgdfgdgf GET nil 5000
dsfdsfgdf POST {"message":"fghf","userId":6} 5000

3. Randomizer* (Changing freq by some %)
    - Requests will feel more "natural"


Application takes those params and does following:

1. We calculate base request timings
    - Spawn only 1 process, and test all requests (we do this X times, and take average / mean results)
    - With that in mind, user can see if some request is actually slow / bad in the first plalce (it doesn't have to do anything with multiple requests)
2. We spawn other fake clients and start bombarding the app
    - Testing with same number of times, again taking averages / means of all clients
    - Now we can compare these results with base timings
3. We display information to the user
    - Each request is described the following way:
        - Single user:
            - Average: _ ms
            - Mean: _ ms
            - Worst: _ ms
            - Best: _ ms
        - N users:
            - Average: _ ms
            - Mean: _ ms
            - Worst: _ ms
            - Best: _ ms
    
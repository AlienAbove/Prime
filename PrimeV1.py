#Python!
#Prime Number Lister
#Version 1 (Python)
#Version 1.4 (Bash Extention)
#Importing
import time
print("Please Enter Starting Number:")
st = input()
st = int(st)
#Setting Difficulty
print("Please enter desired difficulty (1-5)")
diff = input()
#Timer
print("Would you like to time your run (Y/n)")
timer = input()
#Setting Default End Point
end = (st) + int(500)
#Setting End Point
if diff == "1":
    end = (st) + int(100)
    
elif diff == "2":
    end = (st) + int(250)
     
elif diff == "3":
    end = (st) + int(500)
        
elif diff == "4":
    end = (st) + int(1000)

elif diff == "5":
    end = (st) + int(5000)

print("Listing all Prime numbers between", st, "and", end, ". (Enter OK to continue)")
List = input()
if List == "OK" or List == "ok" or List == "oK" or List == "Ok":
    #Timer Start
    tick = time.perf_counter()
    while st <= end:
        #Setting the Variables
        i = 2
        f = 0
        var = st // 2
        #While loop to divide (st) by all factors up to half of itself
        while i <= var:
            #Setting variables
            var2 = st % i
            if var2 == 0:
                f=1
            i = i + 1
        #Flag test
        if f == 1:
            pass
        else:
            print(st, "Is Prime")
        #Reitterate with st + 1
        st = st + 1
    #Timer end
    tock = time.perf_counter()
    if timer == "Y" or timer == "y":
        print("Completed in", tock - tick, "Seconds")



            

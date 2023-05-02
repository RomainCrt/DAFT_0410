import multiprocessing
def square(x):  
    return x*x

data = [x for x in range(100)

pool = multiprocessing.Pool()
result = pool.map(square, data)
pool.terminate()
pool.join()
print(result)
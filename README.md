# Algorithmic Exercise
## CARROTS
Benjamin Bunny is at Mr. McGregor's vegetable patch. In this vegetable patch are some N juicy and delectable carrots. He wants to bring back as many of these carrots as he possibly could, to share with his cousins Peter, Flopsy, Mopsy and Cotton-tail.

Benjamin Bunny knows that Mr. McGregor will be at his vegetable patch in T time from now. He has with him a magical knapsack that could fit an infinite amount of objects.

Now, about those juicy, delectable carrots in Mr. McGregor's vegetable patch. Since Mr. McGregor is a consummate believer in permaculture farming methods, his carrots are non-uniform in sizes and quality; Benjamin Bunny rates every one of Mr. McGregor's carrots with some arbitrary rating scale of 1 to R. The higher the R[i] value, the better the quality of the i-th carrot.

Although Benjamin Bunny has a magical knapsack with limitless capacity, he is constrained by his own physical capacity and the time required to transport masses of carrots between Mr. McGregor's veggie patch and his den.

Naturally, Benjamin Bunny wants to bring home as many carrots as he possibly could, and maximize on the sum of R[i].

He can make as many trips to the vegetable patch as he can -- it does not matter -- but he is weighed down by time constraint T, because that is when Mr. McGregor tends to his vegetable patch.

Fortunately, Benjamin Bunny is quite a natural at measuring objects by sight. This is handy because he can easily tell by just looking at the i-th carrot, the time cost C[i] of transporting the carrot given its size.

Unfortunately, Benjamin Bunny can't math or algo even if his life depends on it, but he is going to have a brain implant containing a function that will help him out.

Your task in this challenge is to provide the code for Benjamin Bunny's brain implant function.

To formalise, you are given the following input parameters:

An integer T: the total time units (T > 1)
An array of integers C: where C[i] is the time cost associated with the i-th carrot (1 ≤ i ≤ N)
An array of integers R: where R(i) is the rating values associated with the i-th carrot (1 ≤ i ≤ N)
Assumption: C.length == R.length == N, where integer N is the total count of carrots (N ≥ 1)

For every given parameter input set of (T, C, R), your function is expected to return an array A whose j-th element value A(j) corresponds to the order in the given arrays C and R such that 0 ≤ A(j) < N.

We maximize the array size of A, followed by the sum of ratings R[i] that correspond to A.
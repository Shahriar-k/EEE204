
### Experiment 03: Root Finding Using Open Method
## PROBLEM TO SOLVE:
Say, you are charging an RC-storage from a source VS(t). The amount of charge stored after time
t is given by:

![Screenshot 2021-04-06 225504](https://user-images.githubusercontent.com/67644471/113749701-bfab6200-972b-11eb-86af-c612ffe98d33.png)

Here, Q is in coulombs. To reduce the power loss in the resistance, we can slowly increase the
voltage as: VS = V0 × t/τ. Here, V0 = 12 V and τ = 0.1 s. The equation for charge then can be
written as:

![Screenshot 2021-04-06 230252](https://user-images.githubusercontent.com/67644471/113750175-48c29900-972c-11eb-9fec-dc216d8a4b6e.png)

Assume R = 0.1 MΩ and C = 1 μF. We want to find: at what time t does the charge reach Q =
CV0/2 ?

## REPORT:
1.Write the equation in f(t) = 0 form and plot f(t) using MATLAB (from t = 0 to τ).

2.Write a MATLAB code to calculate the root of the function using secant method (do 7
iterations). Assume the initial guesses: t−1 = 0.8τ and t0 = τ.

3.Solutions:

a. What is your solution after 7 iterations?

b. What is the true solution found from wolfram?

c. Find relative true error using the solution after 7-iterations.

4.Now set your code for 12-iterations:

a. Plot i-th solution *(ti)* vs iteration *(i)*.

b. Plot relative apparent error vs. iteration.

c. If you check the values of ***ti*** from matlab workspace, you will see that the values
are NaN (not a number) after 8 or 9 iterations. Explain why there is no solution
after 8 or 9 iterations.

Not required (interested students can try it out):
1.Compare error vs iteration plots for different methods.

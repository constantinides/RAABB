George A.Chatzianastasiou MSc thesis

Supervised by Head of CAS Group, Professor George A.Constantinides

Imperial College London

Ray-Axis Aligned Bounding Box tests using interval arithmetic and directed rounding modes to eliminate false misses and explore false hit rate error as the mantissa is downscaled from high precision (double) to the minimum, by keeping exponent constant at 11 bits.

Here you can find our modified implementations for the Slabs Method and Fast Ray Box Intersection.
To run the code, make sure that you have installed GNU-MPFR 3.1 or higher and GMP 4.1 or higher. 
You can vary "iters" to make as many tests as you would like. The uniform random distribution generates values at [-1,1]. The high precision version returns the correct result and is being compared with the results for each different mantissa as precision is downscaled.
Type 1 error implies false misses (eliminated). Type 2 error implies false hits.

The RTL codes and the ISE projects for the different mantissas are attached. FloPoCo is used to generate the add/subtract, multiply floating point operators. The VHDL is modified to round the result to +,- infinity (directed rounding modes).

Georgios Chatzianastasiou MSc thesis

Supervised by Head of CAS Group, Professor George A. Constantinides

Imperial College London

Ray/Axis Aligned Bounding Box tests using interval arithmetic and directed rounding modes to eliminate false misses and explore false hit error rate as the mantissa is downscaled from high precision (double) to the minimum, by keeping exponent constant at 11 bits.

Here you can find our modified implementations for the Slabs Method (https://dl.acm.org/citation.cfm?doid=15886.15916) and Fast Ray Box Intersection (https://dl.acm.org/citation.cfm?id=90874).

To run the code, make sure that you have installed GNU-MPFR 3.1 or higher and GMP 4.1 or higher. 
You can vary "iters" to make as many tests as you would like. The uniform random distribution generates values at [-1,1]. The high precision version returns the correct result and is being compared with the results for each different mantissa as precision is downscaled. Type 1 error implies false misses (eliminated). Type 2 error implies false hits.
To compile (e.g the Slabs Method): gcc -Wall -o Slabs_Method Slabs_Method.c -lmpfr -lgmp

The RTL codes and the ISE projects for the different mantissas of our method that eliminates false negatives are attached. FloPoCo is used to generate the add/subtract and multiply floating point operators. The VHDL is modified to round the result to +,- infinity (IEEE-754 directed rounding modes).

The related work has been presented as a full paper in FPL2018 Conference, Session W1B: Computer Vision and Graphics in Trinity College Dublin (https://fpl2018.org).

You can find a preview of our paper here: https://constantinides.net/2018/08/23/approximation-of-boolean-functions
You can find the full paper here: http://cas.ee.ic.ac.uk/people/gac1/pubs/GeorgeFPL18.pdf

The authors wish to acknowledge the support of EPSRC (EP/P010040/1, EP/K034448/1, EP/I020357/1), the Royal Academy of Engineering, and Imagination Technologies.

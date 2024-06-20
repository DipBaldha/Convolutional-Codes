# Convolutional Coding
This team project gives an efficient algorithm performing Convolutional encoding and error-correcting decoding method used to improve
the reliability of communication systems. It has working codes for both Soft and Hard Decision Decoding.

<!--## Team: 12-->
<!--- -->

## Convolutional Encoder
- A Convolutional Encoder has a bit-level encoding technique. they are used in applications that require good performance with low implementation cost. Using convolutional codes, a continuous sequence of information bits is mapped into a continuous sequence of encoder output bits. The encoded bits not only depend on current inputs but also on past inputs and the storing of past input bits can be done using simple registers.
- 

## DSA- concepts used
- Dynamic Programming
- Hashtable/Unordered map

## Contents
- AnalyticalFormula -> Theoretically calculates the expected probability of the LDPC decoder
- HardDecisionDecoder-> Performs Convolutional decoding using Hard Decision decoding technique
- SoftDecisionDecoder-> Performs Convolutional decoding using Soft Decision decoding technique
- HMatrix2 -> Large example matrix  (Make sure to delete the small preloaded example matrix)
- Hmat2_analytical_algorithm_convergence -> Matlab figure of the comparison between our simulator and theoritical answer over different probabilities.

## Future Working
- Optimising space complexity without the increase in time-complexity of the solution i.e not using separate VN_map and CN_map for reference.
- Using same code with some modification to make it an LDPC decoder for BSC as well.

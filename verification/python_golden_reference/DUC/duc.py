import os
import numpy as np

input_file = 'C:/Users/ASAA/OneDrive/Desktop/project/verification/DUC/input_data.txt'
output_file = 'C:/Users/ASAA/OneDrive/Desktop/project/verification/DUC/output.txt'

# Check if input exists
if not os.path.isfile(input_file):
    raise FileNotFoundError(f"Input file not found: {input_file}")

# Read input
data = np.loadtxt(input_file, dtype=int)
I_in = data[:,0]
Q_in = data[:,1]

# DUC logic unchanged
def DUC(I, Q):
    counter = 0
    out = []
    for i in range(len(I)):
        I_sample = I[i]
        Q_sample = Q[i]
        if counter == 0:
            SYS_out = I_sample
        elif counter == 1:
            SYS_out = 1 - Q_sample
        elif counter == 2:
            SYS_out = 1 - I_sample
        elif counter == 3:
            SYS_out = Q_sample
        out.append(SYS_out)
        counter = (counter + 1) % 4
    return np.array(out)

duc_out = DUC(I_in, Q_in)

# Make sure output directory exists
os.makedirs(os.path.dirname(output_file), exist_ok=True)
np.savetxt(output_file, duc_out.astype(int), fmt='%d')

print("DONE DUC REFERENCE MODEL")
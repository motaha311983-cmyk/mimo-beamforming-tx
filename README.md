# MIMO Beamforming Transmit Chain

An RTL-based digital MIMO Beamforming Transmit Chain designed and implemented as an ASIC-oriented engineering project using 130 nm CMOS technology.

The project covers digital signal processing, RTL design, functional verification, synthesis, DFT, and physical design implementation.

## System Architecture

The transmit chain consists of the following main stages:

1. I/Q Signal Generation
2. Digital Phase Shifter
3. Two-Stage Interpolation
4. Sigma-Delta Modulation
5. Digital Up-Conversion (DUC)

## Design Specifications

| Parameter | Specification |
|---|---|
| Target Technology | 130 nm CMOS |
| Target Clock Frequency | 400 MHz |
| Oversampling Ratio (OSR) | 32 |
| Sigma-Delta Modulator | Second-order, 1-bit |
| DUC Factor | 4 |

## Design and Implementation

### 1. RTL Design
Verilog-based implementation of the main digital processing blocks.

### 2. Functional Verification
- Python Golden Reference Models.
- Block-level UVM verification.
- System-level functional verification.
- MATLAB-based reference modeling and analysis.

### 3. MATLAB Modeling
MATLAB and Simulink models covering:
- Signal chain modeling.
- FIR and interpolation filter architectures.
- Sigma-Delta architecture exploration.
- Beam steering analysis.
- SNR performance evaluation.

### 4. ASIC Implementation
The ASIC flow includes:

- RTL Synthesis.
- Post-Synthesis Formal Equivalence Checking.
- Design for Testability (DFT).
- Post-DFT Verification.
- Physical Design (Place and Route).

## Tools and Technologies

- Verilog / SystemVerilog
- Python
- MATLAB / Simulink
- ModelSim / QuestaSim
- UVM
- Synopsys Design Compiler
- Synopsys Formality
- Cadence SoC Encounter

## Repository Structure

| Directory | Description |
|---|---|
| [rtl/](rtl/) | RTL source files |
| [verification/](verification/) | UVM, system-level verification, and Python reference models |
| [matlab/](matlab/) | MATLAB and Simulink models and performance analysis |
| [ASIC/](ASIC/) | Synthesis, DFT, and physical design implementation |
| [docs/](docs/) | Project visual documentation |

## Project Results

The repository includes supporting reports and simulation results covering:

- Signal-to-Noise Ratio (SNR) analysis across the signal chain.
- MATLAB/Simulink simulation results.
- Synthesis reports.
- Formal equivalence verification.
- DFT implementation reports.
- Physical design and timing analysis reports.

The implementation reports document the actual results of the design flow.

## Author

**Mohamed Taha**

Communication and Electronics Engineer

Interests: Digital IC Design, RTL Design, ASIC Implementation, and Digital Verification.

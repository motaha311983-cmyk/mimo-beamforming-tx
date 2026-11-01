# Design for Testability (DFT)

This section documents the DFT implementation stage of the MIMO Beamforming Transmit Chain.

## Contents

- **SDC:** Timing constraints used during the DFT implementation flow.
- **Netlists:** DFT-inserted gate-level netlists.
- **Reports:** DFT implementation reports, including scan insertion and design statistics.
- **SDF:** Standard Delay Format files for timing-aware simulation.
- **Logs:** Execution logs generated during the DFT flow.
- **DFT Scripts:** Scripts used to configure and execute the DFT implementation.
- **Constraints:** DFT-related constraints and configuration files.
- **SVF:** Verification guidance files, if generated and required for downstream formal equivalence checking.

## Objective

To prepare the synthesized design for manufacturing test by incorporating scan-based Design for Testability structures while preserving the intended design functionality.

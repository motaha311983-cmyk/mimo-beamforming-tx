# ASIC Physical Design – Place and Route (PNR)

## 1. Project Overview

This project implements the Physical Design (PNR) flow for the MIMO ASIC design using Cadence Encounter.

The objective is to transform the synthesized gate-level netlist into a physically implemented design through floorplanning, placement, Clock Tree Synthesis (CTS), routing, and chip finishing.

The project includes Tcl automation scripts, physical design databases, timing information, and implementation reports.

## 2. Tools and Technologies

- **EDA Tool:** Cadence Encounter
- **Scripting Language:** Tcl
- **Design:** MIMO ASIC
- **Implementation:** Place and Route (PNR)
- **Timing Analysis:** SDF-based timing information
- **Physical Design Database:** Encounter Database (ENC)

## 3. Project Structure

```text
PNR/
│
├── celtic/
├── checkDesign/
├── clock_report/
├── encounterData/
├── export/
├── import/
├── MIMO_7.enc.dat/
├── MIMO_yfulN1_9686.rcdb.d/
├── report/
├── summaryReport/
├── timingReports/
│
├── floorplan
├── placement
├── cts
├── routing
├── chip_finish
├── outputs_gen
│
├── Clock.ctstch
├── MIMO
├── MIMO_7.enc
├── MIMO_placement.enc
├── MY_DESIGN_BACKUP.def
├── MIMO.sdf
├── MIMO.talib
├── MIMO.cts_trace
├── MIMO.gateCount
├── MIMO.conn.rpt
├── MIMO.geom.rpt
├── MIMO.wl.flat
├── checknetlist.rpt
├── checkPlacement.rpt
├── streamOut.map
│
└── README.md
```

## 4. Physical Design Flow

### 4.1 Floorplanning

**Script:** `floorplan`

Initial physical design stage responsible for:
- Defining the core and die dimensions.
- Establishing placement boundaries.
- Defining floorplan constraints.
- Preparing the design for power planning and placement.

### 4.2 Placement

**Script:** `placement`

This stage performs:
- Standard-cell placement.
- Cell distribution across the core area.
- Placement optimization.
- Timing and congestion considerations.

### 4.3 Clock Tree Synthesis (CTS)

**Script:** `cts`

**Configuration:** `Clock.ctstch`

This stage is responsible for:
- Building the clock distribution network.
- Inserting clock buffers.
- Controlling clock latency and skew.
- Optimizing clock distribution.

### 4.4 Routing

**Script:** `routing`

The routing stage establishes physical connections between standard cells.

Main objectives:
- Signal routing.
- Connectivity verification.
- Design rule checking.
- Routing optimization.

### 4.5 Chip Finishing

**Script:** `chip_finish`

The final implementation stage prepares the design for output generation and physical verification.

### 4.6 Output Generation

**Script:** `outputs_gen`

This stage generates implementation deliverables and exports design information.

## 5. Design Databases and Outputs

| File | Description |
|---|---|
| `MIMO_7.enc` | Encounter design database |
| `MIMO_placement.enc` | Placement-stage database |
| `MY_DESIGN_BACKUP.def` | DEF physical design backup |
| `MIMO.sdf` | Standard Delay Format file |
| `MIMO.talib` | Timing-related library data |
| `MIMO.cts_trace` | CTS trace information |
| `MIMO.gateCount` | Gate count information |
| `MIMO.conn.rpt` | Connectivity report |
| `MIMO.geom.rpt` | Geometry report |
| `MIMO.wl.flat` | Flat wire-load information |
| `streamOut.map` | Stream-out mapping file |

## 6. Reports and Verification

The project includes several directories dedicated to implementation analysis:

- **checkDesign:** Design verification and consistency checks.
- **clock_report:** Clock tree analysis.
- **report:** General physical design reports.
- **summaryReport:** Summary implementation reports.
- **timingReports:** Timing analysis reports.
- **celtic:** Signal integrity and crosstalk analysis data.

Additional reports include:

- `checknetlist.rpt`
- `checkPlacement.rpt`
- `MIMO.conn.rpt`
- `MIMO.geom.rpt`

## 7. Key Physical Design Objectives

The main objectives of this implementation are:

- Achieving timing closure.
- Optimizing standard-cell placement.
- Building a balanced clock distribution network.
- Minimizing routing congestion.
- Ensuring design connectivity.
- Reducing setup and hold violations.
- Preparing the design for final physical verification.

## 8. Project Results

The implementation results can be evaluated using the following metrics:

| Metric | Result |
|---|---|
| Cell Area | To be extracted |
| Total Power | To be extracted |
| Setup WNS | To be extracted |
| Setup TNS | To be extracted |
| Hold Violations | To be extracted |
| Clock Skew | To be extracted |
| Signal Metal Area | To be extracted |

*Actual values should be extracted from the generated implementation and timing reports.*

## 9. Conclusion

This project demonstrates the implementation of a complete ASIC Physical Design flow, covering the major stages from floorplanning to routing and chip finishing.

The project structure includes automation scripts, implementation databases, timing information, and verification reports that support the physical implementation and analysis of the MIMO ASIC design.

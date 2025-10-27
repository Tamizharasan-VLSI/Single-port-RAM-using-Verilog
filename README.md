# 🧠 Single-Port RAM | Verilog Project

A synthesizable Single-Port RAM design using Verilog with parameterized memory depth and data width. Includes a working testbench for simulation.

---

## ✅ Features
- Fully parameterized RAM (data + address width)
- Synchronous read/write
- Single clock design
- Testbench included for verification

---

## 🔧 Module Specification

### Ports

| Name | Dir | Width | Description |
|------|-----|-------|-------------|
| `clk` | Input | 1-bit | Clock Input |
| `rst` | Input | 1-bit | Asynchronous Reset |
| `data` | Input | data_width | Input data on write |
| `addr` | Input | addr_width | Memory Address |
| `mode` | Input | 1-bit | Write=1, Read=0 |
| `out` | Output | data_width | Data Read Output |

---

## 📐 Parameters

| Parameter | Default | Description |
|----------|---------|-------------|
| `data_width` | 8 | Width of data |
| `addr_width` | 6 | Width of address line |

Memory depth is calculated as:


---

## 🧪 Testbench Operation

Steps performed during simulation:

1. Reset RAM
2. Write incremental values to all addresses
3. Switch to Read mode
4. Read back and verify stored data

Example Monitor Output:


---

## 📁 Repository Contents
| File | Description |
|------|-------------|
| `single_port_ram.sv` | RTL Verilog Code |
| `tb_single_port_ram.sv` | Testbench Code |
| `dump.vcd` | Optional waveform dump file |

---

## 🛠 Tools Used
- Verilog Simulator (EDA Playground / ModelSim / Vivado xsim)
- GTKWave for waveform display

---

## ✨ Future Improvements
- Add Block Diagram
- Add Read/Write mode configuration (Write-first, Read-first, No-change)
- Add synchronous reset option

---

## 👩‍💻 Author
**Sindhiya**  
VLSI Enthusiast | Digital Design Learner  
More designs coming soon… 😊

---

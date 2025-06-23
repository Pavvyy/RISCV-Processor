# RISCV-Processor
In this project we implement a 32-bit, single-cycle RISC-V ISA based processor in verilog. This is a work-in-progress project, with individual modules being implemented and tested incrementally. The modules used and their interaction with each other are shown in the following picture.
![WhatsApp Image 2025-06-19 at 10 50 20_bf8c3fbf](https://github.com/user-attachments/assets/a421efdc-9744-4123-b857-6d96a657149e)


# Features (Planned / Partially Implemented)
- RISC-V RV32I Instruction Support (subset)
- Single-cycle datapath
- Fixed-width instruction fetch from memory
- Immediate generation and ALU operations
- Register file and control logic integration
- Data memory interface
- Branch logic support
- More complete testbench and simulation

# Note
- The processor does not yet support pipeline stages or full hazard detection.
- This is a learning-focused project aimed at understanding computer architecture and digital design.

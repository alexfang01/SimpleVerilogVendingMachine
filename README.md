# Verilog Vending Machine FSM (Finite State Machine)

This project implements a vending machine using a Finite State Machine (FSM) in Verilog. The machine accepts multiple coin denominations and dispenses a drink when the required amount is reached. If an invalid item is selected or excess money is inserted, the machine returns change accordingly.

## 💡 Features

- Written in **Verilog HDL**.
- Accepts coins and tracks the total inserted amount using states.
- Dispenses a drink when RM2.00 or more is inserted.
- Returns appropriate change based on inserted amount and item selected.
- Resettable to initial state.
- Easy to expand to support more states or features.

## 🛠 Inputs & Outputs

### **Inputs**
- `act [2:0]` – Action code indicating coin inserted or drink selection.
- `clk` – Clock signal.
- `reset` – Resets the machine to its initial state.

### **Outputs**
- `next [2:0]` – The next state (internal state output).
- `cd [4:0]` – Change dispensed in encoded binary format.

## 🔢 Action Input Codes (act)
| Code | Action                     |
|------|----------------------------|
| 000  | No action                  |
| 001  | Insert RM0.50             |
| 010  | Insert RM1.00             |
| 011  | Select Drink (RM2.00)     |
| 100  | Cancel                    |
| 101  | Return RM0.50             |
| 110  | Return RM1.00             |
| 111  | Return RM1.50             |

> Feel free to modify the action codes as needed for different coin denominations or drink prices.

## 🔄 State Descriptions

| State | Meaning           | Value   |
|--------|--------------------|--------|
| `s0`   | RM 0.00 inserted   | 000    |
| `s1`   | RM 0.50 inserted   | 001    |
| `s2`   | RM 1.00 inserted   | 010    |
| `s3`   | RM 1.50 inserted   | 011    |
| `s4`   | RM 2.00 inserted   | 100    |
| `s5`   | RM 2.50 inserted   | 101    |
| `s6`   | RM 3.00 inserted   | 110    |
| `s7`   | RM 3.50 inserted   | 111    |

Transitions between states are determined by the `act` input. Once the user selects the drink (`act == 011`) and enough balance is accumulated, the machine dispenses the drink and returns to the initial state with any remaining change provided via `cd`.

## 💸 Change Output Encoding (`cd`)

The `cd` (change output) is a 5-bit signal representing the change amount to be returned when a drink is selected. You can customize its interpretation or adapt it into human-readable form (e.g., split into RM1, RM0.50, etc.).

Example:
- `cd = 00100` means RM0.50 returned.
- `cd = 01000` means RM1.00 returned.
- `cd = 11100` means RM2.50 returned.

## 🔁 Reset Logic

When `reset` is active, the vending machine immediately resets to the initial state `s0` and clears all internal states.



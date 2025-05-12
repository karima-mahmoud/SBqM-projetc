# Smart Queue Management System (Verilog Project)

This project is a simple **Smart Queue Management System** implemented in Verilog. It simulates a queue management system for a bank or similar service environment, keeping track of the number of people in a queue and calculating the expected waiting time based on the number of available tellers.

## 📁 Project Structure

* **Unit.v** - Main module for queue management, integrating the **Counter** and **ROM** modules.
* **Counter.v** - Handles counting the number of people in the queue.
* **ROM.v** - Provides pre-defined waiting times based on the queue size and the number of tellers.
* **Testbenches** - Test modules for each component to verify functionality:

  * **CounterTest.v** - Testbench for the counter logic.
  * **ROMTest.v** - Testbench for the ROM logic.
  * **UnitTest.v** - Testbench for the complete system.

## 📝 Features

* **Queue Size Tracking:** Counts the number of people in the queue (0 to 7).
* **Teller Management:** Supports 1 to 3 tellers for different service speeds.
* **Full/Empty Detection:** Flags the queue as full or empty.
* **Expected Waiting Time:** Provides expected waiting time based on the current queue size and number of tellers.
* **Reset Functionality:** Resets the queue to an empty state.
* **Warnings:** Issues warnings when the queue is full or empty.

## ⚙️ Modules

### **Unit**

* **Inputs:**

  * **upSignal:** Signals a new person joining the queue.
  * **downSignal:** Signals a person leaving the queue.
  * **Tcount:** Number of tellers (1 to 3).
  * **reset:** Resets the queue.
* **Outputs:**

  * **Wtime:** Expected waiting time.
  * **Pcount:** Number of people in the queue.
  * **fullFlag:** High if the queue is full.
  * **emptyFlag:** High if the queue is empty.

### **Counter**

* Handles counting the people in the queue, providing a 3-bit state representing 0 to 7 people.

### **ROM**

* Provides pre-defined waiting times based on the queue size and the number of tellers.

## 🚀 Getting Started

1. Clone the repository.
2. Run the testbenches using your preferred Verilog simulator (e.g., ModelSim, Vivado).
3. Verify the behavior using the provided test cases.

## 🧪 Testbenches

* **CounterTest:** Verifies the counter logic for adding and removing people.
* **ROMTest:** Checks the ROM logic for accurate waiting time lookups.
* **UnitTest:** Full system test to verify the complete integration.

## 🛠️ Future Improvements

* Add support for dynamic queue sizes.
* Integrate an FPGA or microcontroller for real-world testing.
* Add display modules for real-time queue monitoring.


## 🙋‍♂️ Author

**👨‍💻 Karima Mahmoud**  
📫 karimamahmoudsalem1@gmail.com  
🐙 GitHub: https://github.com/karima-mahmoud

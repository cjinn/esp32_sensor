# ESP32 Sensor Module
This repository outlines an attempt to make a universal ESP32 board to conduct IoT projects with the help of sensors. As such, it is highly customisable and will most likely undergo many revisions.

The goal is to have multiple of these ESP32 sensor modules interact with each other using mesh Wi-Fi to share information with each other.

# Table of Contents
- [Table of Contents](#table-of-contents)
- [Versions](#versions)
- [Acknowledgements](#acknowledgements)

# Versions
## v0.0.3b
Originally a 4-layer PCB and the , it was redesigned to a 2-layer PCB in order to meet capstone project deadlines and it is the first iteration that was manufactured, tested and worked (well, most of it anyways). As such, it is noticebly bare-bones and has hardware design flaws. It is not recommended to go with this.

### Known Hardware Issues
- [IMU SDA pin interferes with ESP32 boot up](https://github.com/cjinn/esp32_sensor/issues/2)
- [Crystal Oscillator missing from Hardware Design](https://github.com/cjinn/esp32_sensor/issues/1)

# Acknowledgements
Thanks to Isaac Tan for helping me design, test and realise this project from the very beginning.

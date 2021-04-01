# ESP32 Sensor Module
This repository outlines an attempt to make a universal ESP32 board to conduct IoT projects with the help of sensors. As such, it is highly customisable and will most likely undergo many revisions.

The goal is to have multiple of these ESP32 sensor modules interact with each other using mesh Wi-Fi to share information with each other.

# Table of Contents
- [ESP32 Sensor Module](#esp32-sensor-module)
- [Table of Contents](#table-of-contents)
- [Hardware Versions](#hardware-versions)
  - [v0.0.3b](#v003b)
    - [v0.0.3c](#v003c)
    - [Known Hardware Issues](#known-hardware-issues)
- [Acknowledgements](#acknowledgements)

# Hardware Versions
Each hardware revision will be updated and the version as such. This version system is adopted from v0.0.4 onwards. The convection is as follows:

X.Y.ZA
- X: Major version number of the design. It is assumed there are major changes to the overall design including PCB, components, fucntionality, purpose, etc.
- Y: Minor version number of the design. Any increment on this signifies a minor design revision. Most likely an electrical characteristic change and/or component replacement.
- Z: Revision version number of the design. Any increment on this signifies a commit has been made to the design. Most likely adjustments to facilitate assembly houses, manufacturing and production.
- A: Alphabetical designation. Used to indicate even more minor adjustments like spelling mistakes and refreshing files.

## v0.0.3b
Originally a 4-layer PCB, it was redesigned to a 2-layer PCB in order to meet capstone project deadlines and it is the first iteration that was manufactured, tested and worked (well, most of it anyways). As such, it is noticebly bare-bones and has hardware design flaws. It is not recommended to go with this.

### v0.0.3c
Refreshed gerber files, schematics and BOM to be packaged such that it can be used to shop around between assembly houses. No meaningful changes since v0.0.3b.

### Known Hardware Issues
- [IMU SDA pin interferes with ESP32 boot up](https://github.com/cjinn/esp32_sensor/issues/2)
- [Crystal Oscillator missing from Hardware Design](https://github.com/cjinn/esp32_sensor/issues/1)

# Acknowledgements
Thanks to Isaac Tan for helping me design, test and realise this project from the very beginning.

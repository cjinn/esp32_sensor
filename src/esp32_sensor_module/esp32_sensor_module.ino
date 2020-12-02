/**
   ESP32 Sensor Module


   Reference: https://github.com/arduino-libraries/Arduino_LSM6DS3/blob/master/src/LSM6DS3.cpp
*/

/**
   Metadata
*/
#define SW_VERSION "0.0.1"
#define HW_VERSION "0.0.3b"

/**
   Libraries
*/
#include "Wire.h" // ESP32 Wire.h

/**
   ESP32 Pins
*/
#define IMU_INT2      26 // Pin 11
#define IMU_INT1      27 // Pin 12  
#define IMU_SCL       14 // Pin 13
#define IMU_SDA       12 // Pin 14
//#define IMU_SD0       // Not implemented

/**
   LSM Registers
*/
#define LSM6DSM_ADDRESS             0x6B // SD0 should not be connected

#define LSM6DSM_WHO_AM_I_REG        0X0F
#define WHO_AM_I_REG_VALUE          0x6A

#define LSM6DSM_CTRL1_XL            0X10
#define LSM6DSM_CTRL2_G             0X11
#define LSM5DSM_CTRL3_C             0X12

#define LSM6DSM_STATUS_REG          0X1E

#define LSM6DSM_CTRL6_C             0X15
#define LSM6DSM_CTRL7_G             0X16
#define LSM6DSM_CTRL8_XL            0X17

#define LSM6DSM_OUTX_L_G            0X22
#define LSM6DSM_OUTX_H_G            0X23
#define LSM6DSM_OUTY_L_G            0X24
#define LSM6DSM_OUTY_H_G            0X25
#define LSM6DSM_OUTZ_L_G            0X26
#define LSM6DSM_OUTZ_H_G            0X27

#define LSM6DSM_OUTX_L_XL           0X28
#define LSM6DSM_OUTX_H_XL           0X29
#define LSM6DSM_OUTY_L_XL           0X2A
#define LSM6DSM_OUTY_H_XL           0X2B
#define LSM6DSM_OUTZ_L_XL           0X2C
#define LSM6DSM_OUTZ_H_XL           0X2D

/**
   Constants
*/
#define SERIAL_BAUD_RATE          115200

/**
   Variables
*/

void setup() {
  Serial.begin(SERIAL_BAUD_RATE);
  Serial.println("Wait for user to be ready");
  while (true) {

    if (Serial.available() > 0) {
      if (Serial.read() == 'G') {
        break;
      }
    }
  }

  imuSetup();
}

void imuSetup(void) {
  Wire.begin(IMU_SDA, IMU_SCL);

  while (readRegister(LSM6DSM_WHO_AM_I_REG) != 0x6A) {
    Serial.println("Unable to talk to IMU! Trying again!");
    delay(1000);
  }

  /**
     Taken from LSM library
  */
  //set the gyroscope control register to work at 104 Hz, 2000 dps and in bypass mode
  writeRegister(LSM6DSM_CTRL2_G, 0x4C);

  // Set the Accelerometer control register to work at 104 Hz, 4G,and in bypass mode and enable ODR/4
  // low pass filter(check figure 9 on LSM6DSM's datasheet)
  writeRegister(LSM6DSM_CTRL1_XL, 0x4A); // I think this is correct??

  // set gyroscope power mode to high performance and bandwidth to 16 MHz
  writeRegister(LSM6DSM_CTRL7_G, 0x00);

  // Set the ODR config register to ODR/4
  writeRegister(LSM6DSM_CTRL8_XL, 0xA4); // I think this is correct??

  Serial.println("Ready");
}

int writeRegister(uint8_t address, uint8_t value)
{
  Wire.beginTransmission(LSM6DSM_ADDRESS);
  Wire.write(address);
  Wire.write(value);
  if (Wire.endTransmission() != 0) {
    return 0;
  }

  return 1;
}

int readRegister(uint8_t address) {
  uint8_t value;

  if (readRegisters(address, &value, sizeof(value)) != 1) {
    return -1;
  }

  return value;
}

int readRegisters(uint8_t address, uint8_t* data, size_t length) {
  Wire.beginTransmission(LSM6DSM_ADDRESS);
  Wire.write(address);

  if (Wire.endTransmission(false) != 0) {
    return -1;
  }

  if (Wire.requestFrom(LSM6DSM_ADDRESS, length) != length) {
    return 0;
  }

  for (size_t i = 0; i < length; i++) {
    *data++ = Wire.read();
  }

  return 1;
}

int gyroscopeAvailable() {
  if (readRegister(LSM6DSM_STATUS_REG) & 0x02) {
    return 1;
  }

  return 0;
}

int accelerationAvailable() {
  if (readRegister(LSM6DSM_STATUS_REG) & 0x01) {
    return 1;
  }

  return 0;
}

int readGyroscope(float& x, float& y, float& z) {
  int16_t data[3];

  if (!readRegisters(LSM6DSM_OUTX_L_G, (uint8_t*)data, sizeof(data))) {
    x = NAN;
    y = NAN;
    z = NAN;

    return 0;
  }

  x = data[0] * 2000.0 / 32768.0;
  y = data[1] * 2000.0 / 32768.0;
  z = data[2] * 2000.0 / 32768.0;

  return 1;
}

/**
   Needs work
*/
int readAcceleration(float& x, float& y, float& z) {
  int16_t data[3];

  if (!readRegisters(LSM6DSM_OUTX_L_XL, (uint8_t*)data, sizeof(data))) {
    x = NAN;
    y = NAN;
    z = NAN;

    return 0;
  }

  x = data[0] * 4.0 / 32768.0;
  y = data[1] * 4.0 / 32768.0;
  z = data[2] * 4.0 / 32768.0;

  return 1;
}

void loop() {
  float x, y, z;
  
  if (gyroscopeAvailable()) {
    readGyroscope(x, y, z);

    Serial.print("Gyroscope: ");
    Serial.print(x);
    Serial.print('\t');
    Serial.print(y);
    Serial.print('\t');
    Serial.println(z);
  }

    if (accelerationAvailable()) {
    readAcceleration(x, y, z);

    Serial.print("Acceleration: ");
    Serial.print(x);
    Serial.print('\t');
    Serial.print(y);
    Serial.print('\t');
    Serial.println(z);
  }

  delay(100);
}

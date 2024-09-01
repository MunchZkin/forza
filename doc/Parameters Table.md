# Parameters Table

| #  | Parameter                                | Data Type | Bits Required | Expected Output                          |
|----|------------------------------------------|-----------|---------------|------------------------------------------|
| 1  | IsRaceOn                                 | int32     | 32            | 0 or 1 (Race status)                     |
| 2  | TimestampMS                              | uint32    | 32            | Milliseconds since epoch                 |
| 3  | EngineMaxRpm                             | single    | 32            | Maximum RPM of the engine                |
| 4  | EngineIdleRpm                            | single    | 32            | Idle RPM of the engine                   |
| 5  | CurrentEngineRpm                         | single    | 32            | Current RPM of the engine                |
| 6  | AccelerationX                            | single    | 32            | Acceleration in X direction (m/s²)       |
| 7  | AccelerationY                            | single    | 32            | Acceleration in Y direction (m/s²)       |
| 8  | AccelerationZ                            | single    | 32            | Acceleration in Z direction (m/s²)       |
| 9  | VelocityX                                | single    | 32            | Velocity in X direction (m/s)            |
| 10 | VelocityY                                | single    | 32            | Velocity in Y direction (m/s)            |
| 11 | VelocityZ                                | single    | 32            | Velocity in Z direction (m/s)            |
| 12 | AngularVelocityX                         | single    | 32            | Angular velocity around X axis (rad/s)   |
| 13 | AngularVelocityY                         | single    | 32            | Angular velocity around Y axis (rad/s)   |
| 14 | AngularVelocityZ                         | single    | 32            | Angular velocity around Z axis (rad/s)   |
| 15 | Yaw                                      | single    | 32            | Yaw angle (radians)                      |
| 16 | Pitch                                     | single    | 32            | Pitch angle (radians)                    |
| 17 | Roll                                      | single    | 32            | Roll angle (radians)                     |
| 18 | NormalizedSuspensionTravelFrontLeft      | single    | 32            | Normalized suspension travel (0.0 to 1.0)|
| 19 | NormalizedSuspensionTravelFrontRight     | single    | 32            | Normalized suspension travel (0.0 to 1.0)|
| 20 | NormalizedSuspensionTravelRearLeft       | single    | 32            | Normalized suspension travel (0.0 to 1.0)|
| 21 | NormalizedSuspensionTravelRearRight      | single    | 32            | Normalized suspension travel (0.0 to 1.0)|
| 22 | TireSlipRatioFrontLeft                   | single    | 32            | Tire slip ratio (0 = 100% grip)          |
| 23 | TireSlipRatioFrontRight                  | single    | 32            | Tire slip ratio (0 = 100% grip)          |
| 24 | TireSlipRatioRearLeft                    | single    | 32            | Tire slip ratio (0 = 100% grip)          |
| 25 | TireSlipRatioRearRight                   | single    | 32            | Tire slip ratio (0 = 100% grip)          |
| 26 | WheelRotationSpeedFrontLeft              | single    | 32            | Wheel rotation speed (rad/s)             |
| 27 | WheelRotationSpeedFrontRight             | single    | 32            | Wheel rotation speed (rad/s)             |
| 28 | WheelRotationSpeedRearLeft               | single    | 32            | Wheel rotation speed (rad/s)             |
| 29 | WheelRotationSpeedRearRight              | single    | 32            | Wheel rotation speed (rad/s)             |
| 30 | WheelOnRumbleStripFrontLeft              | int32     | 32            | 0 or 1 (Wheel on rumble strip)           |
| 31 | WheelOnRumbleStripFrontRight             | int32     | 32            | 0 or 1 (Wheel on rumble strip)           |
| 32 | WheelOnRumbleStripRearLeft               | int32     | 32            | 0 or 1 (Wheel on rumble strip)           |
| 33 | WheelOnRumbleStripRearRight              | int32     | 32            | 0 or 1 (Wheel on rumble strip)           |
| 34 | WheelInPuddleDepthFrontLeft              | single    | 32            | Depth of puddle in front left wheel (0.0 to 1.0) |
| 35 | WheelInPuddleDepthFrontRight             | single    | 32            | Depth of puddle in front right wheel (0.0 to 1.0)|
| 36 | WheelInPuddleDepthRearLeft               | single    | 32            | Depth of puddle in rear left wheel (0.0 to 1.0)|
| 37 | WheelInPuddleDepthRearRight              | single    | 32            | Depth of puddle in rear right wheel (0.0 to 1.0)|
| 38 | SurfaceRumbleFrontLeft                   | single    | 32            | Surface rumble intensity (0.0 to 1.0)    |
| 39 | SurfaceRumbleFrontRight                  | single    | 32            | Surface rumble intensity (0.0 to 1.0)    |
| 40 | SurfaceRumbleRearLeft                    | single    | 32            | Surface rumble intensity (0.0 to 1.0)    |
| 41 | SurfaceRumbleRearRight                   | single    | 32            | Surface rumble intensity (0.0 to 1.0)    |
| 42 | TireSlipAngleFrontLeft                   | single    | 32            | Tire slip angle (radians)                |
| 43 | TireSlipAngleFrontRight                  | single    | 32            | Tire slip angle (radians)                |
| 44 | TireSlipAngleRearLeft                    | single    | 32            | Tire slip angle (radians)                |
| 45 | TireSlipAngleRearRight                   | single    | 32            | Tire slip angle (radians)                |
| 46 | TireCombinedSlipFrontLeft                | single    | 32            | Tire combined slip (0 = 100% grip)      |
| 47 | TireCombinedSlipFrontRight               | single    | 32            | Tire combined slip (0 = 100% grip)      |
| 48 | TireCombinedSlipRearLeft                 | single    | 32            | Tire combined slip (0 = 100% grip)      |
| 49 | TireCombinedSlipRearRight                | single    | 32            | Tire combined slip (0 = 100% grip)      |
| 50 | SuspensionTravelMetersFrontLeft          | single    | 32            | Suspension travel in meters              |
| 51 | SuspensionTravelMetersFrontRight         | single    | 32            | Suspension travel in meters              |
| 52 | SuspensionTravelMetersRearLeft           | single    | 32            | Suspension travel in meters              |
| 53 | SuspensionTravelMetersRearRight          | single    | 32            | Suspension travel in meters              |
| 54 | CarOrdinal                               | int32     | 32            | Unique ID of the car make/model          |
| 55 | CarClass                                  | int32     | 32            | Car class (0 to 7)                       |
| 56 | CarPerformanceIndex                      | int32     | 32            | Car performance index (100 to 999)       |
| 57 | DrivetrainType                            | int32     | 32            | Drivetrain type (0 = FWD, 1 = RWD, 2 = AWD) |
| 58 | NumCylinders                              | int32     | 32            | Number of engine cylinders               |
| 59 | PositionX                                | single    | 32            | X position of the car (meters)           |
| 60 | PositionY                                | single    | 32            | Y position of the car (meters)           |
| 61 | PositionZ                                | single    | 32            | Z position of the car (meters)           |
| 62 | Speed                                     | single    | 32            | Speed of the car (m/s)                   |
| 63 | Power                                     | single    | 32            | Engine power (kW)                        |
| 64 | Torque                                    | single    | 32            | Engine torque (Nm)                       |
| 65 | TireTempFrontLeft                         | single    | 32            | Tire temperature (°C)                    |
| 66 | TireTempFrontRight                        | single    | 32            | Tire temperature (°C)                    |
| 67 | TireTempRearLeft                          | single    | 32            | Tire temperature (°C)                    |
| 68 | TireTempRearRight                         | single    | 32            | Tire temperature (°C)                    |
| 69 | Boost                                     | single    | 32            | Boost level (0.0 to 1.0)                 |
| 70 | Fuel                                      | single    | 32            | Fuel level (0.0 to 1.0)                  |
| 71 | DistanceTraveled                          | single    | 32            | Distance traveled (meters)              |
| 72 | BestLap                                   | single    | 32            | Best lap time (seconds)                 |
| 73 | LastLap                                   | single    | 32            | Last lap time (seconds)                 |
| 74 | CurrentLap                                | single    | 32            | Current lap time (seconds)              |
| 75 | CurrentRaceTime                           | single    | 32            | Time since race start (seconds)         |
| 76 | LapNumber                                 | uint16    | 16            | Current lap number                       |
| 77 | RacePosition                              | uint8     | 8             | Current race position                    |
| 78 | Accel                                     | uint8     | 8             | Acceleration input (0 to 255)            |
| 79 | Brake                                     | uint8     | 8             | Brake input (0 to 255)                   |
| 80 | Clutch                                    | uint8     | 8             | Clutch input (0 to 255)                  |
| 81 | HandBrake                                 | uint8     | 8             | Handbrake input (0 to 255)               |
| 82 | Gear                                      | uint8     | 8             | Current gear (0 to 255)                 |
| 83 | Steer                                     | int8      | 8             | Steering angle (-128 to 127)             |
| 84 | NormalizedDrivingLine                     | int8      | 8             | Normalized driving line (-128 to 127)   |
| 85 | NormalizedAIBrakeDifference               | int8      | 8             | Normalized AI brake difference (-128 to 127) |
| 86 | TireWearFrontLeft                         | single    | 32            | Tire wear percentage (0.0 to 1.0)       |
| 87 | TireWearFrontRight                        | single    | 32            | Tire wear percentage (0.0 to 1.0)       |
| 88 | TireWearRearLeft                          | single    | 32            | Tire wear percentage (0.0 to 1.0)       |
| 89 | TireWearRearRight                         | single    | 32            | Tire wear percentage (0.0 to 1.0)       |
| 90 | TrackOrdinal                              | int32     | 32            | Unique ID of the track                   |

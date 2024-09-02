classdef telemetry < handle
    %TELEMETRY Summary of this class goes here
    %   Detailed explanation goes here

    properties
        udpPortNumber double
        udpObj udpport.byte.UDPPort
        rate rateControl
    end

    properties
        data
        bin_data char
    end

    properties
        % Sled Properties
        IsRaceOn int32 
        TimestampMS uint32 
        EngineMaxRpm single
        EngineIdleRpm single
        CurrentEngineRpm single
        AccelerationX single
        AccelerationY single
        AccelerationZ single
        VelocityX single
        VelocityY single
        VelocityZ single
        AngularVelocityX single
        AngularVelocityY single
        AngularVelocityZ single
        Yaw single
        Pitch single
        Roll single
        NormalizedSuspensionTravelFrontLeft single
        NormalizedSuspensionTravelFrontRight single
        NormalizedSuspensionTravelRearLeft single
        NormalizedSuspensionTravelRearRight single
        TireSlipRatioFrontLeft single
        TireSlipRatioFrontRight single
        TireSlipRatioRearLeft single
        TireSlipRatioRearRight single
        WheelRotationSpeedFrontLeft single
        WheelRotationSpeedFrontRight single
        WheelRotationSpeedRearLeft single
        WheelRotationSpeedRearRight single
        WheelOnRumbleStripFrontLeft int32 
        WheelOnRumbleStripFrontRight int32 
        WheelOnRumbleStripRearLeft int32 
        WheelOnRumbleStripRearRight int32 
        WheelInPuddleDepthFrontLeft single
        WheelInPuddleDepthFrontRight single
        WheelInPuddleDepthRearLeft single
        WheelInPuddleDepthRearRight single
        SurfaceRumbleFrontLeft single
        SurfaceRumbleFrontRight single
        SurfaceRumbleRearLeft single
        SurfaceRumbleRearRight single
        TireSlipAngleFrontLeft single
        TireSlipAngleFrontRight single
        TireSlipAngleRearLeft single
        TireSlipAngleRearRight single
        TireCombinedSlipFrontLeft single
        TireCombinedSlipFrontRight single
        TireCombinedSlipRearLeft single
        TireCombinedSlipRearRight single
        SuspensionTravelMetersFrontLeft single
        SuspensionTravelMetersFrontRight single
        SuspensionTravelMetersRearLeft single
        SuspensionTravelMetersRearRight single
        CarOrdinal int32 
        CarClass int32 
        CarPerformanceIndex int32 
        DrivetrainType int32 
        NumCylinders int32 

        % Dash Properties
        PositionX single
        PositionY single
        PositionZ single
        Speed single
        Power single
        Torque single
        TireTempFrontLeft single
        TireTempFrontRight single
        TireTempRearLeft single
        TireTempRearRight single
        Boost single
        Fuel single
        DistanceTraveled single
        BestLap single
        LastLap single
        CurrentLap single
        CurrentRaceTime single
        LapNumber uint16
        RacePosition uint8
        Accel uint8
        Brake uint8
        Clutch uint8
        HandBrake uint8
        Gear uint8
        Steer int8
        NormalizedDrivingLine int8
        NormalizedAIBrakeDifference int8
    end
    
    methods
        function obj = telemetry(varargin)
            obj.udpPortNumber = 58300;
            obj.rate = rateControl(60);
            if numel(varargin) == 2
                obj.udpPortNumber = varargin{1};
                obj.rate = rateControl(varargin{2});
            elseif numel(varargin) == 1
                obj.udpPortNumber = varargin{1};
            end
            obj.udpObj = udpport("LocalPort",obj.udpPortNumber,"EnablePortSharing",true,"Timeout",10);            
        end

        function stream(obj)
            reset(obj.rate);
            flush(obj.udpObj);
            while true
                flushinput(obj.udpObj); % debug
                data_ = read(obj.udpObj, 324, "uint8");
                obj.data = [data_(1:232),data_(245:324)];
                obj.bin_data = dec2bin(obj.data);
                obj.update_data;
                fprintf('race: %1.1f\ttime: %8.1f\tAccel: %5.2f\tbrake: %5.2f\tsteer: %5.2f\n',obj.IsRaceOn, obj.TimestampMS,obj.Accel(1),obj.Brake(1), obj.Steer(1));
                waitfor(obj.rate);
            end
        end

        function update_data(obj)
            props_ = properties(obj);
            index = find(strcmp(props_, 'IsRaceOn'));
            props = props_(index:end);
            byte_idx = 0;
            for idx = 1:1:height(props)
                obj.(props{idx}) = double.empty;
                parameter_type = class(obj.(props{idx}));
                switch parameter_type
                    case 'int8'
                        sz = 1;
                    case 'uint8'
                        sz = 1;                        
                    case 'int16'
                        sz = 2;
                    case 'uint16'
                        sz = 2;
                    case 'int32'
                        sz = 4;
                    case 'uint32'
                        sz = 4;
                    case 'int64'
                        sz = 8;
                    case 'single'
                        sz = 4;
                    case 'double'
                        sz = 8;
                    case 'char'
                        sz = 2;  % MATLAB uses 2 bytes for each char
                    otherwise
                        disp(parameter_type)
                        error('Unknown type bvc!');
                end                
                bin_array = char.empty;
                for temp_sz = sz:-1:1
                    bin_array = append(bin_array,obj.bin_data(temp_sz + byte_idx,:));
                end
                byte_idx = byte_idx + sz;
                obj.(props{idx}) = typecast(uint32(bin2dec(bin_array)),parameter_type);
            end    
        end
    end
end
%call 'uc=unitconversion' after running script.
function uc=unitConversion

uc.hptoW = @hptoW;
uc.Wtohp = @Wtohp;
uc.RevmtoRads= @RevmtoRads;
uc.RadstoRevm= @RadstoRevm;
uc.dBp=@dBp;
uc.dBv=@dBv;
end

%horsepower to watts
function a=hptoW (value)
a=value*745.5;
end

%watts to horsepower
function b=Wtohp (value)
b=value/745.5;

end

%Revolutions per minute to radian per second
function c=RevmtoRads(value)
    c=value*pi/30;
end

%Radians per seconds to Revolutions per minute
function d=RadstoRevm(value)
    d=value*30/pi;
end

%decibles for power
function e=dBp(value1,value2)

    e=10*log10(value1/value2);
end

%decibel for voltage/current
function f=dBv(value1,value2)
    f=20*log10(value1/value2);
end
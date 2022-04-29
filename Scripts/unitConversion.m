%call 'uc=unitconversion' after running script.
function uc=unitConversion

uc.hptoW = @hptoW;
uc.Wtohp = @Wtohp;
uc.RevmtoRads= @RevmtoRads;
uc.RadstoRevm= @RadstoRevm;

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
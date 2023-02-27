x ={SinOsc.ar(700, mul:0.025)}.play;

x.free;

(
z = {
	arg freq=440, amp=1;
	var sig;
	sig = SinOsc.ar(freq) * amp;
}.play;
)

z.set(\freq, 330);
z.set(\amop, 0.125);
z.set(\freq, 660, \amp, 1);
z.set(\amp, 0.125, \freq, 550);
z.free;

(
y = {
	arg noiseHz = 8;
	var freq,amp, sig;
	freq = LFNoise0.kr(noiseHz).exprange(200,1000);
	amp = LFNoise1.kr(12).exprange(0.02, 1);
	sig = SinOsc.ar(freq);
}.play;
)

y.set(\noiseHz, 64);
y.set(\noiseHz, exprand(4,64));
y.free;









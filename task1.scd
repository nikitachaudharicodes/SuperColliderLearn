s.boot;
p = ProxySpace.new.push;

~sig.play;

~sig = {SinOsc.ar([440.443]* -10.midiratio)* 2.dbamp * LFPulse.kr(7,0,0.3)}
~sig = {PinkNoise.ar(10!2)}

~sig.stop(3);
~sig.clear(5);

~sig.fadeTime = 2;

b=();
b.put(\synthh, Buffer.read(s, "C:/Users/saniya chaudhari/Desktop/synth.wav"));
b.synthh.play;
b.synthh.duration;
b.synthh.numChannels;
b.synthh.stop(3);

~buf.play;
~buf.fadeTime = 3;
~buf = {PlayBuf.ar(2, b.synthh, 2, loop:1)* -12.dbamp!2}

p.clear(8);n




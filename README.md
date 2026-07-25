# Analog and Digital Communication Lab

MATLAB lab work from a university course on analog and digital communication.
Each folder is one lab session, evaluated with a task-by-task deliverable
(`Eval_Lab*_Task*_*.m`) and a writeup PDF.

## Information Signals

- **Task 1** — records/loads a voice signal, plots it in the time domain, and
  takes its FFT to inspect the frequency content of recorded speech.
- **Task 2** — synthesizes DTMF-style dial and ringing tones from sums of two
  sinusoids at telephony frequencies (e.g. 350 Hz + 440 Hz).
- **Task 3** — encodes a sentence into its binary (7-bit ASCII) representation
  as a simple illustration of source encoding.

See `Document for Time Plots.pdf` for the accompanying writeup.

## Communication Channels

- **Task 1** — models a twisted-pair wire's per-unit-length R, L, G, C at a
  fixed frequency, derives the propagation constant Ξ³, and plots channel
  attenuation (dB) as a function of distance (100 m–2000 m).
- **Task 2** — applies the Friis free-space path loss equation to compare
  received power vs. distance at two carrier frequencies (900 MHz and 2.4 GHz).

See `Lab3_Document_Prateek_Grover.pdf` for the accompanying writeup.

## Signal Bandwidth

- **Task 1** — compares the frequency-domain spectra of rectangular pulses of
  different widths to show the inverse relationship between pulse duration
  and bandwidth.
- **Task 2** — passes a rectangular pulse through an ideal low-pass filter
  (`sinc` impulse response) and examines the resulting time-domain output.
- **Task 3** — amplitude-modulates a `sinc` baseband signal onto a carrier and
  inspects the modulated signal's spectrum.

See `Lab 4_ Prateek Grover.pdf` for the accompanying writeup.

## Running

Each `.m` file is self-contained — open it in MATLAB (or GNU Octave) and run
it directly; every script produces its own figure(s).

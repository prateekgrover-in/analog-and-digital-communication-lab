# Communication systems lab

MATLAB lab work from a university course on communication systems. Each folder is one lab session, with its scripts and a writeup PDF.

## Information signals

- **`recorded_voice_analysis.m`**: records or loads a voice signal, plots it in the time domain, and takes its FFT to inspect the frequency content of recorded speech.
- **`tone_generation.m`**: synthesizes DTMF-style dial and ringing tones from sums of two sinusoids at telephony frequencies (350 Hz and 440 Hz, for example).
- **`text_to_binary_encoding.m`**: encodes a sentence into its binary (7-bit ASCII) representation as a simple illustration of source encoding.

`recorded_voice_analysis.m` expects a `Recording for Task1.mp3` audio file alongside it, which isn't bundled here. Supply your own to run it.

See `lab_report.pdf` for the accompanying writeup.

## Communication channels

- **`channel_attenuation_vs_distance.m`**: models a twisted-pair wire's per-unit-length R, L, G, and C at a fixed frequency, derives the propagation constant, and plots channel attenuation in dB as a function of distance (100 m to 2000 m).
- **`path_loss_vs_frequency.m`**: applies the Friis free-space path loss equation to compare received power against distance at two carrier frequencies, 900 MHz and 2.4 GHz.

See `lab_report.pdf` for the accompanying writeup.

## Signal bandwidth

- **`pulse_width_vs_bandwidth.m`**: compares the frequency-domain spectra of rectangular pulses of different widths to show the inverse relationship between pulse duration and bandwidth.
- **`lowpass_filter_response.m`**: passes a rectangular pulse through an ideal low-pass filter (`sinc` impulse response) and examines the resulting time-domain output.
- **`am_modulation_spectrum.m`**: amplitude-modulates a `sinc` baseband signal onto a carrier and inspects the modulated signal's spectrum.

See `lab_report.pdf` for the accompanying writeup.

## Running

Each `.m` file is self-contained. Open it in MATLAB (or GNU Octave) and run it directly, every script produces its own figures.

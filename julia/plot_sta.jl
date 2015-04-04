# Load sample, Calculate and Plot STA 

# load sample (stim and ρ)
include("sample.jl")

# Calculate STA
include("sta.jl")
num_timesteps = 150

sta_val = sta(stim, ρ, num_timesteps)


# Plot
using PyPlot

time = 1-length(sta_val):0

plot(time*2, sta_val, color="red", linewidth=1.0, linestyle="-")

xlabel("Time (ms)");
ylabel("Stimulus");
title("Spike Triggered Average")

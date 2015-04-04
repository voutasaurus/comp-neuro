println("Importing STA...")

# sta gives the Spike Triggered Average (average neuron activity preceding a spike)
# stim is the recording of voltage over time in the neuron
# rho is a matching time series which records the neuron's spikes
# num_timesteps gives the desired time period to record prior to the spike (preset length)
function sta(stim, rho, num_timesteps)

	# sta_val will store the Spike Triggered Average of the desired preset length
    sta_val = zeros(num_timesteps)

    # Get the indices at the start of each of the presets (rho records spikes as non-zero values)
    # ignore spikes before num_timesteps as there is not enough data to include those in the average
    start_times = find(rho[num_timesteps:end])

    # The number of presets
    num_presets = length(start_times)

	# Current positions in the presets (vector)
	current = start_times
	for i = 1:length(sta_val)
		# Average of the current index (there are num_presets)
		sta_val[i] = sum(stim[current]) / num_presets
		current += 1
	end

	return sta_val
end

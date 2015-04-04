function [ sta ] = compute_sta( stim, rho, num_timesteps )
%COMPUTE_STA Calculates the spike-triggered average for a neuron that
%            is driven by a stimulus defined in stim. The spike-
%            triggered average is computed over num_timesteps timesteps.
    sta = zeros(num_timesteps, 1);

    % This command finds the indices of all of the spikes that occur
    % after 300 ms into the recording.
    spike_times = find(rho(num_timesteps+1:end)) + num_timesteps;

    % Fill in this value. Note that you should not count spikes that occur
    % before 300 ms into the recording.
    num_spikes = length(spike_times);
    

    
    % Compute the spike-triggered average of the spikes found using the
    % find command. To do this, compute the average of all of the vectors
    % starting 300 ms (exclusive) before a spike and ending at the time of
    % the event (inclusive). Each of these vectors defines a list of
    % samples that is contained within a window of 300 ms before the each
    % spike. The average of these vectors should be completed in an
    % element-wise manner.
    % 
    % Your code goes here.

	% vector + scalar
	% 	this adds the scalar to each element of the vector

	% vector1(vector2)
	%	this returns the subvector of vector1 consisting of the elements at indices given by vector 2

	% sum(vector)/length(vector)
	%	ths returns the average of the elements in the vector

	% All up, the loop body gets the average of the stims num_timesteps-i before the spike
	% Thus the loop gets the average input profile preceeding the spikes (the spike triggered average)

	for i=1:length(sta)
		sta(i) = sum(stim(spike_times-num_timesteps+i))./num_timesteps
	end;
end


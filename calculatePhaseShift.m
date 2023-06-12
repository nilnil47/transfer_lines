function phaseShift = calculatePhaseShift(wave1, wave2, fs)
    % Perform cross-correlation between the two waves
    correlation = xcorr(wave1, wave2);
    
    % Find the index of the maximum correlation
    [~, maxIndex] = max(correlation);
    
    % Calculate the phase shift in samples
    shiftSamples = maxIndex - numel(wave1);
    
    % Calculate the phase shift in radians
    phaseShift = (shiftSamples / fs) * 2 * pi;
end

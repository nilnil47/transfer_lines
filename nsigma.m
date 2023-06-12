% https://physics.stackexchange.com/questions/597459/how-to-work-out-with-how-many-sigma-confidence-my-measurement-confirms-the-theor
function nsigma = nsigma(value1, variance1, value2, variance2)
    % Calculate the difference between the values
    diff = abs(value1 - value2)
    
    % Calculate the standard deviation using variances
    sigma = sqrt(variance1 + variance2)
    
    % Calculate the nsigma value
    nsigma = diff / sigma
end

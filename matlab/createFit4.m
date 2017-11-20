function [fitresult, gof] = createFit4(temp40, chi40_abs)
%CREATEFIT4(TEMP40,CHI40_ABS)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : temp40
%      Y Output: chi40_abs
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 18-Nov-2017 14:30:24


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( temp40, chi40_abs );

% Set up fittype and options.
ft = fittype( 'sin8' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [-Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf];
opts.StartPoint = [22.7348135212234 7.85398163397448 2.18807284206342 4.84285382381094 31.4159265358979 -1.94027462400246 4.85741407490628 15.707963267949 1.86174787525676 0.610973817772792 62.8318530717959 1.50754841231783 0.218297242619532 78.5398163397448 -0.164362798788852 0.305436028478467 47.1238898038469 -1.19218433898086 0.145874717736886 94.2477796076938 -1.54245043459682 0.161518230133094 109.955742875643 -3.02497585638063];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
h = plot( fitresult, xData, yData );
legend( h, 'chi40_abs vs. temp40', 'untitled fit 1', 'Location', 'NorthEast' );
% Label axes
xlabel temp40
ylabel chi40_abs
grid on



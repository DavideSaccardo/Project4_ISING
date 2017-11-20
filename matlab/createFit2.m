function [fitresult, gof] = createFit2(temp80, cv80)
%CREATEFIT2(TEMP80,CV80)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : temp80
%      Y Output: cv80
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 18-Nov-2017 13:44:48


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( temp80, cv80 );

% Set up fittype and options.
ft = fittype( 'sin8' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [-Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf];
opts.StartPoint = [2.18477775693535 7.85398163397448 2.37829925286918 0.348779904328588 31.4159265358979 -1.17142785442667 0.437493897182784 15.707963267949 -0.410286162964514 0.0781993109255834 62.8318530717959 2.298650033321 0.0877202876883363 47.1238898038469 1.68828674158461 0.0375446116101874 78.5398163397448 -0.879418962478317 0.0204494316227877 94.2477796076938 -0.837090371153345 0.020201460928225 109.955742875643 2.80825937244788];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
h = plot( fitresult, xData, yData );
legend( h, 'cv80 vs. temp80', 'untitled fit 1', 'Location', 'NorthEast' );
% Label axes
xlabel temp80
ylabel cv80
grid on


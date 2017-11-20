function [fitresult, gof] = createFit4(temp80, chi80_abs)
%CREATEFIT4(TEMP80,CHI80_ABS)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : temp80
%      Y Output: chi80_abs
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 18-Nov-2017 14:31:11


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( temp80, chi80_abs );

% Set up fittype and options.
ft = fittype( 'sin8' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [-Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf];
opts.StartPoint = [45.5969475794327 7.85398163397448 2.26178945949757 23.1385177778757 31.4159265358979 -1.61226642847397 17.1108500363381 15.707963267949 2.83272651812762 9.2182062300645 47.1238898038469 0.228711253788861 6.50948598577029 62.8318530717959 1.94100999739683 2.65442672522156 78.5398163397448 -2.28510834568298 1.7438797280818 94.2477796076938 -0.752196243046899 0.856996575588838 109.955742875643 1.92482369442958];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
h = plot( fitresult, xData, yData );
legend( h, 'chi80_abs vs. temp80', 'untitled fit 1', 'Location', 'NorthEast' );
% Label axes
xlabel temp80
ylabel chi80_abs
grid on



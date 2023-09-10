function [fitresult, gof] = createFit(y, x8)
%CREATEFIT(Y,X8)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : y
%      Y Output: x8
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  ������� FIT, CFIT, SFIT.

%  �� MATLAB �� 09-Jun-2023 22:17:34 �Զ�����


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( y, x8 );

% Set up fittype and options.
ft = fittype( 'a*exp(-b*x)+c', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Algorithm = 'Levenberg-Marquardt';
opts.Display = 'Off';
opts.StartPoint = [0.0357116785741896 0.849129305868777 0.933993247757551];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
h = plot( fitresult, xData, yData );
legend( h, 'x8 vs. y', 'untitled fit 1', 'Location', 'NorthEast', 'Interpreter', 'none' );
% Label axes
xlabel( 'y', 'Interpreter', 'none' );
ylabel( 'x8', 'Interpreter', 'none' );
grid on



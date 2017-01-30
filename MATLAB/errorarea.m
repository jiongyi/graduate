function errorarea(xRow, meanRow, stdRow)
% Plot.
upBndRow = meanRow + stdRow;
btBndRow = meanRow - stdRow;

hold on;
plot(xRow, meanRow, 'linewidth', 1.5);
hArea = area([xRow, xRow(end : -1 : 1)], ...
    [btBndRow, upBndRow(end : -1 : 1)]);
set(hArea, 'EdgeColor', 'none');
set(get(hArea, 'Children'), 'FaceAlpha', 0.3);
hold off;
end
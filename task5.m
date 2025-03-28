fig = figure('NumberTitle', 'off', 'ToolBar',
             'none', 'name', 'Задание 5',
             'position', [200, 200, 300, 300]);

axes('Position', [0.1 0.26 0.85 0.7]);




global inp1 inp2 texttt btn


btn = uicontrol('style', 'pushbutton',
               'string', 'Отобразить график',
               'Units', 'normalized',
               'position', [0.01, 0.01, 0.9, 0.08],
               'callback', @button_callback, ...
               'FontUnits', 'normalized');


inp1 = uicontrol('style', 'edit',
                'string', '',
                'Units', 'normalized', ...
                'position', [0.53, 0.1, 0.18, 0.08]);

inp2 = uicontrol('style', 'edit',
                    'string', '',
                    'Units', 'normalized',
                    'position', [0.73, 0.1, 0.18, 0.08]);


texttt = uicontrol('style', 'text',
                      'string', 'Границы Оси Х:',
                      'Units', 'normalized',
                      'position', [0.01, 0.1, 0.5, 0.08],
                      'FontUnits', 'normalized',
                      'HorizontalAlignment', 'left');

function button_callback(h,event)
    global inp1 inp2
    x1 = str2double(get(inp1, 'String'));
    x2 = str2double(get(inp2, 'String'));
    fplot(@(x) sin(3 * x),[x1,x2]);
end

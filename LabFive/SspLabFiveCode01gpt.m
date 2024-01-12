% Circular Convolution: Perform circular convolution of two sequences

% Input Sequences
x1 = input("Enter the first sequence: ");
x2 = input("Enter the second sequence: ");

% Calculate lengths of input sequences
l1 = length(x1);
l2 = length(x2);

% Determine the length of the result sequence
n1 = max(l1, l2);
l = l1 - l2;

% Zero-pad the shorter sequence to make both sequences of equal length
if l >= 0
    x2 = [x2, zeros(1, l)];
else
    x1 = [x1, zeros(1, -l)];
end

% Initialize the result sequence
y = zeros(1, n1);

% Perform Circular Convolution
for n = 1:n1
    % Initialize the convolution result at index n
    y(n) = 0;

    for i = 1:n1
        % Calculate the circular index j
        j = n - i + 1;
        
        % Adjust j to handle circular convolution
        if j <= 0
            j = n1 + j;
        end

        % Accumulate the convolution result
        y(n) = y(n) + x1(i) * x2(j);
    end
end

% Display the Circular Convolution Result
disp("Circular Convolution Result:");
disp(y);

% Plot the Input Sequences and Circular Convolution Result
figure;

subplot(3, 1, 1);
stem(0:n1-1, x1);
title('Input Sequence 1');
xlabel('n');
ylabel('Amplitude');

subplot(3, 1, 2);
stem(0:n1-1, x2);
title('Input Sequence 2');
xlabel('n');
ylabel('Amplitude');

subplot(3, 1, 3);
stem(0:n1-1, y);
title('Circular Convolution Result');
xlabel('n');
ylabel('Amplitude');

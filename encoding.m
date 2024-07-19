function [outputArg] = encoding(G,Kc,input_seq)
    
    encoded_msg = [];

    arr = [input_seq(1)];

    for i=1:Kc-1
        arr = [arr 0];
    end

    for i=1:length(input_seq)
        arr1 = arr';
        arr2 = G*arr1;
        arr2 = mod(arr2,2);
        encoded_msg = [encoded_msg arr2'];
        for j=Kc:-1:2
            arr(j) = arr(j-1);
        end
        if(i~=length(input_seq))
            arr(1)=input_seq(i+1);
        end
    end

    outputArg = encoded_msg;
end


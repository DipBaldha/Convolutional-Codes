function [outputArg] = state_diag(G,Kc,n) 
    no_of_states = 2^(Kc-1);
    arr = zeros(no_of_states,Kc-1);
    for i=0:no_of_states-1
        x=int2bit(i,Kc-1);
        x1 = x';
        arr(i+1,:)=x1;
    end
    outputArg = zeros(no_of_states,4);
    for i=1:no_of_states
        arr0 = arr(i,:);
        arr0 = [0 arr0];
        op0 = mod(G*arr0',2);
        outputArg(i,1)=bit2int(op0,n);
        next_state0 = [];
        for j=1:Kc-1
            next_state0 = [next_state0 arr0(j)];
        end
        x = bit2int(next_state0',Kc-1);
        outputArg(i,3)=x;

        arr1 = arr(i,:);
        arr1 = [1 arr1];
        op1 = mod(G*arr1',2);
        outputArg(i,2)=bit2int(op1,n);
        next_state1 = [];
        for j=1:Kc-1
            next_state1 = [next_state1 arr1(j)];
        end
        outputArg(i,4)=bit2int(next_state1',Kc-1);
    end
end
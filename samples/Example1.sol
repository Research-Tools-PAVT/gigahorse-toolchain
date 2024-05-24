pragma solidity >=0.4.2 <=0.8.27;

contract Add {
    function one(uint a) 
        public 
        pure 
    {
       uint c = 0;
       uint b = 512;
       while (a > 0 && c < 4096) {
            a = a - 32;
            c = c + 4 * b;
       }
    }

    function two(uint a) 
        public 
        pure 
    {
       uint c = 0;
       uint b = 512;
       if (a > 0) {
            a = a + 1024;
       } else {
            a = a - 1024;
       }
       c = a + b;
    }

}

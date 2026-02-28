(*
 * A2I: Ascii to Integer conversion class
 *)
class A2I {
    (* Converts a String to an Int. Assumes the string contains only digits. *)
    a2i(s : String) : Int {
        if s.length() = 0 then 0 else
            (let result : Int <- 0 in
             (let i : Int <- 0 in
              (while i < s.length() loop
                 {
                    result <- result * 10 + (s.substr(i, 1)).ord();
                    i <- i + 1;
                 }
               pool;
               result - '0' * (s.length())  -- subtract ASCII '0' offset
              )
             )
            )
        fi
    };

    (* Converts an Int to a String. Only works for non-negative integers. *)
    i2a(i : Int) : String {
        if i = 0 then "0" else
            (let result : String <- "" in
             (let n : Int <- i in
              (while n > 0 loop
                 {
                    result <- (chr(n % 10 + '0')).concat(result);
                    n <- n / 10;
                 }
               pool;
               result
              )
             )
            )
        fi
    };
};

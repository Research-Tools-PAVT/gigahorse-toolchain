
/// @use-src 0:"samples/Add.sol"
object "Add_77" {
    code {
        /// @src 0:37:508  "contract Add {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_Add_77()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("Add_77_deployed"), datasize("Add_77_deployed"))

        return(_1, datasize("Add_77_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 0:37:508  "contract Add {..."
        function constructor_Add_77() {

            /// @src 0:37:508  "contract Add {..."

        }
        /// @src 0:37:508  "contract Add {..."

    }
    /// @use-src 0:"samples/Add.sol"
    object "Add_77_deployed" {
        code {
            /// @src 0:37:508  "contract Add {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0xcf2a8612
                {
                    // two(uint256)

                    external_fun_two_76()
                }

                case 0xef56f928
                {
                    // one(uint256)

                    external_fun_one_38()
                }

                default {}
            }

            revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74()

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function allocate_unbounded() -> memPtr {
                memPtr := mload(64)
            }

            function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
                revert(0, 0)
            }

            function revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() {
                revert(0, 0)
            }

            function revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() {
                revert(0, 0)
            }

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function validator_revert_t_uint256(value) {
                if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint256(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint256(value)
            }

            function abi_decode_tuple_t_uint256(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function external_fun_two_76() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                fun_two_76(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_one_38() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                fun_one_38(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
            }

            function cleanup_t_rational_512_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_512_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_512_by_1(value)))
            }

            function cleanup_t_rational_1024_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1024_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1024_by_1(value)))
            }

            function panic_error_0x11() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
            }

            function checked_sub_t_uint256(x, y) -> diff {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                diff := sub(x, y)

                if gt(diff, x) { panic_error_0x11() }

            }

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                sum := add(x, y)

                if gt(x, sum) { panic_error_0x11() }

            }

            /// @ast-id 76
            /// @src 0:273:503  "function two(uint a) ..."
            function fun_two_76(var_a_40) {

                /// @src 0:351:352  "0"
                let expr_45 := 0x00
                /// @src 0:342:352  "uint c = 0"
                let var_c_44 := convert_t_rational_0_by_1_to_t_uint256(expr_45)
                /// @src 0:371:374  "512"
                let expr_49 := 0x0200
                /// @src 0:362:374  "uint b = 512"
                let var_b_48 := convert_t_rational_512_by_1_to_t_uint256(expr_49)
                /// @src 0:388:389  "a"
                let _1 := var_a_40
                let expr_51 := _1
                /// @src 0:392:393  "0"
                let expr_52 := 0x00
                /// @src 0:388:393  "a > 0"
                let expr_53 := gt(cleanup_t_uint256(expr_51), convert_t_rational_0_by_1_to_t_uint256(expr_52))
                /// @src 0:384:477  "if (a > 0) {..."
                switch expr_53
                case 0 {
                    /// @src 0:458:459  "a"
                    let _2 := var_a_40
                    let expr_62 := _2
                    /// @src 0:462:466  "1024"
                    let expr_63 := 0x0400
                    /// @src 0:458:466  "a - 1024"
                    let expr_64 := checked_sub_t_uint256(expr_62, convert_t_rational_1024_by_1_to_t_uint256(expr_63))

                    /// @src 0:454:466  "a = a - 1024"
                    var_a_40 := expr_64
                    let expr_65 := expr_64
                    /// @src 0:384:477  "if (a > 0) {..."
                }
                default {
                    /// @src 0:414:415  "a"
                    let _3 := var_a_40
                    let expr_55 := _3
                    /// @src 0:418:422  "1024"
                    let expr_56 := 0x0400
                    /// @src 0:414:422  "a + 1024"
                    let expr_57 := checked_add_t_uint256(expr_55, convert_t_rational_1024_by_1_to_t_uint256(expr_56))

                    /// @src 0:410:422  "a = a + 1024"
                    var_a_40 := expr_57
                    let expr_58 := expr_57
                    /// @src 0:384:477  "if (a > 0) {..."
                }
                /// @src 0:490:491  "a"
                let _4 := var_a_40
                let expr_70 := _4
                /// @src 0:494:495  "b"
                let _5 := var_b_48
                let expr_71 := _5
                /// @src 0:490:495  "a + b"
                let expr_72 := checked_add_t_uint256(expr_70, expr_71)

                /// @src 0:486:495  "c = a + b"
                var_c_44 := expr_72
                let expr_73 := expr_72

            }
            /// @src 0:37:508  "contract Add {..."

            function cleanup_t_rational_4096_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4096_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4096_by_1(value)))
            }

            function cleanup_t_rational_32_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_32_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_32_by_1(value)))
            }

            function cleanup_t_rational_4_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4_by_1(value)))
            }

            function checked_mul_t_uint256(x, y) -> product {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                let product_raw := mul(x, y)
                product := cleanup_t_uint256(product_raw)

                // overflow, if x != 0 and y != product/x
                if iszero(
                    or(
                        iszero(x),
                        eq(y, div(product, x))
                    )
                ) { panic_error_0x11() }

            }

            /// @ast-id 38
            /// @src 0:57:265  "function one(uint a) ..."
            function fun_one_38(var_a_3) {

                /// @src 0:135:136  "0"
                let expr_8 := 0x00
                /// @src 0:126:136  "uint c = 0"
                let var_c_7 := convert_t_rational_0_by_1_to_t_uint256(expr_8)
                /// @src 0:155:158  "512"
                let expr_12 := 0x0200
                /// @src 0:146:158  "uint b = 512"
                let var_b_11 := convert_t_rational_512_by_1_to_t_uint256(expr_12)
                /// @src 0:168:258  "while (a > 0 && c < 4096) {..."
                for {
                    } 1 {
                }
                {
                    /// @src 0:175:176  "a"
                    let _6 := var_a_3
                    let expr_14 := _6
                    /// @src 0:179:180  "0"
                    let expr_15 := 0x00
                    /// @src 0:175:180  "a > 0"
                    let expr_16 := gt(cleanup_t_uint256(expr_14), convert_t_rational_0_by_1_to_t_uint256(expr_15))
                    /// @src 0:175:192  "a > 0 && c < 4096"
                    let expr_20 := expr_16
                    if expr_20 {
                        /// @src 0:184:185  "c"
                        let _7 := var_c_7
                        let expr_17 := _7
                        /// @src 0:188:192  "4096"
                        let expr_18 := 0x1000
                        /// @src 0:184:192  "c < 4096"
                        let expr_19 := lt(cleanup_t_uint256(expr_17), convert_t_rational_4096_by_1_to_t_uint256(expr_18))
                        /// @src 0:175:192  "a > 0 && c < 4096"
                        expr_20 := expr_19
                    }
                    if iszero(expr_20) { break }
                    /// @src 0:213:214  "a"
                    let _8 := var_a_3
                    let expr_22 := _8
                    /// @src 0:217:219  "32"
                    let expr_23 := 0x20
                    /// @src 0:213:219  "a - 32"
                    let expr_24 := checked_sub_t_uint256(expr_22, convert_t_rational_32_by_1_to_t_uint256(expr_23))
                    let expr_101 := verbatim_0i_1o(hex"6001")
                    /// @src 0:209:219  "a = a - 32"
                    var_a_3 := expr_24
                    let expr_25 := expr_24
                    /// @src 0:238:239  "c"
                    let _9 := var_c_7
                    let expr_28 := _9
                    /// @src 0:242:243  "4"
                    let expr_29 := 0x04
                    /// @src 0:246:247  "b"
                    let _10 := var_b_11
                    let expr_30 := _10
                    /// @src 0:242:247  "4 * b"
                    let expr_31 := checked_mul_t_uint256(convert_t_rational_4_by_1_to_t_uint256(expr_29), expr_30)

                    /// @src 0:238:247  "c + 4 * b"
                    let expr_32 := checked_add_t_uint256(expr_28, expr_31)

                    /// @src 0:234:247  "c = c + 4 * b"
                    var_c_7 := expr_32
                    let expr_33 := expr_32
                }

            }
            /// @src 0:37:508  "contract Add {..."

        }

        data ".metadata" hex"a2646970667358221220b30a638ed21f224de0598df1efc4999dd0aa609e4b5b428a5eb9e58491bbbcdd64736f6c634300081a0033"
    }

}


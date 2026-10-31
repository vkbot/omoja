package com.sun.jna.win32;

import com.sun.jna.FunctionMapper;
import com.sun.jna.Library;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface StdCallLibrary extends Library, StdCall {
    public static final FunctionMapper FUNCTION_MAPPER = new StdCallFunctionMapper();
    public static final int STDCALL_CONVENTION = 63;
}

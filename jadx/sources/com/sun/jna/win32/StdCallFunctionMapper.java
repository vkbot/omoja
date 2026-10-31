package com.sun.jna.win32;

import ai.onnxruntime.AbstractC0074a;
import com.sun.jna.FunctionMapper;
import com.sun.jna.Native;
import com.sun.jna.NativeLibrary;
import com.sun.jna.NativeMapped;
import com.sun.jna.NativeMappedConverter;
import java.lang.reflect.Method;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class StdCallFunctionMapper implements FunctionMapper {
    public int getArgumentNativeStackSize(Class<?> cls) {
        if (NativeMapped.class.isAssignableFrom(cls)) {
            cls = NativeMappedConverter.getInstance(cls).nativeType();
        }
        if (cls.isArray()) {
            return Native.POINTER_SIZE;
        }
        try {
            return Native.getNativeSize(cls);
        } catch (IllegalArgumentException unused) {
            C1929i.m3029k(AbstractC0074a.m159j(cls, "Unknown native stack allocation size for "));
            return 0;
        }
    }

    @Override // com.sun.jna.FunctionMapper
    public String getFunctionName(NativeLibrary nativeLibrary, Method method) {
        String name = method.getName();
        int argumentNativeStackSize = 0;
        for (Class<?> cls : method.getParameterTypes()) {
            argumentNativeStackSize += getArgumentNativeStackSize(cls);
        }
        String str = name + "@" + argumentNativeStackSize;
        try {
            try {
                return nativeLibrary.getFunction(str, 63).getName();
            } catch (UnsatisfiedLinkError unused) {
                return nativeLibrary.getFunction("_" + str, 63).getName();
            }
        } catch (UnsatisfiedLinkError unused2) {
            return name;
        }
    }
}

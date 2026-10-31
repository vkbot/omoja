package com.sun.jna;

import java.lang.reflect.Method;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class NativeLibrary$2 extends Function {
    final /* synthetic */ NativeLibrary this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeLibrary$2(NativeLibrary nativeLibrary, NativeLibrary nativeLibrary2, String str, int i9, String str2) {
        super(nativeLibrary2, str, i9, str2);
        this.this$0 = nativeLibrary;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Function
    public Object invoke(Object[] objArr, Class<?> cls, boolean z8, int i9) {
        return Integer.valueOf(Native.getLastError());
    }

    @Override // com.sun.jna.Function
    public Object invoke(Method method, Class<?>[] clsArr, Class<?> cls, Object[] objArr, Map<String, ?> map) {
        return Integer.valueOf(Native.getLastError());
    }
}

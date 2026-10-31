package com.sun.jna;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Structure$1 extends ThreadLocal<Map<Pointer, Structure>> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.ThreadLocal
    /* JADX INFO: renamed from: initialValue, reason: avoid collision after fix types in other method */
    public synchronized Map<Pointer, Structure> initialValue2() {
        return new HashMap();
    }

    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.lang.ThreadLocal
    public /* bridge */ /* synthetic */ Map<Pointer, Structure> initialValue() {
        return initialValue2();
    }
}

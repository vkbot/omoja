package com.sun.jna;

import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Structure$2 extends ThreadLocal<Set<Structure>> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.ThreadLocal
    /* JADX INFO: renamed from: initialValue, reason: avoid collision after fix types in other method */
    public synchronized Set<Structure> initialValue2() {
        return new Structure$StructureSet();
    }

    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.lang.ThreadLocal
    public /* bridge */ /* synthetic */ Set<Structure> initialValue() {
        return initialValue2();
    }
}

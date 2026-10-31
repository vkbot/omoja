package com.bumptech.glide;

import java.util.Iterator;

/* JADX INFO: renamed from: com.bumptech.glide.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC1034g {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f1090a = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ boolean m1294a(int i10, int i11) {
        if (i10 != 0) {
            return i10 == i11;
        }
        throw null;
    }

    /* JADX INFO: renamed from: b */
    public static ClassCastException m1295b(Iterator it) {
        it.next().getClass();
        return new ClassCastException();
    }

    /* JADX INFO: renamed from: c */
    public static /* synthetic */ int m1296c(int i10) {
        if (i10 != 0) {
            return i10 - 1;
        }
        throw null;
    }

    /* JADX INFO: renamed from: d */
    public static /* synthetic */ int[] m1297d(int i10) {
        int[] iArr = new int[i10];
        System.arraycopy(f1090a, 0, iArr, 0, i10);
        return iArr;
    }
}

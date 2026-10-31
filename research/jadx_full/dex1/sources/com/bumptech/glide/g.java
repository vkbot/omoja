package com.bumptech.glide;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract /* synthetic */ class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f565a = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean a(int i9, int i10) {
        if (i9 != 0) {
            return i9 == i10;
        }
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ClassCastException b(Iterator it) {
        it.next().getClass();
        return new ClassCastException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int c(int i9) {
        if (i9 != 0) {
            return i9 - 1;
        }
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int[] d(int i9) {
        int[] iArr = new int[i9];
        System.arraycopy(f565a, 0, iArr, 0, i9);
        return iArr;
    }
}

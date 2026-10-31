package com.google.protobuf;

import java.io.IOException;
import java.util.logging.Logger;

/* JADX INFO: renamed from: com.google.protobuf.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1128a {
    protected int memoizedHashCode;

    /* JADX INFO: renamed from: a */
    public abstract int mo1893a(InterfaceC1134b1 interfaceC1134b1);

    /* JADX INFO: renamed from: b */
    public final byte[] m1894b() {
        try {
            int iMo1893a = ((AbstractC1202y) this).mo1893a(null);
            byte[] bArr = new byte[iMo1893a];
            Logger logger = AbstractC1169n.f2730b;
            C1160k c1160k = new C1160k(bArr, 0, iMo1893a);
            mo1895c(c1160k);
            if (c1160k.m2011B() == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e) {
            throw new RuntimeException("Serializing " + getClass().getName() + " to a byte array threw an IOException (should never happen).", e);
        }
    }

    /* JADX INFO: renamed from: c */
    public abstract void mo1895c(AbstractC1169n abstractC1169n);
}

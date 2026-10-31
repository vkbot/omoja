package com.google.protobuf;

import java.io.IOException;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class a {
    protected int memoizedHashCode;

    public abstract int a(b1 b1Var);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final byte[] b() {
        try {
            int iA = ((y) this).a(null);
            byte[] bArr = new byte[iA];
            Logger logger = n.f1534b;
            k kVar = new k(bArr, 0, iA);
            c(kVar);
            if (kVar.B() == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e) {
            throw new RuntimeException("Serializing " + getClass().getName() + " to a byte array threw an IOException (should never happen).", e);
        }
    }

    public abstract void c(n nVar);
}

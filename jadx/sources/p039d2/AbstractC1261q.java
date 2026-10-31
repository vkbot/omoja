package p039d2;

import ai.onnxruntime.AbstractC0074a;
import android.util.Base64;

/* JADX INFO: renamed from: d2.q */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1261q {
    public final String toString() {
        C1254j c1254j = (C1254j) this;
        byte[] bArr = c1254j.f2965b;
        String strEncodeToString = bArr == null ? "" : Base64.encodeToString(bArr, 2);
        StringBuilder sb = new StringBuilder("TransportContext(");
        sb.append(c1254j.f2964a);
        sb.append(", ");
        sb.append(c1254j.f2966c);
        sb.append(", ");
        return AbstractC0074a.m165p(sb, strEncodeToString, ")");
    }
}

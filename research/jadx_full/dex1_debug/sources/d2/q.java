package d2;

import android.util.Base64;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class q {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        j jVar = (j) this;
        byte[] bArr = jVar.f1684b;
        String strEncodeToString = bArr == null ? "" : Base64.encodeToString(bArr, 2);
        StringBuilder sb = new StringBuilder("TransportContext(");
        sb.append(jVar.f1683a);
        sb.append(", ");
        sb.append(jVar.c);
        sb.append(", ");
        return ai.onnxruntime.a.p(sb, strEncodeToString, ")");
    }
}

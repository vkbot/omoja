package p051e4;

import ai.onnxruntime.AbstractC0074a;
import com.google.protobuf.AbstractC1178q;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: e4.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1482o {

    /* JADX INFO: renamed from: a */
    public int f3597a;

    /* JADX INFO: renamed from: b */
    public int f3598b;

    /* JADX INFO: renamed from: c */
    public Object f3599c;

    /* JADX INFO: renamed from: d */
    public Object f3600d;

    public C1482o(String str, String str2, int i10, int i11) {
        this.f3599c = str;
        this.f3600d = str2;
        this.f3597a = i10 != 1 ? 2 : 1;
        if (i11 != 30 && i11 != 70) {
            i11 = 50;
        }
        this.f3598b = i11;
    }

    /* JADX INFO: renamed from: a */
    public String m2542a() {
        String str = (String) this.f3600d;
        boolean z9 = str != null;
        String str2 = (String) this.f3599c;
        if (!z9) {
            return str2;
        }
        StringBuilder sbM170u = AbstractC0074a.m170u(str2);
        AbstractC1178q.m2087u(new byte[]{34}, new byte[]{14, 18, -30, -76, 51, 83, -66, -3}, sbM170u, str);
        sbM170u.append(AbstractC1387m.m2421h(new byte[]{-82}, new byte[]{-126, -33, -36, 120, 121, -20, -75, -92}));
        sbM170u.append(this.f3597a);
        sbM170u.append(AbstractC1387m.m2421h(new byte[]{75}, new byte[]{103, 72, 121, 50, 122, 40, -112, 12}));
        sbM170u.append(this.f3598b);
        return sbM170u.toString();
    }

    public C1482o() {
        this.f3598b = 50;
    }
}

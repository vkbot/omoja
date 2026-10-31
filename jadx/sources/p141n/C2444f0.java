package p141n;

import android.net.Uri;
import com.bumptech.glide.load.data.C1040a;
import com.bumptech.glide.load.data.C1053n;
import com.bumptech.glide.load.data.InterfaceC1044e;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import p015b0.C0859b;
import p077h.C1646h;

/* JADX INFO: renamed from: n.f0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2444f0 implements InterfaceC2457r {

    /* JADX INFO: renamed from: b */
    public static final Set f6623b = Collections.unmodifiableSet(new HashSet(Arrays.asList("file", "content", "android.resource")));

    /* JADX INFO: renamed from: a */
    public final Object f6624a;

    public C2444f0(C2442e0 c2442e0) {
        this.f6624a = c2442e0;
    }

    @Override // p141n.InterfaceC2457r
    /* JADX INFO: renamed from: a */
    public final boolean mo3790a(Object obj) {
        return f6623b.contains(((Uri) obj).getScheme());
    }

    @Override // p141n.InterfaceC2457r
    /* JADX INFO: renamed from: b */
    public final C2456q mo3791b(Object obj, int i10, int i11, C1646h c1646h) {
        InterfaceC1044e c1040a;
        Uri uri = (Uri) obj;
        C0859b c0859b = new C0859b(uri);
        C2442e0 c2442e0 = (C2442e0) this.f6624a;
        switch (c2442e0.f6621b) {
            case 0:
                c1040a = new C1040a(c2442e0.f6622c, uri, 0);
                break;
            case 1:
                c1040a = new C1040a(c2442e0.f6622c, uri, 1);
                break;
            default:
                c1040a = new C1053n(1, uri, c2442e0.f6622c);
                break;
        }
        return new C2456q(c0859b, c1040a);
    }
}

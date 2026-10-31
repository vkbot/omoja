package p141n;

import android.net.Uri;
import android.text.TextUtils;
import java.io.File;
import java.net.URL;
import p077h.C1646h;

/* JADX INFO: renamed from: n.b0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2436b0 implements InterfaceC2457r {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f6606a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC2457r f6607b;

    public /* synthetic */ C2436b0(InterfaceC2457r interfaceC2457r, int i10) {
        this.f6606a = i10;
        this.f6607b = interfaceC2457r;
    }

    @Override // p141n.InterfaceC2457r
    /* JADX INFO: renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo3790a(Object obj) {
        switch (this.f6606a) {
            case 0:
                break;
            default:
                break;
        }
        return true;
    }

    @Override // p141n.InterfaceC2457r
    /* JADX INFO: renamed from: b */
    public final C2456q mo3791b(Object obj, int i10, int i11, C1646h c1646h) {
        Uri uriFromFile;
        switch (this.f6606a) {
            case 0:
                String str = (String) obj;
                if (TextUtils.isEmpty(str)) {
                    uriFromFile = null;
                } else if (str.charAt(0) == '/') {
                    uriFromFile = Uri.fromFile(new File(str));
                } else {
                    Uri uri = Uri.parse(str);
                    uriFromFile = uri.getScheme() == null ? Uri.fromFile(new File(str)) : uri;
                }
                if (uriFromFile == null) {
                    return null;
                }
                InterfaceC2457r interfaceC2457r = this.f6607b;
                if (interfaceC2457r.mo3790a(uriFromFile)) {
                    return interfaceC2457r.mo3791b(uriFromFile, i10, i11, c1646h);
                }
                return null;
            default:
                return this.f6607b.mo3791b(new C2445g((URL) obj), i10, i11, c1646h);
        }
    }
}

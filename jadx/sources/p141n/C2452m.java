package p141n;

import android.content.Context;
import android.net.Uri;
import p000a.AbstractC0000a;
import p015b0.C0859b;
import p077h.C1646h;
import p087i.C1734a;
import p087i.C1735b;
import p172q.C3016f0;

/* JADX INFO: renamed from: n.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2452m implements InterfaceC2457r {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f6643a;

    /* JADX INFO: renamed from: b */
    public final Context f6644b;

    public C2452m(Context context, int i10) {
        this.f6643a = i10;
        switch (i10) {
            case 1:
                this.f6644b = context.getApplicationContext();
                break;
            case 2:
                this.f6644b = context.getApplicationContext();
                break;
            default:
                this.f6644b = context;
                break;
        }
    }

    @Override // p141n.InterfaceC2457r
    /* JADX INFO: renamed from: a */
    public final boolean mo3790a(Object obj) {
        switch (this.f6643a) {
            case 0:
                return AbstractC0000a.m13n((Uri) obj);
            case 1:
                Uri uri = (Uri) obj;
                return AbstractC0000a.m13n(uri) && !uri.getPathSegments().contains("video");
            default:
                Uri uri2 = (Uri) obj;
                return AbstractC0000a.m13n(uri2) && uri2.getPathSegments().contains("video");
        }
    }

    @Override // p141n.InterfaceC2457r
    /* JADX INFO: renamed from: b */
    public final C2456q mo3791b(Object obj, int i10, int i11, C1646h c1646h) {
        Long l10;
        switch (this.f6643a) {
            case 0:
                Uri uri = (Uri) obj;
                return new C2456q(new C0859b(uri), new C2451l(0, this.f6644b, uri));
            case 1:
                Uri uri2 = (Uri) obj;
                if (i10 == Integer.MIN_VALUE || i11 == Integer.MIN_VALUE || i10 > 512 || i11 > 384) {
                    return null;
                }
                C0859b c0859b = new C0859b(uri2);
                Context context = this.f6644b;
                return new C2456q(c0859b, C1735b.m2854d(context, uri2, new C1734a(context.getContentResolver(), 0)));
            default:
                Uri uri3 = (Uri) obj;
                if (i10 == Integer.MIN_VALUE || i11 == Integer.MIN_VALUE || i10 > 512 || i11 > 384 || (l10 = (Long) c1646h.m2729c(C3016f0.f8464d)) == null || l10.longValue() != -1) {
                    return null;
                }
                C0859b c0859b2 = new C0859b(uri3);
                Context context2 = this.f6644b;
                return new C2456q(c0859b2, C1735b.m2854d(context2, uri3, new C1734a(context2.getContentResolver(), 1)));
        }
    }
}

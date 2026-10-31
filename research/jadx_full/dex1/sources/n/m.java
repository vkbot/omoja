package n;

import android.content.Context;
import android.net.Uri;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3755a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f3756b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public m(Context context, int i9) {
        this.f3755a = i9;
        switch (i9) {
            case 1:
                this.f3756b = context.getApplicationContext();
                break;
            case 2:
                this.f3756b = context.getApplicationContext();
                break;
            default:
                this.f3756b = context;
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.r
    public final boolean a(Object obj) {
        switch (this.f3755a) {
            case 0:
                return a.a.n((Uri) obj);
            case 1:
                Uri uri = (Uri) obj;
                return a.a.n(uri) && !uri.getPathSegments().contains("video");
            default:
                Uri uri2 = (Uri) obj;
                return a.a.n(uri2) && uri2.getPathSegments().contains("video");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.r
    public final q b(Object obj, int i9, int i10, h.h hVar) {
        Long l9;
        switch (this.f3755a) {
            case 0:
                Uri uri = (Uri) obj;
                return new q(new b0.b(uri), new l(0, this.f3756b, uri));
            case 1:
                Uri uri2 = (Uri) obj;
                if (i9 == Integer.MIN_VALUE || i10 == Integer.MIN_VALUE || i9 > 512 || i10 > 384) {
                    return null;
                }
                b0.b bVar = new b0.b(uri2);
                Context context = this.f3756b;
                return new q(bVar, i.b.d(context, uri2, new i.a(context.getContentResolver(), 0)));
            default:
                Uri uri3 = (Uri) obj;
                if (i9 == Integer.MIN_VALUE || i10 == Integer.MIN_VALUE || i9 > 512 || i10 > 384 || (l9 = (Long) hVar.c(q.f0.d)) == null || l9.longValue() != -1) {
                    return null;
                }
                b0.b bVar2 = new b0.b(uri3);
                Context context2 = this.f3756b;
                return new q(bVar2, i.b.d(context2, uri3, new i.a(context2.getContentResolver(), 1)));
        }
    }
}

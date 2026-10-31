package n;

import android.net.Uri;
import android.text.TextUtils;
import java.io.File;
import java.net.URL;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b0 implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3731a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final r f3732b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b0(r rVar, int i9) {
        this.f3731a = i9;
        this.f3732b = rVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.r
    public final /* bridge */ /* synthetic */ boolean a(Object obj) {
        switch (this.f3731a) {
            case 0:
                break;
            default:
                break;
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.r
    public final q b(Object obj, int i9, int i10, h.h hVar) {
        Uri uriFromFile;
        switch (this.f3731a) {
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
                r rVar = this.f3732b;
                if (rVar.a(uriFromFile)) {
                    return rVar.b(uriFromFile, i9, i10, hVar);
                }
                return null;
            default:
                return this.f3732b.b(new g((URL) obj), i9, i10, hVar);
        }
    }
}

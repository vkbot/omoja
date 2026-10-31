package s;

import android.content.Context;
import android.content.pm.PackageManager$NameNotFoundException;
import android.content.res.Resources;
import android.content.res.Resources$Theme;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import h.g;
import h.h;
import h.j;
import j.d0;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c implements j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final g f5039b = new g("com.bumptech.glide.load.resource.bitmap.Downsampler.Theme", null, g.e);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f5040a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(Context context) {
        this.f5040a = context.getApplicationContext();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.j
    public final /* bridge */ /* synthetic */ d0 a(Object obj, int i9, int i10, h hVar) {
        return c((Uri) obj, hVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.j
    public final boolean b(Object obj, h hVar) {
        String scheme = ((Uri) obj).getScheme();
        return scheme != null && scheme.equals("android.resource");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final d0 c(Uri uri, h hVar) {
        Context contextCreatePackageContext;
        int identifier;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            ai.onnxruntime.b.g(uri, "Package name for ", " is null or empty");
            return null;
        }
        Context context = this.f5040a;
        if (authority.equals(context.getPackageName())) {
            contextCreatePackageContext = context;
        } else {
            try {
                contextCreatePackageContext = context.createPackageContext(authority, 0);
            } catch (PackageManager$NameNotFoundException e) {
                if (!authority.contains(context.getPackageName())) {
                    throw new IllegalArgumentException("Failed to obtain context or unrecognized Uri format for: " + uri, e);
                }
                contextCreatePackageContext = context;
            }
        }
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            List<String> pathSegments2 = uri.getPathSegments();
            String authority2 = uri.getAuthority();
            String str = pathSegments2.get(0);
            String str2 = pathSegments2.get(1);
            identifier = contextCreatePackageContext.getResources().getIdentifier(str2, str, authority2);
            if (identifier == 0) {
                identifier = Resources.getSystem().getIdentifier(str2, str, "android");
            }
            if (identifier == 0) {
                androidx.navigation.b.t(uri, "Failed to find resource id for: ");
                return null;
            }
        } else {
            if (pathSegments.size() != 1) {
                androidx.navigation.b.t(uri, "Unrecognized Uri format: ");
                return null;
            }
            try {
                identifier = Integer.parseInt(uri.getPathSegments().get(0));
            } catch (NumberFormatException e6) {
                throw new IllegalArgumentException("Unrecognized Uri format: " + uri, e6);
            }
        }
        Resources$Theme resources$Theme = authority.equals(context.getPackageName()) ? (Resources$Theme) hVar.c(f5039b) : null;
        Drawable drawableM = resources$Theme == null ? com.bumptech.glide.c.m(context, contextCreatePackageContext, identifier, null) : com.bumptech.glide.c.m(context, context, identifier, resources$Theme);
        if (drawableM != null) {
            return new b(drawableM, 0);
        }
        return null;
    }
}

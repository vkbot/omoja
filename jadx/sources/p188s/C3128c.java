package p188s;

import ai.onnxruntime.C0075b;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import androidx.navigation.C0674b;
import com.bumptech.glide.AbstractC1030c;
import java.util.List;
import p077h.C1645g;
import p077h.C1646h;
import p077h.InterfaceC1648j;
import p097j.InterfaceC1889d0;

/* JADX INFO: renamed from: s.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3128c implements InterfaceC1648j {

    /* JADX INFO: renamed from: b */
    public static final C1645g f8945b = new C1645g("com.bumptech.glide.load.resource.bitmap.Downsampler.Theme", null, C1645g.f4177e);

    /* JADX INFO: renamed from: a */
    public final Context f8946a;

    public C3128c(Context context) {
        this.f8946a = context.getApplicationContext();
    }

    @Override // p077h.InterfaceC1648j
    /* JADX INFO: renamed from: a */
    public final /* bridge */ /* synthetic */ InterfaceC1889d0 mo2730a(Object obj, int i10, int i11, C1646h c1646h) {
        return m4971c((Uri) obj, c1646h);
    }

    @Override // p077h.InterfaceC1648j
    /* JADX INFO: renamed from: b */
    public final boolean mo2731b(Object obj, C1646h c1646h) {
        String scheme = ((Uri) obj).getScheme();
        return scheme != null && scheme.equals("android.resource");
    }

    /* JADX INFO: renamed from: c */
    public final InterfaceC1889d0 m4971c(Uri uri, C1646h c1646h) {
        Context contextCreatePackageContext;
        int identifier;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            C0075b.m182g(uri, "Package name for ", " is null or empty");
            return null;
        }
        Context context = this.f8946a;
        if (authority.equals(context.getPackageName())) {
            contextCreatePackageContext = context;
        } else {
            try {
                contextCreatePackageContext = context.createPackageContext(authority, 0);
            } catch (PackageManager.NameNotFoundException e) {
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
                C0674b.m853t(uri, "Failed to find resource id for: ");
                return null;
            }
        } else {
            if (pathSegments.size() != 1) {
                C0674b.m853t(uri, "Unrecognized Uri format: ");
                return null;
            }
            try {
                identifier = Integer.parseInt(uri.getPathSegments().get(0));
            } catch (NumberFormatException e6) {
                throw new IllegalArgumentException("Unrecognized Uri format: " + uri, e6);
            }
        }
        Resources.Theme theme = authority.equals(context.getPackageName()) ? (Resources.Theme) c1646h.m2729c(f8945b) : null;
        Drawable drawableM1259m = theme == null ? AbstractC1030c.m1259m(context, contextCreatePackageContext, identifier, null) : AbstractC1030c.m1259m(context, context, identifier, theme);
        if (drawableM1259m != null) {
            return new C3127b(drawableM1259m, 0);
        }
        return null;
    }
}

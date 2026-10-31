package p141n;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.net.Uri;
import android.util.Log;
import com.bumptech.glide.load.data.C1050k;
import com.bumptech.glide.manager.C1069o;
import java.util.List;
import org.apache.commons.p161io.IOUtils;
import p015b0.C0859b;
import p077h.C1646h;
import p188s.C3128c;

/* JADX INFO: renamed from: n.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2435b implements InterfaceC2457r {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f6603a = 1;

    /* JADX INFO: renamed from: b */
    public final Object f6604b;

    /* JADX INFO: renamed from: c */
    public final Object f6605c;

    public C2435b(Context context, C1069o c1069o) {
        this.f6605c = context.getApplicationContext();
        this.f6604b = c1069o;
    }

    @Override // p141n.InterfaceC2457r
    /* JADX INFO: renamed from: a */
    public final boolean mo3790a(Object obj) {
        switch (this.f6603a) {
            case 0:
                Uri uri = (Uri) obj;
                return "file".equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && "android_asset".equals(uri.getPathSegments().get(0));
            case 1:
                return true;
            case 2:
                return true;
            default:
                Uri uri2 = (Uri) obj;
                return "android.resource".equals(uri2.getScheme()) && ((Context) this.f6605c).getPackageName().equals(uri2.getAuthority());
        }
    }

    @Override // p141n.InterfaceC2457r
    /* JADX INFO: renamed from: b */
    public final C2456q mo3791b(Object obj, int i10, int i11, C1646h c1646h) {
        C1050k c1050k;
        Uri uri;
        switch (this.f6603a) {
            case 0:
                Uri uri2 = (Uri) obj;
                String strSubstring = uri2.toString().substring(22);
                C0859b c0859b = new C0859b(uri2);
                AssetManager assetManager = (AssetManager) this.f6605c;
                switch (((C2433a) this.f6604b).f6599b) {
                    case 0:
                        c1050k = new C1050k(assetManager, strSubstring, 0);
                        break;
                    default:
                        c1050k = new C1050k(assetManager, strSubstring, 1);
                        break;
                }
                return new C2456q(c0859b, c1050k);
            case 1:
                Integer num = (Integer) obj;
                Resources.Theme theme = (Resources.Theme) c1646h.m2729c(C3128c.f8945b);
                return new C2456q(new C0859b(num), new C2441e(theme, theme != null ? theme.getResources() : ((Context) this.f6605c).getResources(), (C1069o) this.f6604b, num.intValue()));
            case 2:
                Integer num2 = (Integer) obj;
                Resources resources = (Resources) this.f6604b;
                try {
                    uri = Uri.parse("android.resource://" + resources.getResourcePackageName(num2.intValue()) + IOUtils.DIR_SEPARATOR_UNIX + resources.getResourceTypeName(num2.intValue()) + IOUtils.DIR_SEPARATOR_UNIX + resources.getResourceEntryName(num2.intValue()));
                    break;
                } catch (Resources.NotFoundException e) {
                    if (Log.isLoggable("ResourceLoader", 5)) {
                        Log.w("ResourceLoader", "Received invalid resource id: " + num2, e);
                    }
                    uri = null;
                }
                if (uri == null) {
                    return null;
                }
                return ((InterfaceC2457r) this.f6605c).mo3791b(uri, i10, i11, c1646h);
            default:
                Uri uri3 = (Uri) obj;
                InterfaceC2457r interfaceC2457r = (InterfaceC2457r) this.f6604b;
                List<String> pathSegments = uri3.getPathSegments();
                C2456q c2456qMo3791b = null;
                if (pathSegments.size() == 1) {
                    try {
                        int i12 = Integer.parseInt(uri3.getPathSegments().get(0));
                        if (i12 != 0) {
                            c2456qMo3791b = interfaceC2457r.mo3791b(Integer.valueOf(i12), i10, i11, c1646h);
                        } else if (Log.isLoggable("ResourceUriLoader", 5)) {
                            Log.w("ResourceUriLoader", "Failed to parse a valid non-0 resource id from: " + uri3);
                        }
                        return c2456qMo3791b;
                    } catch (NumberFormatException e6) {
                        if (!Log.isLoggable("ResourceUriLoader", 5)) {
                            return c2456qMo3791b;
                        }
                        Log.w("ResourceUriLoader", "Failed to parse resource id from: " + uri3, e6);
                        return c2456qMo3791b;
                    }
                }
                if (pathSegments.size() != 2) {
                    if (!Log.isLoggable("ResourceUriLoader", 5)) {
                        return null;
                    }
                    Log.w("ResourceUriLoader", "Failed to parse resource uri: " + uri3);
                    return null;
                }
                List<String> pathSegments2 = uri3.getPathSegments();
                String str = pathSegments2.get(0);
                String str2 = pathSegments2.get(1);
                Context context = (Context) this.f6605c;
                int identifier = context.getResources().getIdentifier(str2, str, context.getPackageName());
                if (identifier != 0) {
                    return interfaceC2457r.mo3791b(Integer.valueOf(identifier), i10, i11, c1646h);
                }
                if (!Log.isLoggable("ResourceUriLoader", 5)) {
                    return null;
                }
                Log.w("ResourceUriLoader", "Failed to find resource id for: " + uri3);
                return null;
        }
    }

    public C2435b(Resources resources, InterfaceC2457r interfaceC2457r) {
        this.f6604b = resources;
        this.f6605c = interfaceC2457r;
    }

    public C2435b(AssetManager assetManager, C2433a c2433a) {
        this.f6605c = assetManager;
        this.f6604b = c2433a;
    }

    public C2435b(Context context, InterfaceC2457r interfaceC2457r) {
        this.f6605c = context.getApplicationContext();
        this.f6604b = interfaceC2457r;
    }
}

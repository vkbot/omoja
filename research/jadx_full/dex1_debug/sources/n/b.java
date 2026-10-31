package n;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.Resources$NotFoundException;
import android.content.res.Resources$Theme;
import android.net.Uri;
import android.util.Log;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3729a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f3730b;
    public final Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(Context context, com.bumptech.glide.manager.o oVar) {
        this.c = context.getApplicationContext();
        this.f3730b = oVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.r
    public final boolean a(Object obj) {
        switch (this.f3729a) {
            case 0:
                Uri uri = (Uri) obj;
                return "file".equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && "android_asset".equals(uri.getPathSegments().get(0));
            case 1:
                return true;
            case 2:
                return true;
            default:
                Uri uri2 = (Uri) obj;
                return "android.resource".equals(uri2.getScheme()) && ((Context) this.c).getPackageName().equals(uri2.getAuthority());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.r
    public final q b(Object obj, int i9, int i10, h.h hVar) {
        com.bumptech.glide.load.data.k kVar;
        Uri uri;
        switch (this.f3729a) {
            case 0:
                Uri uri2 = (Uri) obj;
                String strSubstring = uri2.toString().substring(22);
                b0.b bVar = new b0.b(uri2);
                AssetManager assetManager = (AssetManager) this.c;
                switch (((a) this.f3730b).f3727b) {
                    case 0:
                        kVar = new com.bumptech.glide.load.data.k(assetManager, strSubstring, 0);
                        break;
                    default:
                        kVar = new com.bumptech.glide.load.data.k(assetManager, strSubstring, 1);
                        break;
                }
                return new q(bVar, kVar);
            case 1:
                Integer num = (Integer) obj;
                Resources$Theme resources$Theme = (Resources$Theme) hVar.c(s.c.f5039b);
                return new q(new b0.b(num), new e(resources$Theme, resources$Theme != null ? resources$Theme.getResources() : ((Context) this.c).getResources(), (com.bumptech.glide.manager.o) this.f3730b, num.intValue()));
            case 2:
                Integer num2 = (Integer) obj;
                Resources resources = (Resources) this.f3730b;
                try {
                    uri = Uri.parse("android.resource://" + resources.getResourcePackageName(num2.intValue()) + '/' + resources.getResourceTypeName(num2.intValue()) + '/' + resources.getResourceEntryName(num2.intValue()));
                    break;
                } catch (Resources$NotFoundException e) {
                    if (Log.isLoggable("ResourceLoader", 5)) {
                        Log.w("ResourceLoader", "Received invalid resource id: " + num2, e);
                    }
                    uri = null;
                }
                if (uri == null) {
                    return null;
                }
                return ((r) this.c).b(uri, i9, i10, hVar);
            default:
                Uri uri3 = (Uri) obj;
                r rVar = (r) this.f3730b;
                List<String> pathSegments = uri3.getPathSegments();
                q qVarB = null;
                if (pathSegments.size() == 1) {
                    try {
                        int i11 = Integer.parseInt(uri3.getPathSegments().get(0));
                        if (i11 != 0) {
                            qVarB = rVar.b(Integer.valueOf(i11), i9, i10, hVar);
                        } else if (Log.isLoggable("ResourceUriLoader", 5)) {
                            Log.w("ResourceUriLoader", "Failed to parse a valid non-0 resource id from: " + uri3);
                        }
                        return qVarB;
                    } catch (NumberFormatException e6) {
                        if (!Log.isLoggable("ResourceUriLoader", 5)) {
                            return qVarB;
                        }
                        Log.w("ResourceUriLoader", "Failed to parse resource id from: " + uri3, e6);
                        return qVarB;
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
                Context context = (Context) this.c;
                int identifier = context.getResources().getIdentifier(str2, str, context.getPackageName());
                if (identifier != 0) {
                    return rVar.b(Integer.valueOf(identifier), i9, i10, hVar);
                }
                if (!Log.isLoggable("ResourceUriLoader", 5)) {
                    return null;
                }
                Log.w("ResourceUriLoader", "Failed to find resource id for: " + uri3);
                return null;
        }
    }

    public b(Resources resources, r rVar) {
        this.f3730b = resources;
        this.c = rVar;
    }

    public b(AssetManager assetManager, a aVar) {
        this.c = assetManager;
        this.f3730b = aVar;
    }

    public b(Context context, r rVar) {
        this.c = context.getApplicationContext();
        this.f3730b = rVar;
    }
}

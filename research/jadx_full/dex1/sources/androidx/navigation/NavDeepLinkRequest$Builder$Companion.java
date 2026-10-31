package androidx.navigation;

import android.net.Uri;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import j1.i;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0006H\u0007J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0007¨\u0006\f"}, d2 = {"Landroidx/navigation/NavDeepLinkRequest$Builder$Companion;", "", "()V", "fromAction", "Landroidx/navigation/NavDeepLinkRequest$Builder;", "action", "", "fromMimeType", "mimeType", "fromUri", "uri", "Landroid/net/Uri;", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class NavDeepLinkRequest$Builder$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ NavDeepLinkRequest$Builder$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public final NavDeepLinkRequest$Builder fromAction(String action) {
        action.getClass();
        if (action.length() <= 0) {
            i.k("The NavDeepLinkRequest cannot have an empty action.");
            return null;
        }
        NavDeepLinkRequest$Builder navDeepLinkRequest$Builder = new NavDeepLinkRequest$Builder(null);
        navDeepLinkRequest$Builder.setAction(action);
        return navDeepLinkRequest$Builder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public final NavDeepLinkRequest$Builder fromMimeType(String mimeType) {
        mimeType.getClass();
        NavDeepLinkRequest$Builder navDeepLinkRequest$Builder = new NavDeepLinkRequest$Builder(null);
        navDeepLinkRequest$Builder.setMimeType(mimeType);
        return navDeepLinkRequest$Builder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public final NavDeepLinkRequest$Builder fromUri(Uri uri) {
        uri.getClass();
        NavDeepLinkRequest$Builder navDeepLinkRequest$Builder = new NavDeepLinkRequest$Builder(null);
        navDeepLinkRequest$Builder.setUri(uri);
        return navDeepLinkRequest$Builder;
    }

    private NavDeepLinkRequest$Builder$Companion() {
    }
}

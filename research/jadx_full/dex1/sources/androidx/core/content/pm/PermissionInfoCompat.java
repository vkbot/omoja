package androidx.core.content.pm;

import android.content.pm.PermissionInfo;
import android.os.Build$VERSION;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class PermissionInfoCompat {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private PermissionInfoCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int getProtection(@NonNull PermissionInfo permissionInfo) {
        return Build$VERSION.SDK_INT >= 28 ? PermissionInfoCompat$Api28Impl.getProtection(permissionInfo) : permissionInfo.protectionLevel & 15;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int getProtectionFlags(@NonNull PermissionInfo permissionInfo) {
        return Build$VERSION.SDK_INT >= 28 ? PermissionInfoCompat$Api28Impl.getProtectionFlags(permissionInfo) : permissionInfo.protectionLevel & (-16);
    }
}

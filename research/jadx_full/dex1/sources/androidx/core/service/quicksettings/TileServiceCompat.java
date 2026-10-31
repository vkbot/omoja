package androidx.core.service.quicksettings;

import android.os.Build$VERSION;
import android.service.quicksettings.TileService;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class TileServiceCompat {
    private static TileServiceCompat$TileServiceWrapper sTileServiceWrapper;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private TileServiceCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public static void clearTileServiceWrapper() {
        sTileServiceWrapper = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public static void setTileServiceWrapper(@NonNull TileServiceCompat$TileServiceWrapper tileServiceCompat$TileServiceWrapper) {
        sTileServiceWrapper = tileServiceCompat$TileServiceWrapper;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void startActivityAndCollapse(@NonNull TileService tileService, @NonNull PendingIntentActivityWrapper pendingIntentActivityWrapper) {
        if (Build$VERSION.SDK_INT >= 34) {
            TileServiceCompat$TileServiceWrapper tileServiceCompat$TileServiceWrapper = sTileServiceWrapper;
            if (tileServiceCompat$TileServiceWrapper != null) {
                tileServiceCompat$TileServiceWrapper.startActivityAndCollapse(pendingIntentActivityWrapper.getPendingIntent());
                return;
            } else {
                TileServiceCompat$Api34Impl.startActivityAndCollapse(tileService, pendingIntentActivityWrapper.getPendingIntent());
                return;
            }
        }
        TileServiceCompat$TileServiceWrapper tileServiceCompat$TileServiceWrapper2 = sTileServiceWrapper;
        if (tileServiceCompat$TileServiceWrapper2 != null) {
            tileServiceCompat$TileServiceWrapper2.startActivityAndCollapse(pendingIntentActivityWrapper.getIntent());
        } else {
            TileServiceCompat$Api24Impl.startActivityAndCollapse(tileService, pendingIntentActivityWrapper.getIntent());
        }
    }
}

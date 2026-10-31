package androidx.core.database;

import android.database.CursorWindow;
import android.os.Build$VERSION;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class CursorWindowCompat {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private CursorWindowCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static CursorWindow create(@Nullable String str, long j9) {
        return Build$VERSION.SDK_INT >= 28 ? CursorWindowCompat$Api28Impl.createCursorWindow(str, j9) : new CursorWindow(str);
    }
}

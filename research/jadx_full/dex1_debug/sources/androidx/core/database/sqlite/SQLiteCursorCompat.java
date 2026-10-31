package androidx.core.database.sqlite;

import android.database.sqlite.SQLiteCursor;
import android.os.Build$VERSION;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class SQLiteCursorCompat {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private SQLiteCursorCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setFillWindowForwardOnly(@NonNull SQLiteCursor sQLiteCursor, boolean z8) {
        if (Build$VERSION.SDK_INT >= 28) {
            SQLiteCursorCompat$Api28Impl.setFillWindowForwardOnly(sQLiteCursor, z8);
        }
    }
}

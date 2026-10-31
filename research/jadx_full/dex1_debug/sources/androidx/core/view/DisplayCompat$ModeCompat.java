package androidx.core.view;

import android.graphics.Point;
import android.view.Display$Mode;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.Preconditions;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class DisplayCompat$ModeCompat {
    private final boolean mIsNative;
    private final Display$Mode mMode;
    private final Point mPhysicalSize;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(23)
    public DisplayCompat$ModeCompat(@NonNull Display$Mode display$Mode, boolean z8) {
        Preconditions.checkNotNull(display$Mode, "mode == null, can't wrap a null reference");
        this.mPhysicalSize = new Point(DisplayCompat$ModeCompat$Api23Impl.getPhysicalWidth(display$Mode), DisplayCompat$ModeCompat$Api23Impl.getPhysicalHeight(display$Mode));
        this.mMode = display$Mode;
        this.mIsNative = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getPhysicalHeight() {
        return this.mPhysicalSize.y;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getPhysicalWidth() {
        return this.mPhysicalSize.x;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public boolean isNative() {
        return this.mIsNative;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @RequiresApi(23)
    public Display$Mode toMode() {
        return this.mMode;
    }

    public DisplayCompat$ModeCompat(@NonNull Point point) {
        Preconditions.checkNotNull(point, "physicalSize == null");
        this.mPhysicalSize = point;
        this.mMode = null;
        this.mIsNative = true;
    }

    @RequiresApi(23)
    public DisplayCompat$ModeCompat(@NonNull Display$Mode display$Mode, @NonNull Point point) {
        Preconditions.checkNotNull(display$Mode, "mode == null, can't wrap a null reference");
        Preconditions.checkNotNull(point, "physicalSize == null");
        this.mPhysicalSize = point;
        this.mMode = display$Mode;
        this.mIsNative = true;
    }
}

package androidx.tracing;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS)
final class TraceApi29Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private TraceApi29Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void beginAsyncSection(@NonNull String str, int i9) {
        android.os.Trace.beginAsyncSection(str, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void endAsyncSection(@NonNull String str, int i9) {
        android.os.Trace.endAsyncSection(str, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setCounter(@NonNull String str, int i9) {
        android.os.Trace.setCounter(str, i9);
    }
}

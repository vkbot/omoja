package androidx.core.view;

import android.view.ViewConfiguration;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(34)
public class ViewConfigurationCompat$Api34Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ViewConfigurationCompat$Api34Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static int getScaledMaximumFlingVelocity(@NonNull ViewConfiguration viewConfiguration, int i9, int i10, int i11) {
        return viewConfiguration.getScaledMaximumFlingVelocity(i9, i10, i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static int getScaledMinimumFlingVelocity(@NonNull ViewConfiguration viewConfiguration, int i9, int i10, int i11) {
        return viewConfiguration.getScaledMinimumFlingVelocity(i9, i10, i11);
    }
}

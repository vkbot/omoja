package androidx.appcompat.widget;

import android.content.res.Resources$Theme;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.ObjectsCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(23)
public final class AppCompatSpinner$Api23Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private AppCompatSpinner$Api23Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setDropDownViewTheme(@NonNull android.widget.ThemedSpinnerAdapter themedSpinnerAdapter, @Nullable Resources$Theme resources$Theme) {
        if (ObjectsCompat.equals(themedSpinnerAdapter.getDropDownViewTheme(), resources$Theme)) {
            return;
        }
        themedSpinnerAdapter.setDropDownViewTheme(resources$Theme);
    }
}

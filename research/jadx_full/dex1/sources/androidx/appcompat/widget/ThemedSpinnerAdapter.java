package androidx.appcompat.widget;

import android.content.res.Resources$Theme;
import android.widget.SpinnerAdapter;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface ThemedSpinnerAdapter extends SpinnerAdapter {
    @Nullable
    Resources$Theme getDropDownViewTheme();

    void setDropDownViewTheme(@Nullable Resources$Theme resources$Theme);
}

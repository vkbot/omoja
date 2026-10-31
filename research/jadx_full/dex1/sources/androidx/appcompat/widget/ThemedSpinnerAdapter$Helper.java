package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources$Theme;
import android.view.LayoutInflater;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.view.ContextThemeWrapper;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class ThemedSpinnerAdapter$Helper {
    private final Context mContext;
    private LayoutInflater mDropDownInflater;
    private final LayoutInflater mInflater;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ThemedSpinnerAdapter$Helper(@NonNull Context context) {
        this.mContext = context;
        this.mInflater = LayoutInflater.from(context);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public LayoutInflater getDropDownViewInflater() {
        LayoutInflater layoutInflater = this.mDropDownInflater;
        return layoutInflater != null ? layoutInflater : this.mInflater;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Resources$Theme getDropDownViewTheme() {
        LayoutInflater layoutInflater = this.mDropDownInflater;
        if (layoutInflater == null) {
            return null;
        }
        return layoutInflater.getContext().getTheme();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDropDownViewTheme(@Nullable Resources$Theme resources$Theme) {
        if (resources$Theme == null) {
            this.mDropDownInflater = null;
        } else if (resources$Theme.equals(this.mContext.getTheme())) {
            this.mDropDownInflater = this.mInflater;
        } else {
            this.mDropDownInflater = LayoutInflater.from(new ContextThemeWrapper(this.mContext, resources$Theme));
        }
    }
}

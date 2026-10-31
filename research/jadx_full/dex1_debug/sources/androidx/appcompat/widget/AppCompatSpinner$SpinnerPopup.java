package androidx.appcompat.widget;

import android.graphics.drawable.Drawable;
import android.widget.ListAdapter;
import androidx.annotation.VisibleForTesting;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@VisibleForTesting
public interface AppCompatSpinner$SpinnerPopup {
    void dismiss();

    Drawable getBackground();

    CharSequence getHintText();

    int getHorizontalOffset();

    int getHorizontalOriginalOffset();

    int getVerticalOffset();

    boolean isShowing();

    void setAdapter(ListAdapter listAdapter);

    void setBackgroundDrawable(Drawable drawable);

    void setHorizontalOffset(int i9);

    void setHorizontalOriginalOffset(int i9);

    void setPromptText(CharSequence charSequence);

    void setVerticalOffset(int i9);

    void show(int i9, int i10);
}

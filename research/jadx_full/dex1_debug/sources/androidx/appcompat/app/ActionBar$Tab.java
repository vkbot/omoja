package androidx.appcompat.app;

import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.DrawableRes;
import androidx.annotation.StringRes;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Deprecated
public abstract class ActionBar$Tab {
    public static final int INVALID_POSITION = -1;

    public abstract CharSequence getContentDescription();

    public abstract View getCustomView();

    public abstract Drawable getIcon();

    public abstract int getPosition();

    public abstract Object getTag();

    public abstract CharSequence getText();

    public abstract void select();

    public abstract ActionBar$Tab setContentDescription(@StringRes int i9);

    public abstract ActionBar$Tab setContentDescription(CharSequence charSequence);

    public abstract ActionBar$Tab setCustomView(int i9);

    public abstract ActionBar$Tab setCustomView(View view);

    public abstract ActionBar$Tab setIcon(@DrawableRes int i9);

    public abstract ActionBar$Tab setIcon(Drawable drawable);

    public abstract ActionBar$Tab setTabListener(ActionBar$TabListener actionBar$TabListener);

    public abstract ActionBar$Tab setTag(Object obj);

    public abstract ActionBar$Tab setText(int i9);

    public abstract ActionBar$Tab setText(CharSequence charSequence);
}

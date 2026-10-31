package androidx.appcompat.app;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.R$attr;
import androidx.appcompat.widget.TintTypedArray;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AppCompatDelegateImpl$ActionBarDrawableToggleImpl implements ActionBarDrawerToggle$Delegate {
    final /* synthetic */ AppCompatDelegateImpl this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AppCompatDelegateImpl$ActionBarDrawableToggleImpl(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.this$0 = appCompatDelegateImpl;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.ActionBarDrawerToggle$Delegate
    public Context getActionBarThemedContext() {
        return this.this$0.getActionBarThemedContext();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.ActionBarDrawerToggle$Delegate
    public Drawable getThemeUpIndicator() {
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(getActionBarThemedContext(), (AttributeSet) null, new int[]{R$attr.homeAsUpIndicator});
        Drawable drawable = tintTypedArrayObtainStyledAttributes.getDrawable(0);
        tintTypedArrayObtainStyledAttributes.recycle();
        return drawable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.ActionBarDrawerToggle$Delegate
    public boolean isNavigationVisible() {
        ActionBar supportActionBar = this.this$0.getSupportActionBar();
        return (supportActionBar == null || (supportActionBar.getDisplayOptions() & 4) == 0) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.ActionBarDrawerToggle$Delegate
    public void setActionBarDescription(int i9) {
        ActionBar supportActionBar = this.this$0.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setHomeActionContentDescription(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.ActionBarDrawerToggle$Delegate
    public void setActionBarUpIndicator(Drawable drawable, int i9) {
        ActionBar supportActionBar = this.this$0.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setHomeAsUpIndicator(drawable);
            supportActionBar.setHomeActionContentDescription(i9);
        }
    }
}

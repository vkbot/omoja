package androidx.core.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff$Mode;
import android.view.MenuItem;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(26)
public class MenuItemCompat$Api26Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private MenuItemCompat$Api26Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static int getAlphabeticModifiers(MenuItem menuItem) {
        return menuItem.getAlphabeticModifiers();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static CharSequence getContentDescription(MenuItem menuItem) {
        return menuItem.getContentDescription();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static ColorStateList getIconTintList(MenuItem menuItem) {
        return menuItem.getIconTintList();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static PorterDuff$Mode getIconTintMode(MenuItem menuItem) {
        return menuItem.getIconTintMode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static int getNumericModifiers(MenuItem menuItem) {
        return menuItem.getNumericModifiers();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static CharSequence getTooltipText(MenuItem menuItem) {
        return menuItem.getTooltipText();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static MenuItem setAlphabeticShortcut(MenuItem menuItem, char c, int i9) {
        return menuItem.setAlphabeticShortcut(c, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static MenuItem setContentDescription(MenuItem menuItem, CharSequence charSequence) {
        return menuItem.setContentDescription(charSequence);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static MenuItem setIconTintList(MenuItem menuItem, ColorStateList colorStateList) {
        return menuItem.setIconTintList(colorStateList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static MenuItem setIconTintMode(MenuItem menuItem, PorterDuff$Mode porterDuff$Mode) {
        return menuItem.setIconTintMode(porterDuff$Mode);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static MenuItem setNumericShortcut(MenuItem menuItem, char c, int i9) {
        return menuItem.setNumericShortcut(c, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static MenuItem setShortcut(MenuItem menuItem, char c, char c9, int i9, int i10) {
        return menuItem.setShortcut(c, c9, i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static MenuItem setTooltipText(MenuItem menuItem, CharSequence charSequence) {
        return menuItem.setTooltipText(charSequence);
    }
}

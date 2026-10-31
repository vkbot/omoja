package androidx.appcompat.widget;

import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources$Theme;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Movie;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import androidx.annotation.RequiresApi;
import androidx.core.content.res.ResourcesCompat;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class ResourcesWrapper extends Resources {
    private final Resources mResources;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ResourcesWrapper(Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.mResources = resources;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public XmlResourceParser getAnimation(int i9) {
        return this.mResources.getAnimation(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public boolean getBoolean(int i9) {
        return this.mResources.getBoolean(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public int getColor(int i9) {
        return this.mResources.getColor(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public ColorStateList getColorStateList(int i9) {
        return this.mResources.getColorStateList(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public Configuration getConfiguration() {
        return this.mResources.getConfiguration();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public float getDimension(int i9) {
        return this.mResources.getDimension(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public int getDimensionPixelOffset(int i9) {
        return this.mResources.getDimensionPixelOffset(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public int getDimensionPixelSize(int i9) {
        return this.mResources.getDimensionPixelSize(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public DisplayMetrics getDisplayMetrics() {
        return this.mResources.getDisplayMetrics();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public Drawable getDrawable(int i9) {
        return this.mResources.getDrawable(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Drawable getDrawableCanonical(int i9) {
        return super.getDrawable(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public Drawable getDrawableForDensity(int i9, int i10) {
        return ResourcesCompat.getDrawableForDensity(this.mResources, i9, i10, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public float getFraction(int i9, int i10, int i11) {
        return this.mResources.getFraction(i9, i10, i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public int getIdentifier(String str, String str2, String str3) {
        return this.mResources.getIdentifier(str, str2, str3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public int[] getIntArray(int i9) {
        return this.mResources.getIntArray(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public int getInteger(int i9) {
        return this.mResources.getInteger(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public XmlResourceParser getLayout(int i9) {
        return this.mResources.getLayout(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public Movie getMovie(int i9) {
        return this.mResources.getMovie(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public String getQuantityString(int i9, int i10, Object... objArr) {
        return this.mResources.getQuantityString(i9, i10, objArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public CharSequence getQuantityText(int i9, int i10) {
        return this.mResources.getQuantityText(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public String getResourceEntryName(int i9) {
        return this.mResources.getResourceEntryName(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public String getResourceName(int i9) {
        return this.mResources.getResourceName(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public String getResourcePackageName(int i9) {
        return this.mResources.getResourcePackageName(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public String getResourceTypeName(int i9) {
        return this.mResources.getResourceTypeName(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public String getString(int i9) {
        return this.mResources.getString(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public String[] getStringArray(int i9) {
        return this.mResources.getStringArray(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public CharSequence getText(int i9) {
        return this.mResources.getText(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public CharSequence[] getTextArray(int i9) {
        return this.mResources.getTextArray(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public void getValue(int i9, TypedValue typedValue, boolean z8) {
        this.mResources.getValue(i9, typedValue, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public void getValueForDensity(int i9, int i10, TypedValue typedValue, boolean z8) {
        this.mResources.getValueForDensity(i9, i10, typedValue, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public XmlResourceParser getXml(int i9) {
        return this.mResources.getXml(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public TypedArray obtainAttributes(AttributeSet attributeSet, int[] iArr) {
        return this.mResources.obtainAttributes(attributeSet, iArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public TypedArray obtainTypedArray(int i9) {
        return this.mResources.obtainTypedArray(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public InputStream openRawResource(int i9) {
        return this.mResources.openRawResource(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public AssetFileDescriptor openRawResourceFd(int i9) {
        return this.mResources.openRawResourceFd(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public void parseBundleExtra(String str, AttributeSet attributeSet, Bundle bundle) {
        this.mResources.parseBundleExtra(str, attributeSet, bundle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public void parseBundleExtras(XmlResourceParser xmlResourceParser, Bundle bundle) {
        this.mResources.parseBundleExtras(xmlResourceParser, bundle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.res.Resources
    public void updateConfiguration(Configuration configuration, DisplayMetrics displayMetrics) {
        super.updateConfiguration(configuration, displayMetrics);
        Resources resources = this.mResources;
        if (resources != null) {
            resources.updateConfiguration(configuration, displayMetrics);
        }
    }

    @Override // android.content.res.Resources
    public void getValue(String str, TypedValue typedValue, boolean z8) {
        this.mResources.getValue(str, typedValue, z8);
    }

    @Override // android.content.res.Resources
    @RequiresApi(21)
    public Drawable getDrawable(int i9, Resources$Theme resources$Theme) {
        return ResourcesCompat.getDrawable(this.mResources, i9, resources$Theme);
    }

    @Override // android.content.res.Resources
    public String getQuantityString(int i9, int i10) {
        return this.mResources.getQuantityString(i9, i10);
    }

    @Override // android.content.res.Resources
    public String getString(int i9, Object... objArr) {
        return this.mResources.getString(i9, objArr);
    }

    @Override // android.content.res.Resources
    public CharSequence getText(int i9, CharSequence charSequence) {
        return this.mResources.getText(i9, charSequence);
    }

    @Override // android.content.res.Resources
    public InputStream openRawResource(int i9, TypedValue typedValue) {
        return this.mResources.openRawResource(i9, typedValue);
    }

    @Override // android.content.res.Resources
    @RequiresApi(21)
    public Drawable getDrawableForDensity(int i9, int i10, Resources$Theme resources$Theme) {
        return ResourcesCompat.getDrawableForDensity(this.mResources, i9, i10, resources$Theme);
    }
}

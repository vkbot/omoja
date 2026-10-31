package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.annotation.StyleableRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.content.res.ResourcesCompat$FontCallback;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
public class TintTypedArray {
    private final Context mContext;
    private TypedValue mTypedValue;
    private final TypedArray mWrapped;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private TintTypedArray(Context context, TypedArray typedArray) {
        this.mContext = context;
        this.mWrapped = typedArray;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static TintTypedArray obtainStyledAttributes(Context context, AttributeSet attributeSet, int[] iArr) {
        return new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getBoolean(int i9, boolean z8) {
        return this.mWrapped.getBoolean(i9, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(21)
    public int getChangingConfigurations() {
        return TintTypedArray$Api21Impl.getChangingConfigurations(this.mWrapped);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getColor(int i9, int i10) {
        return this.mWrapped.getColor(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ColorStateList getColorStateList(int i9) {
        int resourceId;
        ColorStateList colorStateList;
        return (!this.mWrapped.hasValue(i9) || (resourceId = this.mWrapped.getResourceId(i9, 0)) == 0 || (colorStateList = AppCompatResources.getColorStateList(this.mContext, resourceId)) == null) ? this.mWrapped.getColorStateList(i9) : colorStateList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getDimension(int i9, float f8) {
        return this.mWrapped.getDimension(i9, f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDimensionPixelOffset(int i9, int i10) {
        return this.mWrapped.getDimensionPixelOffset(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDimensionPixelSize(int i9, int i10) {
        return this.mWrapped.getDimensionPixelSize(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Drawable getDrawable(int i9) {
        int resourceId;
        return (!this.mWrapped.hasValue(i9) || (resourceId = this.mWrapped.getResourceId(i9, 0)) == 0) ? this.mWrapped.getDrawable(i9) : AppCompatResources.getDrawable(this.mContext, resourceId);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Drawable getDrawableIfKnown(int i9) {
        int resourceId;
        if (!this.mWrapped.hasValue(i9) || (resourceId = this.mWrapped.getResourceId(i9, 0)) == 0) {
            return null;
        }
        return AppCompatDrawableManager.get().getDrawable(this.mContext, resourceId, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getFloat(int i9, float f8) {
        return this.mWrapped.getFloat(i9, f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Typeface getFont(@StyleableRes int i9, int i10, @Nullable ResourcesCompat$FontCallback resourcesCompat$FontCallback) {
        int resourceId = this.mWrapped.getResourceId(i9, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.mTypedValue == null) {
            this.mTypedValue = new TypedValue();
        }
        return ResourcesCompat.getFont(this.mContext, resourceId, this.mTypedValue, i10, resourcesCompat$FontCallback);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getFraction(int i9, int i10, int i11, float f8) {
        return this.mWrapped.getFraction(i9, i10, i11, f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getIndex(int i9) {
        return this.mWrapped.getIndex(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getIndexCount() {
        return this.mWrapped.getIndexCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getInt(int i9, int i10) {
        return this.mWrapped.getInt(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getInteger(int i9, int i10) {
        return this.mWrapped.getInteger(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getLayoutDimension(int i9, String str) {
        return this.mWrapped.getLayoutDimension(i9, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getNonResourceString(int i9) {
        return this.mWrapped.getNonResourceString(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getPositionDescription() {
        return this.mWrapped.getPositionDescription();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getResourceId(int i9, int i10) {
        return this.mWrapped.getResourceId(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Resources getResources() {
        return this.mWrapped.getResources();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getString(int i9) {
        return this.mWrapped.getString(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CharSequence getText(int i9) {
        return this.mWrapped.getText(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CharSequence[] getTextArray(int i9) {
        return this.mWrapped.getTextArray(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getType(int i9) {
        return TintTypedArray$Api21Impl.getType(this.mWrapped, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getValue(int i9, TypedValue typedValue) {
        return this.mWrapped.getValue(i9, typedValue);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TypedArray getWrappedTypeArray() {
        return this.mWrapped;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasValue(int i9) {
        return this.mWrapped.hasValue(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int length() {
        return this.mWrapped.length();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TypedValue peekValue(int i9) {
        return this.mWrapped.peekValue(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void recycle() {
        this.mWrapped.recycle();
    }

    public int getLayoutDimension(int i9, int i10) {
        return this.mWrapped.getLayoutDimension(i9, i10);
    }

    public static TintTypedArray obtainStyledAttributes(Context context, AttributeSet attributeSet, int[] iArr, int i9, int i10) {
        return new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, iArr, i9, i10));
    }

    public static TintTypedArray obtainStyledAttributes(Context context, int i9, int[] iArr) {
        return new TintTypedArray(context, context.obtainStyledAttributes(i9, iArr));
    }
}

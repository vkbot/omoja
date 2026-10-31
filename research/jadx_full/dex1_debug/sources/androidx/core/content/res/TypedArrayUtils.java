package androidx.core.content.res;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources$Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.annotation.AnyRes;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.annotation.StyleableRes;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
public class TypedArrayUtils {
    private static final String NAMESPACE = "http://schemas.android.com/apk/res/android";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private TypedArrayUtils() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int getAttr(@NonNull Context context, int i9, int i10) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i9, typedValue, true);
        return typedValue.resourceId != 0 ? i9 : i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean getBoolean(@NonNull TypedArray typedArray, @StyleableRes int i9, @StyleableRes int i10, boolean z8) {
        return typedArray.getBoolean(i9, typedArray.getBoolean(i10, z8));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static Drawable getDrawable(@NonNull TypedArray typedArray, @StyleableRes int i9, @StyleableRes int i10) {
        Drawable drawable = typedArray.getDrawable(i9);
        return drawable == null ? typedArray.getDrawable(i10) : drawable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int getInt(@NonNull TypedArray typedArray, @StyleableRes int i9, @StyleableRes int i10, int i11) {
        return typedArray.getInt(i9, typedArray.getInt(i10, i11));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean getNamedBoolean(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i9, boolean z8) {
        return !hasAttribute(xmlPullParser, str) ? z8 : typedArray.getBoolean(i9, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ColorInt
    public static int getNamedColor(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i9, @ColorInt int i10) {
        return !hasAttribute(xmlPullParser, str) ? i10 : typedArray.getColor(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static ColorStateList getNamedColorStateList(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @Nullable Resources$Theme resources$Theme, @NonNull String str, @StyleableRes int i9) {
        if (!hasAttribute(xmlPullParser, str)) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(i9, typedValue);
        int i10 = typedValue.type;
        if (i10 != 2) {
            return (i10 < 28 || i10 > 31) ? ColorStateListInflaterCompat.inflate(typedArray.getResources(), typedArray.getResourceId(i9, 0), resources$Theme) : getNamedColorStateListFromInt(typedValue);
        }
        throw new UnsupportedOperationException("Failed to resolve attribute at index " + i9 + ": " + typedValue);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private static ColorStateList getNamedColorStateListFromInt(@NonNull TypedValue typedValue) {
        return ColorStateList.valueOf(typedValue.data);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ComplexColorCompat getNamedComplexColor(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @Nullable Resources$Theme resources$Theme, @NonNull String str, @StyleableRes int i9, @ColorInt int i10) {
        if (hasAttribute(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i9, typedValue);
            int i11 = typedValue.type;
            if (i11 >= 28 && i11 <= 31) {
                return ComplexColorCompat.from(typedValue.data);
            }
            ComplexColorCompat complexColorCompatInflate = ComplexColorCompat.inflate(typedArray.getResources(), typedArray.getResourceId(i9, 0), resources$Theme);
            if (complexColorCompatInflate != null) {
                return complexColorCompatInflate;
            }
        }
        return ComplexColorCompat.from(i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float getNamedFloat(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i9, float f8) {
        return !hasAttribute(xmlPullParser, str) ? f8 : typedArray.getFloat(i9, f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int getNamedInt(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i9, int i10) {
        return !hasAttribute(xmlPullParser, str) ? i10 : typedArray.getInt(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @AnyRes
    public static int getNamedResourceId(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i9, @AnyRes int i10) {
        return !hasAttribute(xmlPullParser, str) ? i10 : typedArray.getResourceId(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static String getNamedString(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i9) {
        if (hasAttribute(xmlPullParser, str)) {
            return typedArray.getString(i9);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @AnyRes
    public static int getResourceId(@NonNull TypedArray typedArray, @StyleableRes int i9, @StyleableRes int i10, @AnyRes int i11) {
        return typedArray.getResourceId(i9, typedArray.getResourceId(i10, i11));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static String getString(@NonNull TypedArray typedArray, @StyleableRes int i9, @StyleableRes int i10) {
        String string = typedArray.getString(i9);
        return string == null ? typedArray.getString(i10) : string;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static CharSequence getText(@NonNull TypedArray typedArray, @StyleableRes int i9, @StyleableRes int i10) {
        CharSequence text = typedArray.getText(i9);
        return text == null ? typedArray.getText(i10) : text;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static CharSequence[] getTextArray(@NonNull TypedArray typedArray, @StyleableRes int i9, @StyleableRes int i10) {
        CharSequence[] textArray = typedArray.getTextArray(i9);
        return textArray == null ? typedArray.getTextArray(i10) : textArray;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean hasAttribute(@NonNull XmlPullParser xmlPullParser, @NonNull String str) {
        return xmlPullParser.getAttributeValue(NAMESPACE, str) != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static TypedArray obtainAttributes(@NonNull Resources resources, @Nullable Resources$Theme resources$Theme, @NonNull AttributeSet attributeSet, @NonNull int[] iArr) {
        return resources$Theme == null ? resources.obtainAttributes(attributeSet, iArr) : resources$Theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static TypedValue peekNamedValue(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, int i9) {
        if (hasAttribute(xmlPullParser, str)) {
            return typedArray.peekValue(i9);
        }
        return null;
    }
}

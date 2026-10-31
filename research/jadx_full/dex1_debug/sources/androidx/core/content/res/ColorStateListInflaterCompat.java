package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources$Theme;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.os.Build$VERSION;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.annotation.XmlRes;
import androidx.core.R$attr;
import androidx.core.R$styleable;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
public final class ColorStateListInflaterCompat {
    private static final ThreadLocal<TypedValue> sTempTypedValue = new ThreadLocal<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ColorStateListInflaterCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static ColorStateList createFromXml(@NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @Nullable Resources$Theme resources$Theme) throws XmlPullParserException, IOException {
        int next;
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return createFromXmlInner(resources, xmlPullParser, attributeSetAsAttributeSet, resources$Theme);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static ColorStateList createFromXmlInner(@NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources$Theme resources$Theme) throws XmlPullParserException {
        String name = xmlPullParser.getName();
        if (name.equals("selector")) {
            return inflate(resources, xmlPullParser, attributeSet, resources$Theme);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private static TypedValue getTypedValue() {
        ThreadLocal<TypedValue> threadLocal = sTempTypedValue;
        TypedValue typedValue = threadLocal.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        threadLocal.set(typedValue2);
        return typedValue2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static ColorStateList inflate(@NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources$Theme resources$Theme) throws XmlPullParserException, IOException {
        int depth;
        int color;
        int i9 = 1;
        int depth2 = xmlPullParser.getDepth() + 1;
        int[][] iArr = new int[20][];
        int[] iArrAppend = new int[20];
        int i10 = 0;
        while (true) {
            int next = xmlPullParser.next();
            if (next == i9 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                TypedArray typedArrayObtainAttributes = obtainAttributes(resources, resources$Theme, attributeSet, R$styleable.ColorStateListItem);
                int resourceId = typedArrayObtainAttributes.getResourceId(R$styleable.ColorStateListItem_android_color, -1);
                if (resourceId == -1 || isColorInt(resources, resourceId)) {
                    color = typedArrayObtainAttributes.getColor(R$styleable.ColorStateListItem_android_color, -65281);
                } else {
                    try {
                        color = createFromXml(resources, resources.getXml(resourceId), resources$Theme).getDefaultColor();
                    } catch (Exception unused) {
                        color = typedArrayObtainAttributes.getColor(R$styleable.ColorStateListItem_android_color, -65281);
                    }
                }
                float f8 = 1.0f;
                if (typedArrayObtainAttributes.hasValue(R$styleable.ColorStateListItem_android_alpha)) {
                    f8 = typedArrayObtainAttributes.getFloat(R$styleable.ColorStateListItem_android_alpha, 1.0f);
                } else if (typedArrayObtainAttributes.hasValue(R$styleable.ColorStateListItem_alpha)) {
                    f8 = typedArrayObtainAttributes.getFloat(R$styleable.ColorStateListItem_alpha, 1.0f);
                }
                float f9 = (Build$VERSION.SDK_INT < 31 || !typedArrayObtainAttributes.hasValue(R$styleable.ColorStateListItem_android_lStar)) ? typedArrayObtainAttributes.getFloat(R$styleable.ColorStateListItem_lStar, -1.0f) : typedArrayObtainAttributes.getFloat(R$styleable.ColorStateListItem_android_lStar, -1.0f);
                typedArrayObtainAttributes.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr2 = new int[attributeCount];
                int i11 = 0;
                for (int i12 = 0; i12 < attributeCount; i12++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i12);
                    if (attributeNameResource != 16843173 && attributeNameResource != 16843551 && attributeNameResource != R$attr.alpha && attributeNameResource != R$attr.lStar) {
                        int i13 = i11 + 1;
                        if (!attributeSet.getAttributeBooleanValue(i12, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr2[i11] = attributeNameResource;
                        i11 = i13;
                    }
                }
                int[] iArrTrimStateSet = StateSet.trimStateSet(iArr2, i11);
                iArrAppend = GrowingArrayUtils.append(iArrAppend, i10, modulateColorAlpha(color, f8, f9));
                iArr = (int[][]) GrowingArrayUtils.append(iArr, i10, iArrTrimStateSet);
                i10++;
            }
            i9 = 1;
        }
        int[] iArr3 = new int[i10];
        int[][] iArr4 = new int[i10][];
        System.arraycopy(iArrAppend, 0, iArr3, 0, i10);
        System.arraycopy(iArr, 0, iArr4, 0, i10);
        return new ColorStateList(iArr4, iArr3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean isColorInt(@NonNull Resources resources, @ColorRes int i9) {
        TypedValue typedValue = getTypedValue();
        resources.getValue(i9, typedValue, true);
        int i10 = typedValue.type;
        return i10 >= 28 && i10 <= 31;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ColorInt
    private static int modulateColorAlpha(@ColorInt int i9, @FloatRange(from = 0.0d, to = 1.0d) float f8, @FloatRange(from = 0.0d, to = 100.0d) float f9) {
        boolean z8 = f9 >= 0.0f && f9 <= 100.0f;
        if (f8 == 1.0f && !z8) {
            return i9;
        }
        int iClamp = MathUtils.clamp((int) ((Color.alpha(i9) * f8) + 0.5f), 0, 255);
        if (z8) {
            CamColor camColorFromColor = CamColor.fromColor(i9);
            i9 = CamColor.toColor(camColorFromColor.getHue(), camColorFromColor.getChroma(), f9);
        }
        return (i9 & ViewCompat.MEASURED_SIZE_MASK) | (iClamp << 24);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static TypedArray obtainAttributes(Resources resources, Resources$Theme resources$Theme, AttributeSet attributeSet, int[] iArr) {
        return resources$Theme == null ? resources.obtainAttributes(attributeSet, iArr) : resources$Theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    @Nullable
    public static ColorStateList inflate(@NonNull Resources resources, @XmlRes int i9, @Nullable Resources$Theme resources$Theme) {
        try {
            return createFromXml(resources, resources.getXml(i9), resources$Theme);
        } catch (Exception e) {
            Log.e("CSLCompat", "Failed to inflate ColorStateList.", e);
            return null;
        }
    }
}

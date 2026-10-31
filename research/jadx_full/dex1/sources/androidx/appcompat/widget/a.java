package androidx.appcompat.widget;

import android.R$attr;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import java.util.function.IntFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract /* synthetic */ class a {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int A(PropertyMapper propertyMapper) {
        return propertyMapper.mapObject("thumb", R$attr.thumb);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int B(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapObject("thumbTintMode", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int C(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapObject("track", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int D(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapObject("trackTint", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int a(PropertyMapper propertyMapper) {
        return propertyMapper.mapInt("baselineAlignedChildIndex", R$attr.baselineAlignedChildIndex);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int b(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapObject("divider", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int c(PropertyMapper propertyMapper, int i9, IntFunction intFunction) {
        return propertyMapper.mapIntFlag("showDividers", i9, intFunction);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int d(PropertyMapper propertyMapper, IntFunction intFunction) {
        return propertyMapper.mapIntEnum("orientation", R$attr.orientation, intFunction);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void e(PropertyReader propertyReader, int i9, int i10) {
        propertyReader.readIntFlag(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void f(PropertyReader propertyReader, int i9, Drawable drawable) {
        propertyReader.readObject(i9, drawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void g(PropertyReader propertyReader, int i9, Menu menu) {
        propertyReader.readObject(i9, menu);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void h(PropertyReader propertyReader, int i9, CharSequence charSequence) {
        propertyReader.readObject(i9, charSequence);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void i(PropertyReader propertyReader, int i9, boolean z8) {
        propertyReader.readBoolean(i9, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int j(PropertyMapper propertyMapper) {
        return propertyMapper.mapGravity("gravity", R$attr.gravity);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int k(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapInt("dividerPadding", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int l(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapObject("trackTintMode", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int m(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapBoolean("showText", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int n(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapBoolean("splitTrack", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int o(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapInt("switchMinWidth", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int p(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapInt("switchPadding", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int q(PropertyMapper propertyMapper) {
        return propertyMapper.mapFloat("weightSum", R$attr.weightSum);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int r(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapBoolean("measureWithLargestChild", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int s(PropertyMapper propertyMapper) {
        return propertyMapper.mapInt("imeOptions", R$attr.imeOptions);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int t(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapBoolean("iconifiedByDefault", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int u(PropertyMapper propertyMapper) {
        return propertyMapper.mapInt("maxWidth", R$attr.maxWidth);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int v(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapObject("queryHint", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int w(PropertyMapper propertyMapper) {
        return propertyMapper.mapObject("textOff", R$attr.textOff);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int x(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapInt("thumbTextPadding", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int y(PropertyMapper propertyMapper) {
        return propertyMapper.mapObject("textOn", R$attr.textOn);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int z(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapObject("thumbTint", i9);
    }
}

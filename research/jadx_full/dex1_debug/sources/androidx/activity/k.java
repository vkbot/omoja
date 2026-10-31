package androidx.activity;

import android.R$attr;
import android.content.res.ColorStateList;
import android.graphics.Insets;
import android.graphics.PorterDuff$Mode;
import android.text.TextDirectionHeuristic;
import android.view.Window;
import android.view.inspector.InspectionCompanion$UninitializedPropertyMapException;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.TextView;
import java.util.function.IntFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract /* synthetic */ class k {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int A(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapInt("autoSizeStepGranularity", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int B(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapObject("buttonTint", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int C(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapObject("buttonTintMode", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int D(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapObject("checkMarkTint", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int a(Insets insets) {
        return insets.left;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int b(PropertyMapper propertyMapper) {
        return propertyMapper.mapBoolean("baselineAligned", R$attr.baselineAligned);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int c(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapObject("backgroundTint", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int d(PropertyMapper propertyMapper, int i9, IntFunction intFunction) {
        return propertyMapper.mapIntEnum("autoSizeTextType", i9, intFunction);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ TextDirectionHeuristic e(TextView textView) {
        return textView.getTextDirectionHeuristic();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ InspectionCompanion$UninitializedPropertyMapException f() {
        return new InspectionCompanion$UninitializedPropertyMapException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void g(Window window) {
        window.setStatusBarContrastEnforced(false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void h(Window window, boolean z8) {
        window.setNavigationBarContrastEnforced(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void i(PropertyReader propertyReader, int i9, float f8) {
        propertyReader.readFloat(i9, f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void j(PropertyReader propertyReader, int i9, int i10) {
        propertyReader.readInt(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void k(PropertyReader propertyReader, int i9, ColorStateList colorStateList) {
        propertyReader.readObject(i9, colorStateList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void l(PropertyReader propertyReader, int i9, PorterDuff$Mode porterDuff$Mode) {
        propertyReader.readObject(i9, porterDuff$Mode);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean m(TextView textView) {
        return textView.isHorizontallyScrollable();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int n(Insets insets) {
        return insets.top;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int o(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapObject("backgroundTintMode", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void p(PropertyReader propertyReader, int i9, int i10) {
        propertyReader.readIntEnum(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int q(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapObject("checkMarkTintMode", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int r(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapObject("tint", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int s(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapObject("tintMode", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int t(Insets insets) {
        return insets.right;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int u(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapObject("drawableTint", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void v(PropertyReader propertyReader, int i9, int i10) {
        propertyReader.readGravity(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int w(Insets insets) {
        return insets.bottom;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int x(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapObject("drawableTintMode", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int y(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapInt("autoSizeMaxTextSize", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int z(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapInt("autoSizeMinTextSize", i9);
    }
}

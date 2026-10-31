package androidx.appcompat.widget;

import android.app.Person;
import android.content.Context;
import android.content.LocusId;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutInfo$Builder;
import android.content.res.TypedArray;
import android.graphics.Insets;
import android.util.AttributeSet;
import android.view.WindowInsets$Builder;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract /* synthetic */ class d {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int A(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapInt("contentInsetLeft", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int B(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapInt("contentInsetRight", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int C(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapInt("contentInsetStart", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int D(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapInt("contentInsetStartWithNavigation", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int a(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapInt("titleMarginEnd", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ LocusId b(ShortcutInfo shortcutInfo) {
        return shortcutInfo.getLocusId();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void c(ShortcutInfo$Builder shortcutInfo$Builder, LocusId locusId) {
        shortcutInfo$Builder.setLocusId(locusId);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void d(ShortcutInfo$Builder shortcutInfo$Builder, boolean z8) {
        shortcutInfo$Builder.setLongLived(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void e(ShortcutInfo$Builder shortcutInfo$Builder, Person[] personArr) {
        shortcutInfo$Builder.setPersons(personArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void f(WindowInsets$Builder windowInsets$Builder, Insets insets) {
        windowInsets$Builder.setSystemWindowInsets(insets);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void g(PropertyReader propertyReader, int i9, int i10) {
        propertyReader.readResourceId(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void h(CoordinatorLayout coordinatorLayout, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i9) {
        coordinatorLayout.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, 0, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int i(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapInt("titleMarginStart", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void j(WindowInsets$Builder windowInsets$Builder, Insets insets) {
        windowInsets$Builder.setStableInsets(insets);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void k(CoordinatorLayout coordinatorLayout, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i9) {
        coordinatorLayout.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i9, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int l(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapObject("logo", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int m(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapObject("logoDescription", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int n(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapObject("collapseContentDescription", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int o(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapObject("menu", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int p(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapObject("navigationContentDescription", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int q(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapObject("navigationIcon", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int r(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapResourceId("popupTheme", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int s(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapObject("subtitle", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int t(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapObject("title", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int u(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapInt("titleMarginBottom", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int v(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapInt("titleMarginTop", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void w(WindowInsets$Builder windowInsets$Builder, Insets insets) {
        windowInsets$Builder.setSystemGestureInsets(insets);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int x(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapObject("collapseIcon", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int y(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapInt("contentInsetEnd", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int z(PropertyMapper propertyMapper, int i9) {
        return propertyMapper.mapInt("contentInsetEndWithActions", i9);
    }
}

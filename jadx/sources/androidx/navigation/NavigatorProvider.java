package androidx.navigation;

import ai.onnxruntime.AbstractC0074a;
import androidx.annotation.CallSuper;
import androidx.annotation.RestrictTo;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import p099j1.C1929i;
import p130l9.C2237i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0017\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005¢\u0006\u0002\u0010\u0002J \u0010\f\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0007\u0018\u00010\u00062\u000e\u0010\r\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006J*\u0010\f\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0007\u0018\u00010\u00062\u0006\u0010\u000e\u001a\u00020\u00052\u000e\u0010\r\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006H\u0017J'\u0010\u000f\u001a\u0002H\u0010\"\f\b\u0000\u0010\u0010*\u0006\u0012\u0002\b\u00030\u00062\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u00100\u0012¢\u0006\u0002\u0010\u0013J#\u0010\u000f\u001a\u0002H\u0010\"\f\b\u0000\u0010\u0010*\u0006\u0012\u0002\b\u00030\u00062\u0006\u0010\u000e\u001a\u00020\u0005H\u0017¢\u0006\u0002\u0010\u0014R\"\u0010\u0003\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R%\u0010\b\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u00060\t8G¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, m3159d2 = {"Landroidx/navigation/NavigatorProvider;", "", "()V", "_navigators", "", "", "Landroidx/navigation/Navigator;", "Landroidx/navigation/NavDestination;", "navigators", "", "getNavigators", "()Ljava/util/Map;", "addNavigator", "navigator", "name", "getNavigator", ExifInterface.GPS_DIRECTION_TRUE, "navigatorClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)Landroidx/navigation/Navigator;", "(Ljava/lang/String;)Landroidx/navigation/Navigator;", "Companion", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nNavigatorProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigatorProvider.kt\nandroidx/navigation/NavigatorProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,178:1\n1#2:179\n*E\n"})
public class NavigatorProvider {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Map<Class<?>, String> annotationNames = new LinkedHashMap();
    private final Map<String, Navigator<? extends NavDestination>> _navigators = new LinkedHashMap();

    @CallSuper
    public Navigator<? extends NavDestination> addNavigator(String name, Navigator<? extends NavDestination> navigator) {
        name.getClass();
        navigator.getClass();
        if (!INSTANCE.validateName$navigation_common_release(name)) {
            C1929i.m3029k("navigator name cannot be an empty string");
            return null;
        }
        Navigator<? extends NavDestination> navigator2 = this._navigators.get(name);
        if (Intrinsics.areEqual(navigator2, navigator)) {
            return navigator;
        }
        boolean z9 = false;
        if (navigator2 != null && navigator2.getIsAttached()) {
            z9 = true;
        }
        if (z9) {
            C0674b.m850q("Navigator ", navigator, " is replacing an already attached ", navigator2);
            return null;
        }
        if (!navigator.getIsAttached()) {
            return this._navigators.put(name, navigator);
        }
        C0674b.m839f(navigator, "Navigator ", " is already attached to another NavController");
        return null;
    }

    @CallSuper
    public <T extends Navigator<?>> T getNavigator(String name) {
        name.getClass();
        if (!INSTANCE.validateName$navigation_common_release(name)) {
            C1929i.m3029k("navigator name cannot be an empty string");
            return null;
        }
        Navigator<? extends NavDestination> navigator = this._navigators.get(name);
        if (navigator != null) {
            return navigator;
        }
        C1929i.m3030l(AbstractC0074a.m162m("Could not find Navigator with name \"", name, "\". You must call NavController.addNavigator() for each navigation type."));
        return null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final Map<String, Navigator<? extends NavDestination>> getNavigators() {
        return MapsKt.toMap(this._navigators);
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J!\u0010\u0007\u001a\u00020\u00062\u0012\u0010\b\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\t0\u0005H\u0001¢\u0006\u0002\b\nJ\u0017\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0000¢\u0006\u0002\b\u000eR \u0010\u0003\u001a\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m3159d2 = {"Landroidx/navigation/NavigatorProvider$Companion;", "", "()V", "annotationNames", "", "Ljava/lang/Class;", "", "getNameForNavigator", "navigatorClass", "Landroidx/navigation/Navigator;", "getNameForNavigator$navigation_common_release", "validateName", "", "name", "validateName$navigation_common_release", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final String getNameForNavigator$navigation_common_release(Class<? extends Navigator<?>> navigatorClass) {
            navigatorClass.getClass();
            String strValue = (String) NavigatorProvider.annotationNames.get(navigatorClass);
            if (strValue == null) {
                Navigator.Name name = (Navigator.Name) navigatorClass.getAnnotation(Navigator.Name.class);
                strValue = name != null ? name.value() : null;
                if (!validateName$navigation_common_release(strValue)) {
                    C2237i.m3597d("No @Navigator.Name annotation found for ".concat(navigatorClass.getSimpleName()));
                    return null;
                }
                NavigatorProvider.annotationNames.put(navigatorClass, strValue);
            }
            strValue.getClass();
            return strValue;
        }

        public final boolean validateName$navigation_common_release(String name) {
            return name != null && name.length() > 0;
        }

        private Companion() {
        }
    }

    public final <T extends Navigator<?>> T getNavigator(Class<T> navigatorClass) {
        navigatorClass.getClass();
        return (T) getNavigator(INSTANCE.getNameForNavigator$navigation_common_release(navigatorClass));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Navigator<? extends NavDestination> addNavigator(Navigator<? extends NavDestination> navigator) {
        navigator.getClass();
        return addNavigator(INSTANCE.getNameForNavigator$navigation_common_release(navigator.getClass()), navigator);
    }
}

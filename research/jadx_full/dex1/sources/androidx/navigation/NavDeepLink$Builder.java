package androidx.navigation;

import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.exifinterface.media.ExifInterface;
import androidx.navigation.serialization.RouteSerializerKt;
import j1.i;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0007\b\u0017¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0004J<\u0010\u000b\u001a\u00020\u0000\"\n\b\u0000\u0010\f\u0018\u0001*\u00020\u00012\u0006\u0010\r\u001a\u00020\u00042\u001d\b\u0002\u0010\u000e\u001a\u0017\u0012\u0004\u0012\u00020\u0010\u0012\r\u0012\u000b\u0012\u0002\b\u00030\u0011¢\u0006\u0002\b\u00120\u000fH\u0086\bJB\u0010\u000b\u001a\u00020\u0000\"\b\b\u0000\u0010\f*\u00020\u00012\u0006\u0010\r\u001a\u00020\u00042\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\f0\u00142\u0018\b\u0002\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u0010\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00110\u000fH\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Landroidx/navigation/NavDeepLink$Builder;", "", "()V", "action", "", "mimeType", "uriPattern", "build", "Landroidx/navigation/NavDeepLink;", "setAction", "setMimeType", "setUriPattern", ExifInterface.GPS_DIRECTION_TRUE, "basePath", "typeMap", "", "Lkotlin/reflect/KType;", "Landroidx/navigation/NavType;", "Lkotlin/jvm/JvmSuppressWildcards;", "route", "Lkotlin/reflect/KClass;", "Companion", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nNavDeepLink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavDeepLink.kt\nandroidx/navigation/NavDeepLink$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,761:1\n1#2:762\n*E\n"})
public final class NavDeepLink$Builder {
    public static final NavDeepLink$Builder$Companion Companion = new NavDeepLink$Builder$Companion(null);
    private String action;
    private String mimeType;
    private String uriPattern;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public NavDeepLink$Builder() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public static final NavDeepLink$Builder fromAction(String str) {
        return Companion.fromAction(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public static final NavDeepLink$Builder fromMimeType(String str) {
        return Companion.fromMimeType(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public static final NavDeepLink$Builder fromUriPattern(String str) {
        return Companion.fromUriPattern(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: androidx.navigation.NavDeepLink$Builder */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NavDeepLink$Builder setUriPattern$default(NavDeepLink$Builder navDeepLink$Builder, String str, Map map, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        str.getClass();
        map.getClass();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return navDeepLink$Builder.setUriPattern(str, Reflection.getOrCreateKotlinClass(Object.class), map);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavDeepLink build() {
        return new NavDeepLink(this.uriPattern, this.action, this.mimeType);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavDeepLink$Builder setAction(String action) {
        action.getClass();
        if (action.length() > 0) {
            this.action = action;
            return this;
        }
        i.k("The NavDeepLink cannot have an empty action.");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavDeepLink$Builder setMimeType(String mimeType) {
        mimeType.getClass();
        this.mimeType = mimeType;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final /* synthetic */ <T> NavDeepLink$Builder setUriPattern(String basePath, Map<KType, NavType<?>> typeMap) {
        basePath.getClass();
        typeMap.getClass();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return setUriPattern(basePath, Reflection.getOrCreateKotlinClass(Object.class), typeMap);
    }

    public final NavDeepLink$Builder setUriPattern(String uriPattern) {
        uriPattern.getClass();
        this.uriPattern = uriPattern;
        return this;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public final <T> NavDeepLink$Builder setUriPattern(String basePath, KClass<T> route, Map<KType, ? extends NavType<?>> typeMap) {
        basePath.getClass();
        route.getClass();
        typeMap.getClass();
        this.uriPattern = RouteSerializerKt.generateRoutePattern(com.bumptech.glide.d.s(route), typeMap, basePath);
        return this;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: androidx.navigation.NavDeepLink$Builder */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NavDeepLink$Builder setUriPattern$default(NavDeepLink$Builder navDeepLink$Builder, String str, KClass kClass, Map map, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            map = MapsKt.emptyMap();
        }
        return navDeepLink$Builder.setUriPattern(str, kClass, map);
    }
}

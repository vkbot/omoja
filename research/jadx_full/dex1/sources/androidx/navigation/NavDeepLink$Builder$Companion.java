package androidx.navigation;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.exifinterface.media.ExifInterface;
import j1.i;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KType;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0006H\u0007J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0006H\u0007J<\u0010\t\u001a\u00020\u0004\"\n\b\u0000\u0010\u000b\u0018\u0001*\u00020\u00012\u0006\u0010\f\u001a\u00020\u00062\u001d\b\u0002\u0010\r\u001a\u0017\u0012\u0004\u0012\u00020\u000f\u0012\r\u0012\u000b\u0012\u0002\b\u00030\u0010¢\u0006\u0002\b\u00110\u000eH\u0087\b¨\u0006\u0012"}, d2 = {"Landroidx/navigation/NavDeepLink$Builder$Companion;", "", "()V", "fromAction", "Landroidx/navigation/NavDeepLink$Builder;", "action", "", "fromMimeType", "mimeType", "fromUriPattern", "uriPattern", ExifInterface.GPS_DIRECTION_TRUE, "basePath", "typeMap", "", "Lkotlin/reflect/KType;", "Landroidx/navigation/NavType;", "Lkotlin/jvm/JvmSuppressWildcards;", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nNavDeepLink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavDeepLink.kt\nandroidx/navigation/NavDeepLink$Builder$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,761:1\n1#2:762\n*E\n"})
public final class NavDeepLink$Builder$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ NavDeepLink$Builder$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r0v2, resolved type: androidx.navigation.NavDeepLink$Builder */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NavDeepLink$Builder fromUriPattern$default(NavDeepLink$Builder$Companion navDeepLink$Builder$Companion, String str, Map map, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        str.getClass();
        map.getClass();
        NavDeepLink$Builder navDeepLink$Builder = new NavDeepLink$Builder();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        navDeepLink$Builder.setUriPattern(str, Reflection.getOrCreateKotlinClass(Object.class), map);
        return navDeepLink$Builder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public final NavDeepLink$Builder fromAction(String action) {
        action.getClass();
        if (action.length() <= 0) {
            i.k("The NavDeepLink cannot have an empty action.");
            return null;
        }
        NavDeepLink$Builder navDeepLink$Builder = new NavDeepLink$Builder();
        navDeepLink$Builder.setAction(action);
        return navDeepLink$Builder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public final NavDeepLink$Builder fromMimeType(String mimeType) {
        mimeType.getClass();
        NavDeepLink$Builder navDeepLink$Builder = new NavDeepLink$Builder();
        navDeepLink$Builder.setMimeType(mimeType);
        return navDeepLink$Builder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public final /* synthetic */ <T> NavDeepLink$Builder fromUriPattern(String basePath, Map<KType, NavType<?>> typeMap) {
        basePath.getClass();
        typeMap.getClass();
        NavDeepLink$Builder navDeepLink$Builder = new NavDeepLink$Builder();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        navDeepLink$Builder.setUriPattern(basePath, Reflection.getOrCreateKotlinClass(Object.class), typeMap);
        return navDeepLink$Builder;
    }

    private NavDeepLink$Builder$Companion() {
    }

    @JvmStatic
    public final NavDeepLink$Builder fromUriPattern(String uriPattern) {
        uriPattern.getClass();
        NavDeepLink$Builder navDeepLink$Builder = new NavDeepLink$Builder();
        navDeepLink$Builder.setUriPattern(uriPattern);
        return navDeepLink$Builder;
    }
}

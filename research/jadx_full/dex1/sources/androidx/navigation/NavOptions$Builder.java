package androidx.navigation;

import androidx.annotation.AnimRes;
import androidx.annotation.AnimatorRes;
import androidx.annotation.IdRes;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.exifinterface.media.ExifInterface;
import androidx.navigation.serialization.RouteSerializerKt;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0013\u001a\u00020\u0014J\u0010\u0010\u0015\u001a\u00020\u00002\b\b\u0001\u0010\u0003\u001a\u00020\u0004J\u0010\u0010\u0016\u001a\u00020\u00002\b\b\u0001\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\nJ\u0010\u0010\u0018\u001a\u00020\u00002\b\b\u0001\u0010\u0006\u001a\u00020\u0004J\u0010\u0010\u0019\u001a\u00020\u00002\b\b\u0001\u0010\u0007\u001a\u00020\u0004J1\u0010\u001a\u001a\u00020\u0000\"\b\b\u0000\u0010\u001b*\u00020\u00012\u0006\u0010\u001c\u001a\u0002H\u001b2\u0006\u0010\u001d\u001a\u00020\n2\b\b\u0002\u0010\u001e\u001a\u00020\nH\u0007¢\u0006\u0002\u0010\u001fJ'\u0010\u001a\u001a\u00020\u0000\"\n\b\u0000\u0010\u001b\u0018\u0001*\u00020\u00012\u0006\u0010\u001d\u001a\u00020\n2\b\b\u0002\u0010\u001e\u001a\u00020\nH\u0087\bJ$\u0010\u001a\u001a\u00020\u00002\b\b\u0001\u0010 \u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\n2\b\b\u0002\u0010\u001e\u001a\u00020\nH\u0007J$\u0010\u001a\u001a\u00020\u00002\b\u0010\u001c\u001a\u0004\u0018\u00010\f2\u0006\u0010\u001d\u001a\u00020\n2\b\b\u0002\u0010\u001e\u001a\u00020\nH\u0007J&\u0010\u001a\u001a\u00020\u00002\n\u0010!\u001a\u0006\u0012\u0002\b\u00030\u000e2\u0006\u0010\u001d\u001a\u00020\n2\b\b\u0002\u0010\u001e\u001a\u00020\nH\u0007J\u000e\u0010\"\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\nR\u0012\u0010\u0003\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Landroidx/navigation/NavOptions$Builder;", "", "()V", "enterAnim", "", "exitAnim", "popEnterAnim", "popExitAnim", "popUpToId", "popUpToInclusive", "", "popUpToRoute", "", "popUpToRouteClass", "Lkotlin/reflect/KClass;", "popUpToRouteObject", "popUpToSaveState", "restoreState", "singleTop", "build", "Landroidx/navigation/NavOptions;", "setEnterAnim", "setExitAnim", "setLaunchSingleTop", "setPopEnterAnim", "setPopExitAnim", "setPopUpTo", ExifInterface.GPS_DIRECTION_TRUE, "route", "inclusive", "saveState", "(Ljava/lang/Object;ZZ)Landroidx/navigation/NavOptions$Builder;", "destinationId", "klass", "setRestoreState", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nNavOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavOptions.kt\nandroidx/navigation/NavOptions$Builder\n*L\n1#1,599:1\n434#1,6:600\n*S KotlinDebug\n*F\n+ 1 NavOptions.kt\nandroidx/navigation/NavOptions$Builder\n*L\n-1#1:600,6\n*E\n"})
public final class NavOptions$Builder {
    private boolean popUpToInclusive;
    private String popUpToRoute;
    private KClass<?> popUpToRouteClass;
    private Object popUpToRouteObject;
    private boolean popUpToSaveState;
    private boolean restoreState;
    private boolean singleTop;

    @IdRes
    private int popUpToId = -1;

    @AnimRes
    @AnimatorRes
    private int enterAnim = -1;

    @AnimRes
    @AnimatorRes
    private int exitAnim = -1;

    @AnimRes
    @AnimatorRes
    private int popEnterAnim = -1;

    @AnimRes
    @AnimatorRes
    private int popExitAnim = -1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ NavOptions$Builder setPopUpTo$default(NavOptions$Builder navOptions$Builder, boolean z8, boolean z9, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            z9 = false;
        }
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        navOptions$Builder.setPopUpTo(Reflection.getOrCreateKotlinClass(Object.class), z8, z9);
        return navOptions$Builder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavOptions build() {
        String str = this.popUpToRoute;
        if (str != null) {
            return new NavOptions(this.singleTop, this.restoreState, str, this.popUpToInclusive, this.popUpToSaveState, this.enterAnim, this.exitAnim, this.popEnterAnim, this.popExitAnim);
        }
        KClass<?> kClass = this.popUpToRouteClass;
        if (kClass != null) {
            return new NavOptions(this.singleTop, this.restoreState, kClass, this.popUpToInclusive, this.popUpToSaveState, this.enterAnim, this.exitAnim, this.popEnterAnim, this.popExitAnim);
        }
        Object obj = this.popUpToRouteObject;
        boolean z8 = this.singleTop;
        if (obj == null) {
            return new NavOptions(z8, this.restoreState, this.popUpToId, this.popUpToInclusive, this.popUpToSaveState, this.enterAnim, this.exitAnim, this.popEnterAnim, this.popExitAnim);
        }
        boolean z9 = this.restoreState;
        obj.getClass();
        return new NavOptions(z8, z9, obj, this.popUpToInclusive, this.popUpToSaveState, this.enterAnim, this.exitAnim, this.popEnterAnim, this.popExitAnim);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavOptions$Builder setEnterAnim(@AnimRes @AnimatorRes int enterAnim) {
        this.enterAnim = enterAnim;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavOptions$Builder setExitAnim(@AnimRes @AnimatorRes int exitAnim) {
        this.exitAnim = exitAnim;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavOptions$Builder setLaunchSingleTop(boolean singleTop) {
        this.singleTop = singleTop;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavOptions$Builder setPopEnterAnim(@AnimRes @AnimatorRes int popEnterAnim) {
        this.popEnterAnim = popEnterAnim;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavOptions$Builder setPopExitAnim(@AnimRes @AnimatorRes int popExitAnim) {
        this.popExitAnim = popExitAnim;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmOverloads
    public final <T> NavOptions$Builder setPopUpTo(T route, boolean inclusive, boolean saveState) {
        route.getClass();
        this.popUpToRouteObject = route;
        setPopUpTo(RouteSerializerKt.generateHashCode(com.bumptech.glide.d.s(Reflection.getOrCreateKotlinClass(route.getClass()))), inclusive, saveState);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavOptions$Builder setRestoreState(boolean restoreState) {
        this.restoreState = restoreState;
        return this;
    }

    public static /* synthetic */ NavOptions$Builder setPopUpTo$default(NavOptions$Builder navOptions$Builder, String str, boolean z8, boolean z9, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            z9 = false;
        }
        return navOptions$Builder.setPopUpTo(str, z8, z9);
    }

    public static /* synthetic */ NavOptions$Builder setPopUpTo$default(NavOptions$Builder navOptions$Builder, int i9, boolean z8, boolean z9, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z9 = false;
        }
        return navOptions$Builder.setPopUpTo(i9, z8, z9);
    }

    public static /* synthetic */ NavOptions$Builder setPopUpTo$default(NavOptions$Builder navOptions$Builder, KClass kClass, boolean z8, boolean z9, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            z9 = false;
        }
        return navOptions$Builder.setPopUpTo((KClass<?>) kClass, z8, z9);
    }

    public static /* synthetic */ NavOptions$Builder setPopUpTo$default(NavOptions$Builder navOptions$Builder, Object obj, boolean z8, boolean z9, int i9, Object obj2) {
        if ((i9 & 4) != 0) {
            z9 = false;
        }
        return navOptions$Builder.setPopUpTo(obj, z8, z9);
    }

    @JvmOverloads
    public final <T> NavOptions$Builder setPopUpTo(T t, boolean z8) {
        t.getClass();
        return setPopUpTo$default(this, (Object) t, z8, false, 4, (Object) null);
    }

    @JvmOverloads
    public final NavOptions$Builder setPopUpTo(String str, boolean z8) {
        return setPopUpTo$default(this, str, z8, false, 4, (Object) null);
    }

    @JvmOverloads
    public final NavOptions$Builder setPopUpTo(@IdRes int destinationId, boolean inclusive, boolean saveState) {
        this.popUpToId = destinationId;
        this.popUpToRoute = null;
        this.popUpToInclusive = inclusive;
        this.popUpToSaveState = saveState;
        return this;
    }

    @JvmOverloads
    public final NavOptions$Builder setPopUpTo(String route, boolean inclusive, boolean saveState) {
        this.popUpToRoute = route;
        this.popUpToId = -1;
        this.popUpToInclusive = inclusive;
        this.popUpToSaveState = saveState;
        return this;
    }

    @JvmOverloads
    public final /* synthetic */ <T> NavOptions$Builder setPopUpTo(boolean inclusive, boolean saveState) {
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        setPopUpTo(Reflection.getOrCreateKotlinClass(Object.class), inclusive, saveState);
        return this;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public final NavOptions$Builder setPopUpTo(KClass<?> klass, boolean inclusive, boolean saveState) {
        klass.getClass();
        this.popUpToRouteClass = klass;
        this.popUpToId = -1;
        this.popUpToInclusive = inclusive;
        this.popUpToSaveState = saveState;
        return this;
    }

    @JvmOverloads
    public final NavOptions$Builder setPopUpTo(@IdRes int i9, boolean z8) {
        return setPopUpTo$default(this, i9, z8, false, 4, (Object) null);
    }

    @JvmOverloads
    public final /* synthetic */ <T> NavOptions$Builder setPopUpTo(boolean z8) {
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        setPopUpTo(Reflection.getOrCreateKotlinClass(Object.class), z8, false);
        return this;
    }
}

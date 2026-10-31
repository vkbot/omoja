package androidx.navigation;

import androidx.annotation.AnimRes;
import androidx.annotation.AnimatorRes;
import androidx.annotation.IdRes;
import androidx.annotation.RestrictTo;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import androidx.navigation.serialization.RouteSerializerKt;
import com.bumptech.glide.AbstractC1031d;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001d\u0018\u00002\u00020\u0001:\u0001,BQ\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0002\u0010\u000eBU\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u000f\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0002\u0010\u0011BO\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0001\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0002\u0010\u0013BY\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0014\u001a\u00020\n\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\b\b\u0001\u0010\t\u001a\u00020\n\u0012\b\b\u0001\u0010\u000b\u001a\u00020\n\u0012\b\b\u0001\u0010\f\u001a\u00020\n\u0012\b\b\u0001\u0010\r\u001a\u00020\n¢\u0006\u0002\u0010\u0015J\u0013\u0010#\u001a\u00020\u00032\b\u0010$\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010%\u001a\u00020\nH\u0007J\b\u0010&\u001a\u00020\nH\u0016J\u0006\u0010'\u001a\u00020\u0003J\u0006\u0010(\u001a\u00020\u0003J\u0006\u0010)\u001a\u00020\u0003J\u0006\u0010*\u001a\u00020\u0003J\b\u0010+\u001a\u00020\u0006H\u0016R\u0013\u0010\t\u001a\u00020\n8\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\u000b\u001a\u00020\n8\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0017R\u0013\u0010\f\u001a\u00020\n8\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0017R\u0013\u0010\r\u001a\u00020\n8\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0017R\u0014\u0010\u0014\u001a\u00020\nX\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0017R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u001c\u001a\u0004\u0018\u00010\u0006@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR*\u0010\u000f\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00102\f\u0010\u001c\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0010@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\"\u0010\u0012\u001a\u0004\u0018\u00010\u00012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u000e\u0010\b\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006-"}, m3159d2 = {"Landroidx/navigation/NavOptions;", "", "singleTop", "", "restoreState", "popUpToRoute", "", "popUpToInclusive", "popUpToSaveState", "enterAnim", "", "exitAnim", "popEnterAnim", "popExitAnim", "(ZZLjava/lang/String;ZZIIII)V", "popUpToRouteClass", "Lkotlin/reflect/KClass;", "(ZZLkotlin/reflect/KClass;ZZIIII)V", "popUpToRouteObject", "(ZZLjava/lang/Object;ZZIIII)V", "popUpToId", "(ZZIZZIIII)V", "getEnterAnim", "()I", "getExitAnim", "getPopEnterAnim", "getPopExitAnim", "getPopUpToId", "<set-?>", "getPopUpToRoute", "()Ljava/lang/String;", "getPopUpToRouteClass", "()Lkotlin/reflect/KClass;", "getPopUpToRouteObject", "()Ljava/lang/Object;", "equals", "other", "getPopUpTo", "hashCode", "isPopUpToInclusive", "shouldLaunchSingleTop", "shouldPopUpToSaveState", "shouldRestoreState", "toString", "Builder", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class NavOptions {
    private final int enterAnim;
    private final int exitAnim;
    private final int popEnterAnim;
    private final int popExitAnim;

    @IdRes
    private final int popUpToId;
    private final boolean popUpToInclusive;
    private String popUpToRoute;
    private KClass<?> popUpToRouteClass;
    private Object popUpToRouteObject;
    private final boolean popUpToSaveState;
    private final boolean restoreState;
    private final boolean singleTop;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavOptions(boolean z9, boolean z10, Object obj, boolean z11, boolean z12, int i10, int i11, int i12, int i13) {
        this(z9, z10, RouteSerializerKt.generateHashCode(AbstractC1031d.m1289s(Reflection.getOrCreateKotlinClass(obj.getClass()))), z11, z12, i10, i11, i12, i13);
        obj.getClass();
        this.popUpToRouteObject = obj;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other != null && (other instanceof NavOptions)) {
            NavOptions navOptions = (NavOptions) other;
            if (this.singleTop == navOptions.singleTop && this.restoreState == navOptions.restoreState && this.popUpToId == navOptions.popUpToId && Intrinsics.areEqual(this.popUpToRoute, navOptions.popUpToRoute) && Intrinsics.areEqual(this.popUpToRouteClass, navOptions.popUpToRouteClass) && Intrinsics.areEqual(this.popUpToRouteObject, navOptions.popUpToRouteObject) && this.popUpToInclusive == navOptions.popUpToInclusive && this.popUpToSaveState == navOptions.popUpToSaveState && this.enterAnim == navOptions.enterAnim && this.exitAnim == navOptions.exitAnim && this.popEnterAnim == navOptions.popEnterAnim && this.popExitAnim == navOptions.popExitAnim) {
                return true;
            }
        }
        return false;
    }

    @AnimRes
    @AnimatorRes
    public final int getEnterAnim() {
        return this.enterAnim;
    }

    @AnimRes
    @AnimatorRes
    public final int getExitAnim() {
        return this.exitAnim;
    }

    @AnimRes
    @AnimatorRes
    public final int getPopEnterAnim() {
        return this.popEnterAnim;
    }

    @AnimRes
    @AnimatorRes
    public final int getPopExitAnim() {
        return this.popExitAnim;
    }

    @Deprecated(message = "Use popUpToId instead.", replaceWith = @ReplaceWith(expression = "popUpToId", imports = {}))
    @IdRes
    /* JADX INFO: renamed from: getPopUpTo, reason: from getter */
    public final int getPopUpToId() {
        return this.popUpToId;
    }

    @IdRes
    public final int getPopUpToId() {
        return this.popUpToId;
    }

    public final String getPopUpToRoute() {
        return this.popUpToRoute;
    }

    public final KClass<?> getPopUpToRouteClass() {
        return this.popUpToRouteClass;
    }

    public final Object getPopUpToRouteObject() {
        return this.popUpToRouteObject;
    }

    public int hashCode() {
        int i10 = ((((getRestoreState() ? 1 : 0) + ((getSingleTop() ? 1 : 0) * 31)) * 31) + this.popUpToId) * 31;
        String str = this.popUpToRoute;
        int iHashCode = (i10 + (str != null ? str.hashCode() : 0)) * 31;
        KClass<?> kClass = this.popUpToRouteClass;
        int iHashCode2 = (iHashCode + (kClass != null ? kClass.hashCode() : 0)) * 31;
        Object obj = this.popUpToRouteObject;
        return (((((((((getPopUpToSaveState() ? 1 : 0) + (((getPopUpToInclusive() ? 1 : 0) + ((iHashCode2 + (obj != null ? obj.hashCode() : 0)) * 31)) * 31)) * 31) + this.enterAnim) * 31) + this.exitAnim) * 31) + this.popEnterAnim) * 31) + this.popExitAnim;
    }

    /* JADX INFO: renamed from: isPopUpToInclusive, reason: from getter */
    public final boolean getPopUpToInclusive() {
        return this.popUpToInclusive;
    }

    /* JADX INFO: renamed from: shouldLaunchSingleTop, reason: from getter */
    public final boolean getSingleTop() {
        return this.singleTop;
    }

    /* JADX INFO: renamed from: shouldPopUpToSaveState, reason: from getter */
    public final boolean getPopUpToSaveState() {
        return this.popUpToSaveState;
    }

    /* JADX INFO: renamed from: shouldRestoreState, reason: from getter */
    public final boolean getRestoreState() {
        return this.restoreState;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NavOptions(");
        if (this.singleTop) {
            sb.append("launchSingleTop ");
        }
        if (this.restoreState) {
            sb.append("restoreState ");
        }
        String str = this.popUpToRoute;
        if ((str != null || this.popUpToId != -1) && str != null) {
            sb.append("popUpTo(");
            String str2 = this.popUpToRoute;
            if (str2 != null) {
                sb.append(str2);
            } else {
                KClass<?> kClass = this.popUpToRouteClass;
                if (kClass != null) {
                    sb.append(kClass);
                } else {
                    Object obj = this.popUpToRouteObject;
                    if (obj != null) {
                        sb.append(obj);
                    } else {
                        sb.append("0x");
                        sb.append(Integer.toHexString(this.popUpToId));
                    }
                }
            }
            if (this.popUpToInclusive) {
                sb.append(" inclusive");
            }
            if (this.popUpToSaveState) {
                sb.append(" saveState");
            }
            sb.append(")");
        }
        if (this.enterAnim != -1 || this.exitAnim != -1 || this.popEnterAnim != -1 || this.popExitAnim != -1) {
            sb.append("anim(enterAnim=0x");
            sb.append(Integer.toHexString(this.enterAnim));
            sb.append(" exitAnim=0x");
            sb.append(Integer.toHexString(this.exitAnim));
            sb.append(" popEnterAnim=0x");
            sb.append(Integer.toHexString(this.popEnterAnim));
            sb.append(" popExitAnim=0x");
            sb.append(Integer.toHexString(this.popExitAnim));
            sb.append(")");
        }
        return sb.toString();
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0013\u001a\u00020\u0014J\u0010\u0010\u0015\u001a\u00020\u00002\b\b\u0001\u0010\u0003\u001a\u00020\u0004J\u0010\u0010\u0016\u001a\u00020\u00002\b\b\u0001\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\nJ\u0010\u0010\u0018\u001a\u00020\u00002\b\b\u0001\u0010\u0006\u001a\u00020\u0004J\u0010\u0010\u0019\u001a\u00020\u00002\b\b\u0001\u0010\u0007\u001a\u00020\u0004J1\u0010\u001a\u001a\u00020\u0000\"\b\b\u0000\u0010\u001b*\u00020\u00012\u0006\u0010\u001c\u001a\u0002H\u001b2\u0006\u0010\u001d\u001a\u00020\n2\b\b\u0002\u0010\u001e\u001a\u00020\nH\u0007¢\u0006\u0002\u0010\u001fJ'\u0010\u001a\u001a\u00020\u0000\"\n\b\u0000\u0010\u001b\u0018\u0001*\u00020\u00012\u0006\u0010\u001d\u001a\u00020\n2\b\b\u0002\u0010\u001e\u001a\u00020\nH\u0087\bJ$\u0010\u001a\u001a\u00020\u00002\b\b\u0001\u0010 \u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\n2\b\b\u0002\u0010\u001e\u001a\u00020\nH\u0007J$\u0010\u001a\u001a\u00020\u00002\b\u0010\u001c\u001a\u0004\u0018\u00010\f2\u0006\u0010\u001d\u001a\u00020\n2\b\b\u0002\u0010\u001e\u001a\u00020\nH\u0007J&\u0010\u001a\u001a\u00020\u00002\n\u0010!\u001a\u0006\u0012\u0002\b\u00030\u000e2\u0006\u0010\u001d\u001a\u00020\n2\b\b\u0002\u0010\u001e\u001a\u00020\nH\u0007J\u000e\u0010\"\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\nR\u0012\u0010\u0003\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006#"}, m3159d2 = {"Landroidx/navigation/NavOptions$Builder;", "", "()V", "enterAnim", "", "exitAnim", "popEnterAnim", "popExitAnim", "popUpToId", "popUpToInclusive", "", "popUpToRoute", "", "popUpToRouteClass", "Lkotlin/reflect/KClass;", "popUpToRouteObject", "popUpToSaveState", "restoreState", "singleTop", "build", "Landroidx/navigation/NavOptions;", "setEnterAnim", "setExitAnim", "setLaunchSingleTop", "setPopEnterAnim", "setPopExitAnim", "setPopUpTo", ExifInterface.GPS_DIRECTION_TRUE, "route", "inclusive", "saveState", "(Ljava/lang/Object;ZZ)Landroidx/navigation/NavOptions$Builder;", "destinationId", "klass", "setRestoreState", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    @SourceDebugExtension({"SMAP\nNavOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavOptions.kt\nandroidx/navigation/NavOptions$Builder\n*L\n1#1,599:1\n434#1,6:600\n*S KotlinDebug\n*F\n+ 1 NavOptions.kt\nandroidx/navigation/NavOptions$Builder\n*L\n-1#1:600,6\n*E\n"})
    public static final class Builder {
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

        public static /* synthetic */ Builder setPopUpTo$default(Builder builder, boolean z9, boolean z10, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                z10 = false;
            }
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            builder.setPopUpTo(Reflection.getOrCreateKotlinClass(Object.class), z9, z10);
            return builder;
        }

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
            boolean z9 = this.singleTop;
            if (obj == null) {
                return new NavOptions(z9, this.restoreState, this.popUpToId, this.popUpToInclusive, this.popUpToSaveState, this.enterAnim, this.exitAnim, this.popEnterAnim, this.popExitAnim);
            }
            boolean z10 = this.restoreState;
            obj.getClass();
            return new NavOptions(z9, z10, obj, this.popUpToInclusive, this.popUpToSaveState, this.enterAnim, this.exitAnim, this.popEnterAnim, this.popExitAnim);
        }

        public final Builder setEnterAnim(@AnimRes @AnimatorRes int enterAnim) {
            this.enterAnim = enterAnim;
            return this;
        }

        public final Builder setExitAnim(@AnimRes @AnimatorRes int exitAnim) {
            this.exitAnim = exitAnim;
            return this;
        }

        public final Builder setLaunchSingleTop(boolean singleTop) {
            this.singleTop = singleTop;
            return this;
        }

        public final Builder setPopEnterAnim(@AnimRes @AnimatorRes int popEnterAnim) {
            this.popEnterAnim = popEnterAnim;
            return this;
        }

        public final Builder setPopExitAnim(@AnimRes @AnimatorRes int popExitAnim) {
            this.popExitAnim = popExitAnim;
            return this;
        }

        @JvmOverloads
        public final <T> Builder setPopUpTo(T route, boolean inclusive, boolean saveState) {
            route.getClass();
            this.popUpToRouteObject = route;
            setPopUpTo(RouteSerializerKt.generateHashCode(AbstractC1031d.m1289s(Reflection.getOrCreateKotlinClass(route.getClass()))), inclusive, saveState);
            return this;
        }

        public final Builder setRestoreState(boolean restoreState) {
            this.restoreState = restoreState;
            return this;
        }

        public static /* synthetic */ Builder setPopUpTo$default(Builder builder, String str, boolean z9, boolean z10, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                z10 = false;
            }
            return builder.setPopUpTo(str, z9, z10);
        }

        public static /* synthetic */ Builder setPopUpTo$default(Builder builder, int i10, boolean z9, boolean z10, int i11, Object obj) {
            if ((i11 & 4) != 0) {
                z10 = false;
            }
            return builder.setPopUpTo(i10, z9, z10);
        }

        public static /* synthetic */ Builder setPopUpTo$default(Builder builder, KClass kClass, boolean z9, boolean z10, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                z10 = false;
            }
            return builder.setPopUpTo((KClass<?>) kClass, z9, z10);
        }

        public static /* synthetic */ Builder setPopUpTo$default(Builder builder, Object obj, boolean z9, boolean z10, int i10, Object obj2) {
            if ((i10 & 4) != 0) {
                z10 = false;
            }
            return builder.setPopUpTo(obj, z9, z10);
        }

        @JvmOverloads
        public final <T> Builder setPopUpTo(T t, boolean z9) {
            t.getClass();
            return setPopUpTo$default(this, (Object) t, z9, false, 4, (Object) null);
        }

        @JvmOverloads
        public final Builder setPopUpTo(String str, boolean z9) {
            return setPopUpTo$default(this, str, z9, false, 4, (Object) null);
        }

        @JvmOverloads
        public final Builder setPopUpTo(@IdRes int destinationId, boolean inclusive, boolean saveState) {
            this.popUpToId = destinationId;
            this.popUpToRoute = null;
            this.popUpToInclusive = inclusive;
            this.popUpToSaveState = saveState;
            return this;
        }

        @JvmOverloads
        public final Builder setPopUpTo(String route, boolean inclusive, boolean saveState) {
            this.popUpToRoute = route;
            this.popUpToId = -1;
            this.popUpToInclusive = inclusive;
            this.popUpToSaveState = saveState;
            return this;
        }

        @JvmOverloads
        public final /* synthetic */ <T> Builder setPopUpTo(boolean inclusive, boolean saveState) {
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            setPopUpTo(Reflection.getOrCreateKotlinClass(Object.class), inclusive, saveState);
            return this;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final Builder setPopUpTo(KClass<?> klass, boolean inclusive, boolean saveState) {
            klass.getClass();
            this.popUpToRouteClass = klass;
            this.popUpToId = -1;
            this.popUpToInclusive = inclusive;
            this.popUpToSaveState = saveState;
            return this;
        }

        @JvmOverloads
        public final Builder setPopUpTo(@IdRes int i10, boolean z9) {
            return setPopUpTo$default(this, i10, z9, false, 4, (Object) null);
        }

        @JvmOverloads
        public final /* synthetic */ <T> Builder setPopUpTo(boolean z9) {
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            setPopUpTo(Reflection.getOrCreateKotlinClass(Object.class), z9, false);
            return this;
        }
    }

    public NavOptions(boolean z9, boolean z10, String str, boolean z11, boolean z12, int i10, int i11, int i12, int i13) {
        this(z9, z10, NavDestination.INSTANCE.createRoute(str).hashCode(), z11, z12, i10, i11, i12, i13);
        this.popUpToRoute = str;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavOptions(boolean z9, boolean z10, KClass<?> kClass, boolean z11, boolean z12, int i10, int i11, int i12, int i13) {
        this(z9, z10, RouteSerializerKt.generateHashCode(AbstractC1031d.m1289s(kClass)), z11, z12, i10, i11, i12, i13);
        kClass.getClass();
        this.popUpToRouteClass = kClass;
    }

    public NavOptions(boolean z9, boolean z10, @IdRes int i10, boolean z11, boolean z12, @AnimRes @AnimatorRes int i11, @AnimRes @AnimatorRes int i12, @AnimRes @AnimatorRes int i13, @AnimRes @AnimatorRes int i14) {
        this.singleTop = z9;
        this.restoreState = z10;
        this.popUpToId = i10;
        this.popUpToInclusive = z11;
        this.popUpToSaveState = z12;
        this.enterAnim = i11;
        this.exitAnim = i12;
        this.popEnterAnim = i13;
        this.popExitAnim = i14;
    }
}

package androidx.navigation;

import androidx.annotation.RestrictTo;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.serialization.RouteDeserializerKt;
import androidx.navigation.serialization.RouteSerializerKt;
import com.bumptech.glide.AbstractC1031d;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import p055e9.InterfaceC1506b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000,\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aA\u0010\u0000\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00010\u00052\u0016\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t0\u0007H\u0007¢\u0006\u0002\u0010\n\u001a=\u0010\u000b\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\u001d\b\u0002\u0010\u0006\u001a\u0017\u0012\u0004\u0012\u00020\b\u0012\r\u0012\u000b\u0012\u0002\b\u00030\t¢\u0006\u0002\b\f0\u0007H\u0086\b¢\u0006\u0002\u0010\r¨\u0006\u000e"}, m3159d2 = {"internalToRoute", ExifInterface.GPS_DIRECTION_TRUE, "", "Landroidx/lifecycle/SavedStateHandle;", "route", "Lkotlin/reflect/KClass;", "typeMap", "", "Lkotlin/reflect/KType;", "Landroidx/navigation/NavType;", "(Landroidx/lifecycle/SavedStateHandle;Lkotlin/reflect/KClass;Ljava/util/Map;)Ljava/lang/Object;", "toRoute", "Lkotlin/jvm/JvmSuppressWildcards;", "(Landroidx/lifecycle/SavedStateHandle;Ljava/util/Map;)Ljava/lang/Object;", "navigation-common_release"}, m3160k = 2, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nSavedStateHandle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateHandle.kt\nandroidx/navigation/SavedStateHandleKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,53:1\n2634#2:54\n1#3:55\n*S KotlinDebug\n*F\n+ 1 SavedStateHandle.kt\nandroidx/navigation/SavedStateHandleKt\n*L\n50#1:54\n50#1:55\n*E\n"})
public final class SavedStateHandleKt {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final <T> T internalToRoute(SavedStateHandle savedStateHandle, KClass<T> kClass, Map<KType, ? extends NavType<?>> map) {
        savedStateHandle.getClass();
        kClass.getClass();
        map.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        InterfaceC1506b interfaceC1506bM1289s = AbstractC1031d.m1289s(kClass);
        for (NamedNavArgument namedNavArgument : RouteSerializerKt.generateNavArguments(interfaceC1506bM1289s, map)) {
            linkedHashMap.put(namedNavArgument.getName(), namedNavArgument.getArgument().getType());
        }
        return (T) RouteDeserializerKt.decodeArguments(interfaceC1506bM1289s, savedStateHandle, linkedHashMap);
    }

    public static final /* synthetic */ <T> T toRoute(SavedStateHandle savedStateHandle, Map<KType, NavType<?>> map) {
        savedStateHandle.getClass();
        map.getClass();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) internalToRoute(savedStateHandle, Reflection.getOrCreateKotlinClass(Object.class), map);
    }

    public static /* synthetic */ Object toRoute$default(SavedStateHandle savedStateHandle, Map map, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            map = MapsKt.emptyMap();
        }
        savedStateHandle.getClass();
        map.getClass();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return internalToRoute(savedStateHandle, Reflection.getOrCreateKotlinClass(Object.class), map);
    }
}

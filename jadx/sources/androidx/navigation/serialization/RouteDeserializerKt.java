package androidx.navigation.serialization;

import android.os.Bundle;
import androidx.annotation.RestrictTo;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavType;
import java.util.Map;
import kotlin.Metadata;
import p055e9.InterfaceC1506b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a?\u0010\b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0004H\u0007¢\u0006\u0004\b\b\u0010\t\u001a?\u0010\b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u000b\u001a\u00020\n2\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0004H\u0007¢\u0006\u0004\b\b\u0010\f¨\u0006\r"}, m3159d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Le9/b;", "Landroid/os/Bundle;", "bundle", "", "", "Landroidx/navigation/NavType;", "typeMap", "decodeArguments", "(Le9/b;Landroid/os/Bundle;Ljava/util/Map;)Ljava/lang/Object;", "Landroidx/lifecycle/SavedStateHandle;", "handle", "(Le9/b;Landroidx/lifecycle/SavedStateHandle;Ljava/util/Map;)Ljava/lang/Object;", "navigation-common_release"}, m3160k = 2, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class RouteDeserializerKt {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final <T> T decodeArguments(InterfaceC1506b interfaceC1506b, Bundle bundle, Map<String, ? extends NavType<?>> map) {
        interfaceC1506b.getClass();
        bundle.getClass();
        map.getClass();
        return (T) new RouteDecoder(bundle, map).decodeRouteWithArgs$navigation_common_release(interfaceC1506b);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final <T> T decodeArguments(InterfaceC1506b interfaceC1506b, SavedStateHandle savedStateHandle, Map<String, ? extends NavType<?>> map) {
        interfaceC1506b.getClass();
        savedStateHandle.getClass();
        map.getClass();
        return (T) new RouteDecoder(savedStateHandle, map).decodeRouteWithArgs$navigation_common_release(interfaceC1506b);
    }
}

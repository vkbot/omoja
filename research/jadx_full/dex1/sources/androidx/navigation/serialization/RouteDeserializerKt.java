package androidx.navigation.serialization;

import android.os.Bundle;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavType;
import e9.b;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a?\u0010\b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0004H\u0007¢\u0006\u0004\b\b\u0010\t\u001a?\u0010\b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u000b\u001a\u00020\n2\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0004H\u0007¢\u0006\u0004\b\b\u0010\f¨\u0006\r"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Le9/b;", "Landroid/os/Bundle;", "bundle", "", "", "Landroidx/navigation/NavType;", "typeMap", "decodeArguments", "(Le9/b;Landroid/os/Bundle;Ljava/util/Map;)Ljava/lang/Object;", "Landroidx/lifecycle/SavedStateHandle;", "handle", "(Le9/b;Landroidx/lifecycle/SavedStateHandle;Ljava/util/Map;)Ljava/lang/Object;", "navigation-common_release"}, k = 2, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class RouteDeserializerKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static final <T> T decodeArguments(b bVar, Bundle bundle, Map<String, ? extends NavType<?>> map) {
        bVar.getClass();
        bundle.getClass();
        map.getClass();
        return (T) new RouteDecoder(bundle, map).decodeRouteWithArgs$navigation_common_release(bVar);
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static final <T> T decodeArguments(b bVar, SavedStateHandle savedStateHandle, Map<String, ? extends NavType<?>> map) {
        bVar.getClass();
        savedStateHandle.getClass();
        map.getClass();
        return (T) new RouteDecoder(savedStateHandle, map).decodeRouteWithArgs$navigation_common_release(bVar);
    }
}

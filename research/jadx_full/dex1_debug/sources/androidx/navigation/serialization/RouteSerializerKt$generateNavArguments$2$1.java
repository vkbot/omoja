package androidx.navigation.serialization;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.exifinterface.media.ExifInterface;
import androidx.navigation.NavArgumentBuilder;
import androidx.navigation.NavType;
import e9.b;
import g9.e;
import j1.i;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KType;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/navigation/NavArgumentBuilder;", "invoke"}, k = 3, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class RouteSerializerKt$generateNavArguments$2$1 extends Lambda implements Function1<NavArgumentBuilder, Unit> {
    final /* synthetic */ int $index;
    final /* synthetic */ String $name;
    final /* synthetic */ b $this_generateNavArguments;
    final /* synthetic */ Map<KType, NavType<?>> $typeMap;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: java.util.Map<kotlin.reflect.KType, ? extends androidx.navigation.NavType<?>> */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RouteSerializerKt$generateNavArguments$2$1(b bVar, int i9, Map<KType, ? extends NavType<?>> map, String str) {
        super(1);
        this.$this_generateNavArguments = bVar;
        this.$index = i9;
        this.$typeMap = map;
        this.$name = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(NavArgumentBuilder navArgumentBuilder) {
        navArgumentBuilder.getClass();
        e eVarF = this.$this_generateNavArguments.a().f(this.$index);
        boolean zC = eVarF.c();
        NavType<?> navTypeAccess$computeNavType = RouteSerializerKt.access$computeNavType(eVarF, this.$typeMap);
        if (navTypeAccess$computeNavType == null) {
            i.k(RouteSerializerKt.access$unknownNavTypeErrorMessage(this.$name, eVarF.a(), this.$this_generateNavArguments.a().a(), this.$typeMap.toString()));
            return;
        }
        navArgumentBuilder.setType(navTypeAccess$computeNavType);
        navArgumentBuilder.setNullable(zC);
        if (this.$this_generateNavArguments.a().g(this.$index)) {
            navArgumentBuilder.setUnknownDefaultValuePresent$navigation_common_release(true);
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(NavArgumentBuilder navArgumentBuilder) {
        invoke2(navArgumentBuilder);
        return Unit.INSTANCE;
    }
}

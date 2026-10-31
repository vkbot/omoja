package androidx.navigation;

import android.os.Bundle;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$IntRef;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "entry", "Landroidx/navigation/NavBackStackEntry;", "invoke"}, k = 3, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class NavController$executeRestoreState$3 extends Lambda implements Function1<NavBackStackEntry, Unit> {
    final /* synthetic */ Bundle $args;
    final /* synthetic */ List<NavBackStackEntry> $entries;
    final /* synthetic */ Ref$IntRef $lastNavigatedIndex;
    final /* synthetic */ Ref$BooleanRef $navigated;
    final /* synthetic */ NavController this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavController$executeRestoreState$3(Ref$BooleanRef ref$BooleanRef, List<NavBackStackEntry> list, Ref$IntRef ref$IntRef, NavController navController, Bundle bundle) {
        super(1);
        this.$navigated = ref$BooleanRef;
        this.$entries = list;
        this.$lastNavigatedIndex = ref$IntRef;
        this.this$0 = navController;
        this.$args = bundle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(NavBackStackEntry navBackStackEntry) {
        List<NavBackStackEntry> listEmptyList;
        navBackStackEntry.getClass();
        this.$navigated.element = true;
        int iIndexOf = this.$entries.indexOf(navBackStackEntry);
        if (iIndexOf != -1) {
            int i9 = iIndexOf + 1;
            listEmptyList = this.$entries.subList(this.$lastNavigatedIndex.element, i9);
            this.$lastNavigatedIndex.element = i9;
        } else {
            listEmptyList = CollectionsKt.emptyList();
        }
        NavController.access$addEntryToBackStack(this.this$0, navBackStackEntry.getDestination(), this.$args, navBackStackEntry, listEmptyList);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(NavBackStackEntry navBackStackEntry) {
        invoke2(navBackStackEntry);
        return Unit.INSTANCE;
    }
}

package androidx.navigation.fragment;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.NavBackStackEntry;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "owner", "Landroidx/lifecycle/LifecycleOwner;", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nFragmentNavigator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentNavigator.kt\nandroidx/navigation/fragment/FragmentNavigator$attachObservers$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,712:1\n1747#2,3:713\n*S KotlinDebug\n*F\n+ 1 FragmentNavigator.kt\nandroidx/navigation/fragment/FragmentNavigator$attachObservers$1\n*L\n247#1:713,3\n*E\n"})
public final class FragmentNavigator$attachObservers$1 extends Lambda implements Function1<LifecycleOwner, Unit> {
    final /* synthetic */ NavBackStackEntry $entry;
    final /* synthetic */ Fragment $fragment;
    final /* synthetic */ FragmentNavigator this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentNavigator$attachObservers$1(FragmentNavigator fragmentNavigator, Fragment fragment, NavBackStackEntry navBackStackEntry) {
        super(1);
        this.this$0 = fragmentNavigator;
        this.$fragment = fragment;
        this.$entry = navBackStackEntry;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(LifecycleOwner lifecycleOwner) {
        List<Pair<String, Boolean>> pendingOps$navigation_fragment_release = this.this$0.getPendingOps$navigation_fragment_release();
        Fragment fragment = this.$fragment;
        boolean z8 = false;
        if (pendingOps$navigation_fragment_release == null || !pendingOps$navigation_fragment_release.isEmpty()) {
            Iterator<T> it = pendingOps$navigation_fragment_release.iterator();
            while (it.hasNext()) {
                if (Intrinsics.areEqual(((Pair) it.next()).getFirst(), fragment.getTag())) {
                    z8 = true;
                    break;
                }
            }
        }
        if (lifecycleOwner == null || z8) {
            return;
        }
        Lifecycle lifecycle = this.$fragment.getViewLifecycleOwner().getLifecycle();
        if (lifecycle.getState().isAtLeast(Lifecycle$State.CREATED)) {
            lifecycle.addObserver((LifecycleObserver) FragmentNavigator.access$getFragmentViewObserver$p(this.this$0).invoke(this.$entry));
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(LifecycleOwner lifecycleOwner) {
        invoke2(lifecycleOwner);
        return Unit.INSTANCE;
    }
}

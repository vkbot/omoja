package androidx.navigation.fragment;

import android.util.Log;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager$OnBackStackChangedListener;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavigatorState;
import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import l9.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\t\u001a\u00020\u0003H\u0016¨\u0006\n"}, d2 = {"androidx/navigation/fragment/FragmentNavigator$onAttach$2", "Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;", "onBackStackChangeCommitted", "", "fragment", "Landroidx/fragment/app/Fragment;", "pop", "", "onBackStackChangeStarted", "onBackStackChanged", "navigation-fragment_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nFragmentNavigator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentNavigator.kt\nandroidx/navigation/fragment/FragmentNavigator$onAttach$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,712:1\n533#2,6:713\n533#2,6:720\n288#2,2:726\n1#3:719\n*S KotlinDebug\n*F\n+ 1 FragmentNavigator.kt\nandroidx/navigation/fragment/FragmentNavigator$onAttach$2\n*L\n174#1:713,6\n188#1:720,6\n195#1:726,2\n*E\n"})
public final class FragmentNavigator$onAttach$2 implements FragmentManager$OnBackStackChangedListener {
    final /* synthetic */ NavigatorState $state;
    final /* synthetic */ FragmentNavigator this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FragmentNavigator$onAttach$2(NavigatorState navigatorState, FragmentNavigator fragmentNavigator) {
        this.$state = navigatorState;
        this.this$0 = fragmentNavigator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentManager$OnBackStackChangedListener
    public void onBackStackChangeCommitted(Fragment fragment, boolean pop) {
        Object obj;
        Object objPrevious;
        fragment.getClass();
        List listPlus = CollectionsKt.plus((Collection) this.$state.getBackStack().getValue(), (Iterable) this.$state.getTransitionsInProgress().getValue());
        ListIterator listIterator = listPlus.listIterator(listPlus.size());
        do {
            obj = null;
            if (!listIterator.hasPrevious()) {
                objPrevious = null;
                break;
            }
            objPrevious = listIterator.previous();
        } while (!Intrinsics.areEqual(((NavBackStackEntry) objPrevious).getId(), fragment.getTag()));
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) objPrevious;
        boolean z8 = pop && this.this$0.getPendingOps$navigation_fragment_release().isEmpty() && fragment.isRemoving();
        for (Object obj2 : this.this$0.getPendingOps$navigation_fragment_release()) {
            if (Intrinsics.areEqual(((Pair) obj2).getFirst(), fragment.getTag())) {
                obj = obj2;
                break;
            }
        }
        Pair pair = (Pair) obj;
        if (pair != null) {
            this.this$0.getPendingOps$navigation_fragment_release().remove(pair);
        }
        if (!z8 && FragmentNavigator.access$isLoggingEnabled(this.this$0, 2)) {
            Log.v("FragmentNavigator", "OnBackStackChangedCommitted for fragment " + fragment + " associated with entry " + navBackStackEntry);
        }
        boolean z9 = pair != null && ((Boolean) pair.getSecond()).booleanValue();
        if (!pop && !z9 && navBackStackEntry == null) {
            i.d(ai.onnxruntime.a.k("The fragment ", fragment, " is unknown to the FragmentNavigator. Please use the navigate() function to add fragments to the FragmentNavigator managed FragmentManager."));
            return;
        }
        if (navBackStackEntry != null) {
            this.this$0.attachClearViewModel$navigation_fragment_release(fragment, navBackStackEntry, this.$state);
            if (z8) {
                if (FragmentNavigator.access$isLoggingEnabled(this.this$0, 2)) {
                    Log.v("FragmentNavigator", "OnBackStackChangedCommitted for fragment " + fragment + " popping associated entry " + navBackStackEntry + " via system back");
                }
                this.$state.popWithTransition(navBackStackEntry, false);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentManager$OnBackStackChangedListener
    public void onBackStackChangeStarted(Fragment fragment, boolean pop) {
        Object objPrevious;
        fragment.getClass();
        if (pop) {
            List list = (List) this.$state.getBackStack().getValue();
            ListIterator listIterator = list.listIterator(list.size());
            do {
                if (!listIterator.hasPrevious()) {
                    objPrevious = null;
                    break;
                }
                objPrevious = listIterator.previous();
            } while (!Intrinsics.areEqual(((NavBackStackEntry) objPrevious).getId(), fragment.getTag()));
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) objPrevious;
            if (FragmentNavigator.access$isLoggingEnabled(this.this$0, 2)) {
                Log.v("FragmentNavigator", "OnBackStackChangedStarted for fragment " + fragment + " associated with entry " + navBackStackEntry);
            }
            if (navBackStackEntry != null) {
                this.$state.prepareForTransition(navBackStackEntry);
            }
        }
    }

    @Override // androidx.fragment.app.FragmentManager$OnBackStackChangedListener
    public void onBackStackChanged() {
    }
}

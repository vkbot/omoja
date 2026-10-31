package androidx.navigation.fragment;

import android.util.Log;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.DialogFragment;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.NavBackStackEntry;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"androidx/navigation/fragment/DialogFragmentNavigator$observer$1", "Landroidx/lifecycle/LifecycleEventObserver;", "onStateChanged", "", "source", "Landroidx/lifecycle/LifecycleOwner;", NotificationCompat.CATEGORY_EVENT, "Landroidx/lifecycle/Lifecycle$Event;", "navigation-fragment_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nDialogFragmentNavigator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogFragmentNavigator.kt\nandroidx/navigation/fragment/DialogFragmentNavigator$observer$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,319:1\n1747#2,3:320\n518#2,7:323\n378#2,7:331\n518#2,7:338\n1#3:330\n*S KotlinDebug\n*F\n+ 1 DialogFragmentNavigator.kt\nandroidx/navigation/fragment/DialogFragmentNavigator$observer$1\n*L\n55#1:320,3\n70#1:323,7\n79#1:331,7\n95#1:338,7\n*E\n"})
public final class DialogFragmentNavigator$observer$1 implements LifecycleEventObserver {
    final /* synthetic */ DialogFragmentNavigator this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DialogFragmentNavigator$observer$1(DialogFragmentNavigator dialogFragmentNavigator) {
        this.this$0 = dialogFragmentNavigator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(LifecycleOwner source, Lifecycle$Event event) {
        int iNextIndex;
        source.getClass();
        event.getClass();
        int i9 = DialogFragmentNavigator$observer$1$WhenMappings.$EnumSwitchMapping$0[event.ordinal()];
        if (i9 == 1) {
            DialogFragment dialogFragment = (DialogFragment) source;
            Iterable iterable = (Iterable) DialogFragmentNavigator.access$getState(this.this$0).getBackStack().getValue();
            if (!(iterable instanceof Collection) || !((Collection) iterable).isEmpty()) {
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    if (Intrinsics.areEqual(((NavBackStackEntry) it.next()).getId(), dialogFragment.getTag())) {
                        return;
                    }
                }
            }
            dialogFragment.dismiss();
            return;
        }
        Object obj = null;
        if (i9 == 2) {
            DialogFragment dialogFragment2 = (DialogFragment) source;
            for (Object obj2 : (Iterable) DialogFragmentNavigator.access$getState(this.this$0).getTransitionsInProgress().getValue()) {
                if (Intrinsics.areEqual(((NavBackStackEntry) obj2).getId(), dialogFragment2.getTag())) {
                    obj = obj2;
                }
            }
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
            if (navBackStackEntry != null) {
                DialogFragmentNavigator.access$getState(this.this$0).markTransitionComplete(navBackStackEntry);
                return;
            }
            return;
        }
        if (i9 != 3) {
            if (i9 != 4) {
                return;
            }
            DialogFragment dialogFragment3 = (DialogFragment) source;
            for (Object obj3 : (Iterable) DialogFragmentNavigator.access$getState(this.this$0).getTransitionsInProgress().getValue()) {
                if (Intrinsics.areEqual(((NavBackStackEntry) obj3).getId(), dialogFragment3.getTag())) {
                    obj = obj3;
                }
            }
            NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) obj;
            if (navBackStackEntry2 != null) {
                DialogFragmentNavigator.access$getState(this.this$0).markTransitionComplete(navBackStackEntry2);
            }
            dialogFragment3.getLifecycle().removeObserver(this);
            return;
        }
        DialogFragment dialogFragment4 = (DialogFragment) source;
        if (dialogFragment4.requireDialog().isShowing()) {
            return;
        }
        List list = (List) DialogFragmentNavigator.access$getState(this.this$0).getBackStack().getValue();
        ListIterator listIterator = list.listIterator(list.size());
        while (true) {
            if (listIterator.hasPrevious()) {
                if (Intrinsics.areEqual(((NavBackStackEntry) listIterator.previous()).getId(), dialogFragment4.getTag())) {
                    iNextIndex = listIterator.nextIndex();
                    break;
                }
            } else {
                iNextIndex = -1;
                break;
            }
        }
        NavBackStackEntry navBackStackEntry3 = (NavBackStackEntry) CollectionsKt.getOrNull(list, iNextIndex);
        if (!Intrinsics.areEqual(CollectionsKt.lastOrNull(list), navBackStackEntry3)) {
            Log.i("DialogFragmentNavigator", "Dialog " + dialogFragment4 + " was dismissed while it was not the top of the back stack, popping all dialogs above this dismissed dialog");
        }
        if (navBackStackEntry3 != null) {
            DialogFragmentNavigator.access$popWithTransition(this.this$0, iNextIndex, navBackStackEntry3, false);
        }
    }
}

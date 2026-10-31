package androidx.navigation;

import android.os.Bundle;
import androidx.annotation.CallSuper;
import androidx.annotation.RestrictTo;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import p099j1.C1929i;
import p253y8.AbstractC3681r;
import p253y8.C3677n;
import p253y8.C3685v;
import p253y8.InterfaceC3676m;
import p253y8.InterfaceC3683t;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\t\u0010\bJ!\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\fH&¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0015\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0017¢\u0006\u0004\b\u0016\u0010\bJ\u0017\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0017¢\u0006\u0004\b\u0017\u0010\bJ\u0017\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0019\u0010\bJ\u0017\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0004H\u0017¢\u0006\u0004\b\u001a\u0010\bR\u0014\u0010\u001c\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR \u0010 \u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u001f0\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R \u0010#\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\"0\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010!R*\u0010%\u001a\u00020\u00112\u0006\u0010$\u001a\u00020\u00118G@GX\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b%\u0010'\"\u0004\b(\u0010)R#\u0010+\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u001f0*8\u0006¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.R#\u0010/\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\"0*8\u0006¢\u0006\f\n\u0004\b/\u0010,\u001a\u0004\b0\u0010.¨\u00061"}, m3159d2 = {"Landroidx/navigation/NavigatorState;", "", "<init>", "()V", "Landroidx/navigation/NavBackStackEntry;", "backStackEntry", "", "push", "(Landroidx/navigation/NavBackStackEntry;)V", "pushWithTransition", "Landroidx/navigation/NavDestination;", "destination", "Landroid/os/Bundle;", "arguments", "createBackStackEntry", "(Landroidx/navigation/NavDestination;Landroid/os/Bundle;)Landroidx/navigation/NavBackStackEntry;", "popUpTo", "", "saveState", "pop", "(Landroidx/navigation/NavBackStackEntry;Z)V", "popWithTransition", "onLaunchSingleTop", "onLaunchSingleTopWithTransition", "entry", "markTransitionComplete", "prepareForTransition", "Ljava/util/concurrent/locks/ReentrantLock;", "backStackLock", "Ljava/util/concurrent/locks/ReentrantLock;", "Ly8/m;", "", "_backStack", "Ly8/m;", "", "_transitionsInProgress", "<set-?>", "isNavigating", "Z", "()Z", "setNavigating", "(Z)V", "Ly8/t;", "backStack", "Ly8/t;", "getBackStack", "()Ly8/t;", "transitionsInProgress", "getTransitionsInProgress", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nNavigatorState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigatorState.kt\nandroidx/navigation/NavigatorState\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,217:1\n1#2:218\n1747#3,3:219\n1747#3,3:222\n959#3,7:225\n1747#3,3:232\n2624#3,3:235\n533#3,6:238\n378#3,7:244\n451#3,6:251\n*S KotlinDebug\n*F\n+ 1 NavigatorState.kt\nandroidx/navigation/NavigatorState\n*L\n76#1:219,3\n77#1:222,3\n102#1:225,7\n123#1:232,3\n124#1:235,3\n130#1:238,6\n158#1:244,7\n181#1:251,6\n*E\n"})
public abstract class NavigatorState {
    private final InterfaceC3676m _backStack;
    private final InterfaceC3676m _transitionsInProgress;
    private final InterfaceC3683t backStack;
    private final ReentrantLock backStackLock = new ReentrantLock(true);
    private boolean isNavigating;
    private final InterfaceC3683t transitionsInProgress;

    public NavigatorState() {
        C3685v c3685vM5904a = AbstractC3681r.m5904a(CollectionsKt.emptyList());
        this._backStack = c3685vM5904a;
        C3685v c3685vM5904a2 = AbstractC3681r.m5904a(SetsKt.emptySet());
        this._transitionsInProgress = c3685vM5904a2;
        this.backStack = new C3677n(c3685vM5904a);
        this.transitionsInProgress = new C3677n(c3685vM5904a2);
    }

    public abstract NavBackStackEntry createBackStackEntry(NavDestination destination, Bundle arguments);

    public final InterfaceC3683t getBackStack() {
        return this.backStack;
    }

    public final InterfaceC3683t getTransitionsInProgress() {
        return this.transitionsInProgress;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* JADX INFO: renamed from: isNavigating, reason: from getter */
    public final boolean getIsNavigating() {
        return this.isNavigating;
    }

    public void markTransitionComplete(NavBackStackEntry entry) {
        entry.getClass();
        C3685v c3685v = (C3685v) this._transitionsInProgress;
        c3685v.m5909f(SetsKt___SetsKt.minus((Set<? extends NavBackStackEntry>) c3685v.getValue(), entry));
    }

    @CallSuper
    public void onLaunchSingleTop(NavBackStackEntry backStackEntry) {
        int iNextIndex;
        backStackEntry.getClass();
        ReentrantLock reentrantLock = this.backStackLock;
        reentrantLock.lock();
        try {
            List mutableList = CollectionsKt.toMutableList((Collection) this.backStack.getValue());
            ListIterator listIterator = mutableList.listIterator(mutableList.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    iNextIndex = -1;
                    break;
                } else if (Intrinsics.areEqual(((NavBackStackEntry) listIterator.previous()).getId(), backStackEntry.getId())) {
                    iNextIndex = listIterator.nextIndex();
                    break;
                }
            }
            mutableList.set(iNextIndex, backStackEntry);
            ((C3685v) this._backStack).m5909f(mutableList);
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    @CallSuper
    public void onLaunchSingleTopWithTransition(NavBackStackEntry backStackEntry) {
        backStackEntry.getClass();
        List list = (List) this.backStack.getValue();
        ListIterator listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) listIterator.previous();
            if (Intrinsics.areEqual(navBackStackEntry.getId(), backStackEntry.getId())) {
                C3685v c3685v = (C3685v) this._transitionsInProgress;
                c3685v.m5909f(SetsKt___SetsKt.plus((Set<? extends NavBackStackEntry>) SetsKt___SetsKt.plus((Set<? extends NavBackStackEntry>) c3685v.getValue(), navBackStackEntry), backStackEntry));
                onLaunchSingleTop(backStackEntry);
                return;
            }
        }
        C1929i.m3025g("List contains no element matching the predicate.");
    }

    public void pop(NavBackStackEntry popUpTo, boolean saveState) {
        popUpTo.getClass();
        ReentrantLock reentrantLock = this.backStackLock;
        reentrantLock.lock();
        try {
            InterfaceC3676m interfaceC3676m = this._backStack;
            Iterable iterable = (Iterable) ((C3685v) interfaceC3676m).getValue();
            ArrayList arrayList = new ArrayList();
            for (Object obj : iterable) {
                if (Intrinsics.areEqual((NavBackStackEntry) obj, popUpTo)) {
                    break;
                } else {
                    arrayList.add(obj);
                }
            }
            ((C3685v) interfaceC3676m).m5909f(arrayList);
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public void popWithTransition(NavBackStackEntry popUpTo, boolean saveState) {
        Object objPrevious;
        popUpTo.getClass();
        Iterable iterable = (Iterable) ((C3685v) this._transitionsInProgress).getValue();
        if (!(iterable instanceof Collection) || !((Collection) iterable).isEmpty()) {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                if (((NavBackStackEntry) it.next()) == popUpTo) {
                    Iterable iterable2 = (Iterable) this.backStack.getValue();
                    if ((iterable2 instanceof Collection) && ((Collection) iterable2).isEmpty()) {
                        return;
                    }
                    Iterator it2 = iterable2.iterator();
                    while (it2.hasNext()) {
                        if (((NavBackStackEntry) it2.next()) == popUpTo) {
                            break;
                        }
                    }
                    return;
                }
            }
        }
        C3685v c3685v = (C3685v) this._transitionsInProgress;
        c3685v.m5909f(SetsKt___SetsKt.plus((Set<? extends NavBackStackEntry>) c3685v.getValue(), popUpTo));
        List list = (List) this.backStack.getValue();
        ListIterator listIterator = list.listIterator(list.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                objPrevious = null;
                break;
            }
            objPrevious = listIterator.previous();
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) objPrevious;
            if (!Intrinsics.areEqual(navBackStackEntry, popUpTo) && ((List) this.backStack.getValue()).lastIndexOf(navBackStackEntry) < ((List) this.backStack.getValue()).lastIndexOf(popUpTo)) {
                break;
            }
        }
        NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) objPrevious;
        if (navBackStackEntry2 != null) {
            C3685v c3685v2 = (C3685v) this._transitionsInProgress;
            c3685v2.m5909f(SetsKt___SetsKt.plus((Set<? extends NavBackStackEntry>) c3685v2.getValue(), navBackStackEntry2));
        }
        pop(popUpTo, saveState);
    }

    @CallSuper
    public void prepareForTransition(NavBackStackEntry entry) {
        entry.getClass();
        C3685v c3685v = (C3685v) this._transitionsInProgress;
        c3685v.m5909f(SetsKt___SetsKt.plus((Set<? extends NavBackStackEntry>) c3685v.getValue(), entry));
    }

    public void push(NavBackStackEntry backStackEntry) {
        backStackEntry.getClass();
        ReentrantLock reentrantLock = this.backStackLock;
        reentrantLock.lock();
        try {
            InterfaceC3676m interfaceC3676m = this._backStack;
            ((C3685v) interfaceC3676m).m5909f(CollectionsKt.plus((Collection<? extends NavBackStackEntry>) ((C3685v) interfaceC3676m).getValue(), backStackEntry));
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public void pushWithTransition(NavBackStackEntry backStackEntry) {
        backStackEntry.getClass();
        Iterable iterable = (Iterable) ((C3685v) this._transitionsInProgress).getValue();
        if (!(iterable instanceof Collection) || !((Collection) iterable).isEmpty()) {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                if (((NavBackStackEntry) it.next()) == backStackEntry) {
                    Iterable iterable2 = (Iterable) this.backStack.getValue();
                    if (!(iterable2 instanceof Collection) || !((Collection) iterable2).isEmpty()) {
                        Iterator it2 = iterable2.iterator();
                        while (it2.hasNext()) {
                            if (((NavBackStackEntry) it2.next()) == backStackEntry) {
                                return;
                            }
                        }
                        break;
                    }
                    break;
                }
            }
        }
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) CollectionsKt.lastOrNull((List) this.backStack.getValue());
        if (navBackStackEntry != null) {
            C3685v c3685v = (C3685v) this._transitionsInProgress;
            c3685v.m5909f(SetsKt___SetsKt.plus((Set<? extends NavBackStackEntry>) c3685v.getValue(), navBackStackEntry));
        }
        C3685v c3685v2 = (C3685v) this._transitionsInProgress;
        c3685v2.m5909f(SetsKt___SetsKt.plus((Set<? extends NavBackStackEntry>) c3685v2.getValue(), backStackEntry));
        push(backStackEntry);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final void setNavigating(boolean z9) {
        this.isNavigating = z9;
    }
}

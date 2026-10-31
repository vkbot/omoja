package androidx.fragment.app;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.collection.ArrayMap;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.app.SharedElementCallback;
import androidx.core.os.CancellationSignal;
import androidx.core.view.OneShotPreDrawListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewGroupCompat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Map$Entry;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u0003*+,B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J(\u0010\t\u001a\u00020\u00062\u0016\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\r2\u0006\u0010\u000e\u001a\u00020\fH\u0002J\u001e\u0010\u000f\u001a\u00020\u00062\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J$\u0010\u0014\u001a\u00020\u00062\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\f0\u00162\u0006\u0010\u000e\u001a\u00020\fH\u0002J@\u0010\u0018\u001a\u00020\u00062\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00112\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\b0\u001c2\u0006\u0010\u001d\u001a\u00020\u00132\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00130\u001fH\u0002JL\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00130\u001f2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\"0\u00112\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\b0\u001c2\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010#\u001a\u0004\u0018\u00010\b2\b\u0010$\u001a\u0004\u0018\u00010\bH\u0002J\u0016\u0010%\u001a\u00020\u00062\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u0011H\u0002J&\u0010&\u001a\u00020\u0006*\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\f0'2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00170)H\u0002¨\u0006-"}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController;", "Landroidx/fragment/app/SpecialEffectsController;", "container", "Landroid/view/ViewGroup;", "(Landroid/view/ViewGroup;)V", "applyContainerChanges", "", "operation", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "captureTransitioningViews", "transitioningViews", "Ljava/util/ArrayList;", "Landroid/view/View;", "Lkotlin/collections/ArrayList;", "view", "executeOperations", "operations", "", "isPop", "", "findNamedViews", "namedViews", "", "", "startAnimations", "animationInfos", "Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;", "awaitingContainerChanges", "", "startedAnyTransition", "startedTransitions", "", "startTransitions", "transitionInfos", "Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;", "firstOut", "lastIn", "syncAnimations", "retainMatchingViews", "Landroidx/collection/ArrayMap;", "names", "", "AnimationInfo", "SpecialEffectsInfo", "TransitionInfo", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nDefaultSpecialEffectsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultSpecialEffectsController.kt\nandroidx/fragment/app/DefaultSpecialEffectsController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,877:1\n288#2,2:878\n533#2,6:880\n819#2:886\n847#2,2:887\n766#2:889\n857#2,2:890\n1789#2,3:892\n819#2:895\n847#2,2:896\n1855#2,2:898\n*S KotlinDebug\n*F\n+ 1 DefaultSpecialEffectsController.kt\nandroidx/fragment/app/DefaultSpecialEffectsController\n*L\n47#1:878,2\n53#1:880,6\n312#1:886\n312#1:887,2\n315#1:889\n315#1:890,2\n317#1:892,3\n629#1:895\n629#1:896,2\n632#1:898,2\n*E\n"})
public final class DefaultSpecialEffectsController extends SpecialEffectsController {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultSpecialEffectsController(ViewGroup viewGroup) {
        super(viewGroup);
        viewGroup.getClass();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void applyContainerChanges(SpecialEffectsController$Operation operation) {
        View view = operation.getFragment().mView;
        SpecialEffectsController$Operation$State finalState = operation.getFinalState();
        view.getClass();
        finalState.applyState(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void c(List list, SpecialEffectsController$Operation specialEffectsController$Operation, DefaultSpecialEffectsController defaultSpecialEffectsController) {
        executeOperations$lambda$2(list, specialEffectsController$Operation, defaultSpecialEffectsController);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void captureTransitioningViews(ArrayList<View> transitioningViews, View view) {
        if (!(view instanceof ViewGroup)) {
            if (transitioningViews.contains(view)) {
                return;
            }
            transitioningViews.add(view);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (ViewGroupCompat.isTransitionGroup(viewGroup)) {
            if (transitioningViews.contains(view)) {
                return;
            }
            transitioningViews.add(view);
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = viewGroup.getChildAt(i9);
            if (childAt.getVisibility() == 0) {
                captureTransitioningViews(transitioningViews, childAt);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void d(SpecialEffectsController$Operation specialEffectsController$Operation, SpecialEffectsController$Operation specialEffectsController$Operation2, boolean z8, ArrayMap arrayMap) {
        startTransitions$lambda$9(specialEffectsController$Operation, specialEffectsController$Operation2, z8, arrayMap);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void e(Animator animator, SpecialEffectsController$Operation specialEffectsController$Operation) {
        startAnimations$lambda$3(animator, specialEffectsController$Operation);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final void executeOperations$lambda$2(List list, SpecialEffectsController$Operation specialEffectsController$Operation, DefaultSpecialEffectsController defaultSpecialEffectsController) {
        list.getClass();
        specialEffectsController$Operation.getClass();
        defaultSpecialEffectsController.getClass();
        if (list.contains(specialEffectsController$Operation)) {
            list.remove(specialEffectsController$Operation);
            defaultSpecialEffectsController.applyContainerChanges(specialEffectsController$Operation);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void f(View view, DefaultSpecialEffectsController defaultSpecialEffectsController, DefaultSpecialEffectsController$AnimationInfo defaultSpecialEffectsController$AnimationInfo, SpecialEffectsController$Operation specialEffectsController$Operation) {
        startAnimations$lambda$4(view, defaultSpecialEffectsController, defaultSpecialEffectsController$AnimationInfo, specialEffectsController$Operation);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void findNamedViews(Map<String, View> namedViews, View view) {
        String transitionName = ViewCompat.getTransitionName(view);
        if (transitionName != null) {
            namedViews.put(transitionName, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i9 = 0; i9 < childCount; i9++) {
                View childAt = viewGroup.getChildAt(i9);
                if (childAt.getVisibility() == 0) {
                    findNamedViews(namedViews, childAt);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void g(ArrayList arrayList) {
        startTransitions$lambda$11(arrayList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void h(DefaultSpecialEffectsController$TransitionInfo defaultSpecialEffectsController$TransitionInfo, SpecialEffectsController$Operation specialEffectsController$Operation) {
        startTransitions$lambda$14$lambda$13(defaultSpecialEffectsController$TransitionInfo, specialEffectsController$Operation);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void i(FragmentTransitionImpl fragmentTransitionImpl, View view, Rect rect) {
        startTransitions$lambda$10(fragmentTransitionImpl, view, rect);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void retainMatchingViews(ArrayMap<String, View> arrayMap, Collection<String> collection) {
        Set<Map$Entry<String, View>> setEntrySet = arrayMap.entrySet();
        setEntrySet.getClass();
        CollectionsKt.r(setEntrySet, new DefaultSpecialEffectsController$retainMatchingViews$1(collection));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void startAnimations(List<DefaultSpecialEffectsController$AnimationInfo> animationInfos, List<SpecialEffectsController$Operation> awaitingContainerChanges, boolean startedAnyTransition, Map<SpecialEffectsController$Operation, Boolean> startedTransitions) {
        Context context = getContainer().getContext();
        ArrayList arrayList = new ArrayList();
        int i9 = 0;
        boolean z8 = false;
        for (DefaultSpecialEffectsController$AnimationInfo defaultSpecialEffectsController$AnimationInfo : animationInfos) {
            if (defaultSpecialEffectsController$AnimationInfo.isVisibilityUnchanged()) {
                defaultSpecialEffectsController$AnimationInfo.completeSpecialEffect();
            } else {
                context.getClass();
                FragmentAnim$AnimationOrAnimator animation = defaultSpecialEffectsController$AnimationInfo.getAnimation(context);
                if (animation == null) {
                    defaultSpecialEffectsController$AnimationInfo.completeSpecialEffect();
                } else {
                    Animator animator = animation.animator;
                    if (animator == null) {
                        arrayList.add(defaultSpecialEffectsController$AnimationInfo);
                    } else {
                        SpecialEffectsController$Operation operation = defaultSpecialEffectsController$AnimationInfo.getOperation();
                        Fragment fragment = operation.getFragment();
                        if (Intrinsics.areEqual(startedTransitions.get(operation), Boolean.TRUE)) {
                            if (FragmentManager.isLoggingEnabled(2)) {
                                Log.v(FragmentManager.TAG, "Ignoring Animator set on " + fragment + " as this Fragment was involved in a Transition.");
                            }
                            defaultSpecialEffectsController$AnimationInfo.completeSpecialEffect();
                        } else {
                            boolean z9 = operation.getFinalState() == SpecialEffectsController$Operation$State.GONE;
                            if (z9) {
                                awaitingContainerChanges.remove(operation);
                            }
                            View view = fragment.mView;
                            getContainer().startViewTransition(view);
                            animator.addListener(new DefaultSpecialEffectsController$startAnimations$1(this, view, z9, operation, defaultSpecialEffectsController$AnimationInfo));
                            animator.setTarget(view);
                            animator.start();
                            if (FragmentManager.isLoggingEnabled(2)) {
                                Log.v(FragmentManager.TAG, "Animator from operation " + operation + " has started.");
                            }
                            defaultSpecialEffectsController$AnimationInfo.getSignal().setOnCancelListener(new a(animator, operation));
                            z8 = true;
                        }
                    }
                }
            }
        }
        int size = arrayList.size();
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            DefaultSpecialEffectsController$AnimationInfo defaultSpecialEffectsController$AnimationInfo2 = (DefaultSpecialEffectsController$AnimationInfo) obj;
            SpecialEffectsController$Operation operation2 = defaultSpecialEffectsController$AnimationInfo2.getOperation();
            Fragment fragment2 = operation2.getFragment();
            if (startedAnyTransition) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(FragmentManager.TAG, "Ignoring Animation set on " + fragment2 + " as Animations cannot run alongside Transitions.");
                }
                defaultSpecialEffectsController$AnimationInfo2.completeSpecialEffect();
            } else if (z8) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(FragmentManager.TAG, "Ignoring Animation set on " + fragment2 + " as Animations cannot run alongside Animators.");
                }
                defaultSpecialEffectsController$AnimationInfo2.completeSpecialEffect();
            } else {
                View view2 = fragment2.mView;
                context.getClass();
                FragmentAnim$AnimationOrAnimator animation2 = defaultSpecialEffectsController$AnimationInfo2.getAnimation(context);
                if (animation2 == null) {
                    j1.i.l("Required value was null.");
                    return;
                }
                Animation animation3 = animation2.animation;
                if (animation3 == null) {
                    j1.i.l("Required value was null.");
                    return;
                }
                if (operation2.getFinalState() != SpecialEffectsController$Operation$State.REMOVED) {
                    view2.startAnimation(animation3);
                    defaultSpecialEffectsController$AnimationInfo2.completeSpecialEffect();
                } else {
                    getContainer().startViewTransition(view2);
                    FragmentAnim$EndViewTransitionAnimation fragmentAnim$EndViewTransitionAnimation = new FragmentAnim$EndViewTransitionAnimation(animation3, getContainer(), view2);
                    fragmentAnim$EndViewTransitionAnimation.setAnimationListener(new DefaultSpecialEffectsController$startAnimations$3(operation2, this, view2, defaultSpecialEffectsController$AnimationInfo2));
                    view2.startAnimation(fragmentAnim$EndViewTransitionAnimation);
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(FragmentManager.TAG, "Animation from operation " + operation2 + " has started.");
                    }
                }
                defaultSpecialEffectsController$AnimationInfo2.getSignal().setOnCancelListener(new b(view2, this, defaultSpecialEffectsController$AnimationInfo2, operation2));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final void startAnimations$lambda$3(Animator animator, SpecialEffectsController$Operation specialEffectsController$Operation) {
        specialEffectsController$Operation.getClass();
        animator.end();
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "Animator from operation " + specialEffectsController$Operation + " has been canceled.");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final void startAnimations$lambda$4(View view, DefaultSpecialEffectsController defaultSpecialEffectsController, DefaultSpecialEffectsController$AnimationInfo defaultSpecialEffectsController$AnimationInfo, SpecialEffectsController$Operation specialEffectsController$Operation) {
        defaultSpecialEffectsController.getClass();
        defaultSpecialEffectsController$AnimationInfo.getClass();
        specialEffectsController$Operation.getClass();
        view.clearAnimation();
        defaultSpecialEffectsController.getContainer().endViewTransition(view);
        defaultSpecialEffectsController$AnimationInfo.completeSpecialEffect();
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "Animation from operation " + specialEffectsController$Operation + " has been cancelled.");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:235:0x0406 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:239:0x0406 */
    private final Map<SpecialEffectsController$Operation, Boolean> startTransitions(List<DefaultSpecialEffectsController$TransitionInfo> transitionInfos, List<SpecialEffectsController$Operation> awaitingContainerChanges, boolean isPop, SpecialEffectsController$Operation firstOut, SpecialEffectsController$Operation lastIn) {
        String str;
        Object obj;
        String str2;
        Object obj2;
        Object obj3;
        String str3;
        View view;
        Iterator<DefaultSpecialEffectsController$TransitionInfo> it;
        Object obj4;
        SpecialEffectsController$Operation specialEffectsController$Operation;
        ArrayMap arrayMap;
        LinkedHashMap linkedHashMap;
        View view2;
        int i9;
        View view3;
        Rect rect;
        View view4;
        int i10;
        this = this;
        SpecialEffectsController$Operation specialEffectsController$Operation2 = firstOut;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        ArrayList arrayList = new ArrayList();
        for (Object obj5 : transitionInfos) {
            if (!((DefaultSpecialEffectsController$TransitionInfo) obj5).isVisibilityUnchanged()) {
                arrayList.add(obj5);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i11 = 0;
        while (i11 < size) {
            Object obj6 = arrayList.get(i11);
            i11++;
            if (((DefaultSpecialEffectsController$TransitionInfo) obj6).getHandlingImpl() != null) {
                arrayList2.add(obj6);
            }
        }
        int size2 = arrayList2.size();
        FragmentTransitionImpl fragmentTransitionImpl = null;
        int i12 = 0;
        while (i12 < size2) {
            Object obj7 = arrayList2.get(i12);
            i12++;
            DefaultSpecialEffectsController$TransitionInfo defaultSpecialEffectsController$TransitionInfo = (DefaultSpecialEffectsController$TransitionInfo) obj7;
            FragmentTransitionImpl handlingImpl = defaultSpecialEffectsController$TransitionInfo.getHandlingImpl();
            if (fragmentTransitionImpl != null && handlingImpl != fragmentTransitionImpl) {
                StringBuilder sb = new StringBuilder("Mixing framework transitions and AndroidX transitions is not allowed. Fragment ");
                sb.append(defaultSpecialEffectsController$TransitionInfo.getOperation().getFragment());
                Object transition = defaultSpecialEffectsController$TransitionInfo.getTransition();
                sb.append(" returned Transition ");
                sb.append(transition);
                sb.append(" which uses a different Transition type than other Fragments.");
                throw new IllegalArgumentException(sb.toString().toString());
            }
            fragmentTransitionImpl = handlingImpl;
        }
        if (fragmentTransitionImpl == null) {
            for (DefaultSpecialEffectsController$TransitionInfo defaultSpecialEffectsController$TransitionInfo2 : transitionInfos) {
                linkedHashMap2.put(defaultSpecialEffectsController$TransitionInfo2.getOperation(), Boolean.FALSE);
                defaultSpecialEffectsController$TransitionInfo2.completeSpecialEffect();
            }
            return linkedHashMap2;
        }
        View view5 = new View(this.getContainer().getContext());
        Rect rect2 = new Rect();
        ArrayList<View> arrayList3 = new ArrayList<>();
        ArrayList<View> arrayList4 = new ArrayList<>();
        ArrayMap arrayMap2 = new ArrayMap();
        Iterator<DefaultSpecialEffectsController$TransitionInfo> it2 = transitionInfos.iterator();
        Object obj8 = null;
        View view6 = null;
        boolean z8 = false;
        while (true) {
            boolean zHasNext = it2.hasNext();
            str = FragmentManager.TAG;
            obj = obj8;
            if (!zHasNext) {
                break;
            }
            DefaultSpecialEffectsController$TransitionInfo next = it2.next();
            if (!next.hasSharedElementTransition() || specialEffectsController$Operation2 == null || lastIn == null) {
                arrayMap = arrayMap2;
                linkedHashMap = linkedHashMap2;
                view2 = view5;
                rect2 = rect2;
                arrayList3 = arrayList3;
                obj8 = obj;
                view6 = view6;
                arrayList4 = arrayList4;
                view5 = view2;
                linkedHashMap2 = linkedHashMap;
                arrayMap2 = arrayMap;
            } else {
                Object objWrapTransitionInSet = fragmentTransitionImpl.wrapTransitionInSet(fragmentTransitionImpl.cloneTransition(next.getSharedElementTransition()));
                ArrayList<String> sharedElementSourceNames = lastIn.getFragment().getSharedElementSourceNames();
                sharedElementSourceNames.getClass();
                ArrayList<String> sharedElementSourceNames2 = specialEffectsController$Operation2.getFragment().getSharedElementSourceNames();
                sharedElementSourceNames2.getClass();
                View view7 = view6;
                ArrayList<String> sharedElementTargetNames = specialEffectsController$Operation2.getFragment().getSharedElementTargetNames();
                sharedElementTargetNames.getClass();
                LinkedHashMap linkedHashMap3 = linkedHashMap2;
                int size3 = sharedElementTargetNames.size();
                View view8 = view5;
                Rect rect3 = rect2;
                int i13 = 0;
                while (i13 < size3) {
                    int i14 = size3;
                    int iIndexOf = sharedElementSourceNames.indexOf(sharedElementTargetNames.get(i13));
                    if (iIndexOf != -1) {
                        sharedElementSourceNames.set(iIndexOf, sharedElementSourceNames2.get(i13));
                    }
                    i13++;
                    size3 = i14;
                }
                ArrayList<String> sharedElementTargetNames2 = lastIn.getFragment().getSharedElementTargetNames();
                sharedElementTargetNames2.getClass();
                Pair pair = !isPop ? TuplesKt.to(specialEffectsController$Operation2.getFragment().getExitTransitionCallback(), lastIn.getFragment().getEnterTransitionCallback()) : TuplesKt.to(specialEffectsController$Operation2.getFragment().getEnterTransitionCallback(), lastIn.getFragment().getExitTransitionCallback());
                SharedElementCallback sharedElementCallback = (SharedElementCallback) pair.component1();
                SharedElementCallback sharedElementCallback2 = (SharedElementCallback) pair.component2();
                int i15 = 0;
                for (int size4 = sharedElementSourceNames.size(); i15 < size4; size4 = size4) {
                    arrayMap2.put(sharedElementSourceNames.get(i15), sharedElementTargetNames2.get(i15));
                    i15++;
                }
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(FragmentManager.TAG, ">>> entering view names <<<");
                    int i16 = 0;
                    for (int size5 = sharedElementTargetNames2.size(); i16 < size5; size5 = size5) {
                        String str4 = sharedElementTargetNames2.get(i16);
                        Log.v(FragmentManager.TAG, "Name: " + str4);
                        i16++;
                    }
                    Log.v(FragmentManager.TAG, ">>> exiting view names <<<");
                    int i17 = 0;
                    for (int size6 = sharedElementSourceNames.size(); i17 < size6; size6 = size6) {
                        String str5 = sharedElementSourceNames.get(i17);
                        Log.v(FragmentManager.TAG, "Name: " + str5);
                        i17++;
                    }
                }
                ArrayMap<String, View> arrayMap3 = new ArrayMap<>();
                View view9 = specialEffectsController$Operation2.getFragment().mView;
                view9.getClass();
                this.findNamedViews(arrayMap3, view9);
                arrayMap3.retainAll(sharedElementSourceNames);
                if (sharedElementCallback != null) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(FragmentManager.TAG, "Executing exit callback for operation " + specialEffectsController$Operation2);
                    }
                    sharedElementCallback.onMapSharedElements(sharedElementSourceNames, arrayMap3);
                    int size7 = sharedElementSourceNames.size() - 1;
                    if (size7 >= 0) {
                        while (true) {
                            int i18 = size7 - 1;
                            String str6 = sharedElementSourceNames.get(size7);
                            View view10 = arrayMap3.get(str6);
                            if (view10 == null) {
                                arrayMap2.remove(str6);
                                i10 = i18;
                            } else {
                                i10 = i18;
                                if (!Intrinsics.areEqual(str6, ViewCompat.getTransitionName(view10))) {
                                    arrayMap2.put(ViewCompat.getTransitionName(view10), (String) arrayMap2.remove(str6));
                                }
                            }
                            if (i10 < 0) {
                                break;
                            }
                            size7 = i10;
                        }
                    }
                } else {
                    arrayMap2.retainAll(arrayMap3.keySet());
                }
                ArrayMap<String, View> arrayMap4 = new ArrayMap<>();
                View view11 = lastIn.getFragment().mView;
                view11.getClass();
                this.findNamedViews(arrayMap4, view11);
                arrayMap4.retainAll(sharedElementTargetNames2);
                arrayMap4.retainAll(arrayMap2.values());
                if (sharedElementCallback2 != null) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(FragmentManager.TAG, "Executing enter callback for operation " + lastIn);
                    }
                    sharedElementCallback2.onMapSharedElements(sharedElementTargetNames2, arrayMap4);
                    int size8 = sharedElementTargetNames2.size() - 1;
                    if (size8 >= 0) {
                        while (true) {
                            int i19 = size8 - 1;
                            String str7 = sharedElementTargetNames2.get(size8);
                            View view12 = arrayMap4.get(str7);
                            if (view12 == null) {
                                str7.getClass();
                                String strFindKeyForValue = FragmentTransition.findKeyForValue(arrayMap2, str7);
                                if (strFindKeyForValue != null) {
                                    arrayMap2.remove(strFindKeyForValue);
                                }
                            } else if (!Intrinsics.areEqual(str7, ViewCompat.getTransitionName(view12))) {
                                str7.getClass();
                                String strFindKeyForValue2 = FragmentTransition.findKeyForValue(arrayMap2, str7);
                                if (strFindKeyForValue2 != null) {
                                    arrayMap2.put(strFindKeyForValue2, ViewCompat.getTransitionName(view12));
                                }
                            }
                            if (i19 < 0) {
                                break;
                            }
                            size8 = i19;
                        }
                    }
                } else {
                    FragmentTransition.retainValues(arrayMap2, arrayMap4);
                }
                Collection<String> collectionKeySet = arrayMap2.keySet();
                collectionKeySet.getClass();
                this.retainMatchingViews(arrayMap3, collectionKeySet);
                Collection<String> collectionValues = arrayMap2.values();
                collectionValues.getClass();
                this.retainMatchingViews(arrayMap4, collectionValues);
                if (arrayMap2.isEmpty()) {
                    arrayList3.clear();
                    arrayList4.clear();
                    view6 = view7;
                    linkedHashMap2 = linkedHashMap3;
                    view5 = view8;
                    rect2 = rect3;
                    arrayList4 = arrayList4;
                    obj8 = null;
                } else {
                    FragmentTransition.callSharedElementStartEnd(lastIn.getFragment(), specialEffectsController$Operation2.getFragment(), isPop, arrayMap3, true);
                    OneShotPreDrawListener.add(this.getContainer(), new c(lastIn, specialEffectsController$Operation2, isPop, arrayMap4));
                    arrayList3.addAll(arrayMap3.values());
                    if (sharedElementSourceNames.isEmpty()) {
                        i9 = 0;
                        view3 = view7;
                    } else {
                        i9 = 0;
                        view3 = arrayMap3.get(sharedElementSourceNames.get(0));
                        fragmentTransitionImpl.setEpicenter(objWrapTransitionInSet, view3);
                    }
                    ArrayList<View> arrayList5 = arrayList4;
                    arrayList5.addAll(arrayMap4.values());
                    if (sharedElementTargetNames2.isEmpty() || (view4 = arrayMap4.get(sharedElementTargetNames2.get(i9))) == null) {
                        rect = rect3;
                    } else {
                        rect = rect3;
                        OneShotPreDrawListener.add(this.getContainer(), new d(fragmentTransitionImpl, view4, rect, 2));
                        z8 = true;
                    }
                    view2 = view8;
                    fragmentTransitionImpl.setSharedElementTargets(objWrapTransitionInSet, view2, arrayList3);
                    Rect rect4 = rect;
                    arrayMap = arrayMap2;
                    fragmentTransitionImpl.scheduleRemoveTargets(objWrapTransitionInSet, null, null, null, null, objWrapTransitionInSet, arrayList5);
                    Boolean bool = Boolean.TRUE;
                    linkedHashMap = linkedHashMap3;
                    linkedHashMap.put(specialEffectsController$Operation2, bool);
                    linkedHashMap.put(lastIn, bool);
                    view6 = view3;
                    obj8 = objWrapTransitionInSet;
                    arrayList4 = arrayList5;
                    rect2 = rect4;
                    arrayList3 = arrayList3;
                    view5 = view2;
                    linkedHashMap2 = linkedHashMap;
                    arrayMap2 = arrayMap;
                }
            }
        }
        ArrayList<View> arrayList6 = arrayList3;
        ArrayMap arrayMap5 = arrayMap2;
        ArrayList<View> arrayList7 = arrayList4;
        View view13 = view6;
        boolean z9 = true;
        LinkedHashMap linkedHashMap4 = linkedHashMap2;
        View view14 = view5;
        Rect rect5 = rect2;
        ArrayList arrayList8 = new ArrayList();
        Iterator<DefaultSpecialEffectsController$TransitionInfo> it3 = transitionInfos.iterator();
        Object objMergeTransitionsTogether = null;
        Object objMergeTransitionsTogether2 = null;
        while (it3.hasNext()) {
            DefaultSpecialEffectsController$TransitionInfo next2 = it3.next();
            if (next2.isVisibilityUnchanged()) {
                linkedHashMap4.put(next2.getOperation(), Boolean.FALSE);
                next2.completeSpecialEffect();
            } else {
                Object objCloneTransition = fragmentTransitionImpl.cloneTransition(next2.getTransition());
                SpecialEffectsController$Operation operation = next2.getOperation();
                boolean z10 = (obj == null || !(operation == specialEffectsController$Operation2 || operation == lastIn)) ? false : z9;
                if (objCloneTransition != null) {
                    Object obj9 = objMergeTransitionsTogether2;
                    ArrayList<View> arrayList9 = new ArrayList<>();
                    View view15 = operation.getFragment().mView;
                    view15.getClass();
                    this.captureTransitioningViews(arrayList9, view15);
                    if (z10) {
                        if (operation == specialEffectsController$Operation2) {
                            arrayList9.removeAll(CollectionsKt.toSet(arrayList6));
                        } else {
                            arrayList9.removeAll(CollectionsKt.toSet(arrayList7));
                        }
                    }
                    if (arrayList9.isEmpty()) {
                        fragmentTransitionImpl.addTarget(objCloneTransition, view14);
                        view14 = view14;
                        obj3 = obj9;
                        it = it3;
                        str3 = str;
                        obj4 = objMergeTransitionsTogether;
                        linkedHashMap4 = linkedHashMap4;
                        obj2 = objCloneTransition;
                        specialEffectsController$Operation = operation;
                        view = view13;
                        z9 = true;
                        arrayList6 = arrayList6;
                        obj = obj;
                    } else {
                        fragmentTransitionImpl.addTargets(objCloneTransition, arrayList9);
                        Object obj10 = objMergeTransitionsTogether;
                        obj2 = objCloneTransition;
                        view14 = view14;
                        obj3 = obj9;
                        str3 = str;
                        view = view13;
                        arrayList6 = arrayList6;
                        obj = obj;
                        it = it3;
                        obj4 = obj10;
                        linkedHashMap4 = linkedHashMap4;
                        z9 = true;
                        fragmentTransitionImpl.scheduleRemoveTargets(obj2, obj2, arrayList9, null, null, null, null);
                        if (operation.getFinalState() == SpecialEffectsController$Operation$State.GONE) {
                            specialEffectsController$Operation = operation;
                            awaitingContainerChanges.remove(specialEffectsController$Operation);
                            ArrayList<View> arrayList10 = new ArrayList<>(arrayList9);
                            arrayList10.remove(specialEffectsController$Operation.getFragment().mView);
                            fragmentTransitionImpl.scheduleHideFragmentView(obj2, specialEffectsController$Operation.getFragment().mView, arrayList10);
                            OneShotPreDrawListener.add(getContainer(), new a4.g(2, arrayList9));
                        } else {
                            specialEffectsController$Operation = operation;
                        }
                    }
                    if (specialEffectsController$Operation.getFinalState() == SpecialEffectsController$Operation$State.VISIBLE) {
                        arrayList8.addAll(arrayList9);
                        if (z8) {
                            fragmentTransitionImpl.setEpicenter(obj2, rect5);
                        }
                    } else {
                        fragmentTransitionImpl.setEpicenter(obj2, view);
                    }
                    linkedHashMap4.put(specialEffectsController$Operation, Boolean.TRUE);
                    if (next2.getIsOverlapAllowed()) {
                        objMergeTransitionsTogether = fragmentTransitionImpl.mergeTransitionsTogether(obj4, obj2, null);
                        objMergeTransitionsTogether2 = obj3;
                    } else {
                        objMergeTransitionsTogether2 = fragmentTransitionImpl.mergeTransitionsTogether(obj3, obj2, null);
                        objMergeTransitionsTogether = obj4;
                    }
                    it3 = it;
                    view13 = view;
                    str = str3;
                } else if (!z10) {
                    linkedHashMap4.put(operation, Boolean.FALSE);
                    next2.completeSpecialEffect();
                }
            }
        }
        String str8 = str;
        ArrayList<View> arrayList11 = arrayList6;
        LinkedHashMap linkedHashMap5 = linkedHashMap4;
        boolean z11 = z9;
        Object obj11 = obj;
        Object objMergeTransitionsInSequence = fragmentTransitionImpl.mergeTransitionsInSequence(objMergeTransitionsTogether, objMergeTransitionsTogether2, obj11);
        if (objMergeTransitionsInSequence == null) {
            return linkedHashMap5;
        }
        ArrayList arrayList12 = new ArrayList();
        for (Object obj12 : transitionInfos) {
            if (!((DefaultSpecialEffectsController$TransitionInfo) obj12).isVisibilityUnchanged()) {
                arrayList12.add(obj12);
            }
        }
        int size9 = arrayList12.size();
        int i20 = 0;
        while (i20 < size9) {
            Object obj13 = arrayList12.get(i20);
            i20++;
            DefaultSpecialEffectsController$TransitionInfo defaultSpecialEffectsController$TransitionInfo3 = (DefaultSpecialEffectsController$TransitionInfo) obj13;
            Object transition2 = defaultSpecialEffectsController$TransitionInfo3.getTransition();
            SpecialEffectsController$Operation operation2 = defaultSpecialEffectsController$TransitionInfo3.getOperation();
            boolean z12 = (obj11 == null || !(operation2 == specialEffectsController$Operation2 || operation2 == lastIn)) ? false : z11;
            if (transition2 == null && !z12) {
                str2 = str8;
            } else if (ViewCompat.isLaidOut(getContainer())) {
                str2 = str8;
                fragmentTransitionImpl.setListenerForTransitionEnd(defaultSpecialEffectsController$TransitionInfo3.getOperation().getFragment(), objMergeTransitionsInSequence, defaultSpecialEffectsController$TransitionInfo3.getSignal(), new j(defaultSpecialEffectsController$TransitionInfo3, operation2, 2));
            } else {
                if (FragmentManager.isLoggingEnabled(2)) {
                    str2 = str8;
                    Log.v(str2, "SpecialEffectsController: Container " + getContainer() + " has not been laid out. Completing operation " + operation2);
                } else {
                    str2 = str8;
                }
                defaultSpecialEffectsController$TransitionInfo3.completeSpecialEffect();
            }
            specialEffectsController$Operation2 = firstOut;
            str8 = str2;
        }
        String str9 = str8;
        if (!ViewCompat.isLaidOut(getContainer())) {
            return linkedHashMap5;
        }
        FragmentTransition.setViewVisibility(arrayList8, 4);
        ArrayList<String> arrayListPrepareSetNameOverridesReordered = fragmentTransitionImpl.prepareSetNameOverridesReordered(arrayList7);
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(str9, ">>>>> Beginning transition <<<<<");
            Log.v(str9, ">>>>> SharedElementFirstOutViews <<<<<");
            int size10 = arrayList11.size();
            int i21 = 0;
            while (i21 < size10) {
                View view16 = arrayList11.get(i21);
                i21++;
                view16.getClass();
                View view17 = view16;
                Log.v(str9, "View: " + view17 + " Name: " + ViewCompat.getTransitionName(view17));
            }
            Log.v(str9, ">>>>> SharedElementLastInViews <<<<<");
            int size11 = arrayList7.size();
            int i22 = 0;
            while (i22 < size11) {
                View view18 = arrayList7.get(i22);
                i22++;
                view18.getClass();
                View view19 = view18;
                Log.v(str9, "View: " + view19 + " Name: " + ViewCompat.getTransitionName(view19));
            }
        }
        fragmentTransitionImpl.beginDelayedTransition(getContainer(), objMergeTransitionsInSequence);
        fragmentTransitionImpl.setNameOverridesReordered(getContainer(), arrayList11, arrayList7, arrayListPrepareSetNameOverridesReordered, arrayMap5);
        FragmentTransition.setViewVisibility(arrayList8, 0);
        fragmentTransitionImpl.swapSharedElementTargets(obj11, arrayList11, arrayList7);
        return linkedHashMap5;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final void startTransitions$lambda$10(FragmentTransitionImpl fragmentTransitionImpl, View view, Rect rect) {
        fragmentTransitionImpl.getClass();
        rect.getClass();
        fragmentTransitionImpl.getBoundsOnScreen(view, rect);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final void startTransitions$lambda$11(ArrayList arrayList) {
        arrayList.getClass();
        FragmentTransition.setViewVisibility(arrayList, 4);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final void startTransitions$lambda$14$lambda$13(DefaultSpecialEffectsController$TransitionInfo defaultSpecialEffectsController$TransitionInfo, SpecialEffectsController$Operation specialEffectsController$Operation) {
        defaultSpecialEffectsController$TransitionInfo.getClass();
        specialEffectsController$Operation.getClass();
        defaultSpecialEffectsController$TransitionInfo.completeSpecialEffect();
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "Transition for operation " + specialEffectsController$Operation + " has completed");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final void startTransitions$lambda$9(SpecialEffectsController$Operation specialEffectsController$Operation, SpecialEffectsController$Operation specialEffectsController$Operation2, boolean z8, ArrayMap arrayMap) {
        arrayMap.getClass();
        FragmentTransition.callSharedElementStartEnd(specialEffectsController$Operation.getFragment(), specialEffectsController$Operation2.getFragment(), z8, arrayMap, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void syncAnimations(List<? extends SpecialEffectsController$Operation> operations) {
        Fragment fragment = ((SpecialEffectsController$Operation) CollectionsKt.last((List) operations)).getFragment();
        for (SpecialEffectsController$Operation specialEffectsController$Operation : operations) {
            specialEffectsController$Operation.getFragment().mAnimationInfo.mEnterAnim = fragment.mAnimationInfo.mEnterAnim;
            specialEffectsController$Operation.getFragment().mAnimationInfo.mExitAnim = fragment.mAnimationInfo.mExitAnim;
            specialEffectsController$Operation.getFragment().mAnimationInfo.mPopEnterAnim = fragment.mAnimationInfo.mPopEnterAnim;
            specialEffectsController$Operation.getFragment().mAnimationInfo.mPopExitAnim = fragment.mAnimationInfo.mPopExitAnim;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:28:0x00c8  */
    @Override // androidx.fragment.app.SpecialEffectsController
    public void executeOperations(List<? extends SpecialEffectsController$Operation> operations, boolean isPop) {
        SpecialEffectsController$Operation specialEffectsController$Operation;
        Object next;
        operations.getClass();
        Iterator<T> it = operations.iterator();
        while (true) {
            specialEffectsController$Operation = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            SpecialEffectsController$Operation specialEffectsController$Operation2 = (SpecialEffectsController$Operation) next;
            SpecialEffectsController$Operation$State$Companion specialEffectsController$Operation$State$Companion = SpecialEffectsController$Operation$State.Companion;
            View view = specialEffectsController$Operation2.getFragment().mView;
            view.getClass();
            SpecialEffectsController$Operation$State specialEffectsController$Operation$StateAsOperationState = specialEffectsController$Operation$State$Companion.asOperationState(view);
            SpecialEffectsController$Operation$State specialEffectsController$Operation$State = SpecialEffectsController$Operation$State.VISIBLE;
            if (specialEffectsController$Operation$StateAsOperationState == specialEffectsController$Operation$State && specialEffectsController$Operation2.getFinalState() != specialEffectsController$Operation$State) {
                break;
            }
        }
        SpecialEffectsController$Operation specialEffectsController$Operation3 = (SpecialEffectsController$Operation) next;
        ListIterator<? extends SpecialEffectsController$Operation> listIterator = operations.listIterator(operations.size());
        while (listIterator.hasPrevious()) {
            SpecialEffectsController$Operation specialEffectsController$OperationPrevious = listIterator.previous();
            SpecialEffectsController$Operation specialEffectsController$Operation4 = specialEffectsController$OperationPrevious;
            SpecialEffectsController$Operation$State$Companion specialEffectsController$Operation$State$Companion2 = SpecialEffectsController$Operation$State.Companion;
            View view2 = specialEffectsController$Operation4.getFragment().mView;
            view2.getClass();
            SpecialEffectsController$Operation$State specialEffectsController$Operation$StateAsOperationState2 = specialEffectsController$Operation$State$Companion2.asOperationState(view2);
            SpecialEffectsController$Operation$State specialEffectsController$Operation$State2 = SpecialEffectsController$Operation$State.VISIBLE;
            if (specialEffectsController$Operation$StateAsOperationState2 != specialEffectsController$Operation$State2 && specialEffectsController$Operation4.getFinalState() == specialEffectsController$Operation$State2) {
                specialEffectsController$Operation = specialEffectsController$OperationPrevious;
                break;
            }
        }
        SpecialEffectsController$Operation specialEffectsController$Operation5 = specialEffectsController$Operation;
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "Executing operations from " + specialEffectsController$Operation3 + " to " + specialEffectsController$Operation5);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        List<SpecialEffectsController$Operation> mutableList = CollectionsKt.toMutableList((Collection) operations);
        syncAnimations(operations);
        for (SpecialEffectsController$Operation specialEffectsController$Operation6 : operations) {
            CancellationSignal cancellationSignal = new CancellationSignal();
            specialEffectsController$Operation6.markStartedSpecialEffect(cancellationSignal);
            arrayList.add(new DefaultSpecialEffectsController$AnimationInfo(specialEffectsController$Operation6, cancellationSignal, isPop));
            CancellationSignal cancellationSignal2 = new CancellationSignal();
            specialEffectsController$Operation6.markStartedSpecialEffect(cancellationSignal2);
            boolean z8 = false;
            if (isPop) {
                if (specialEffectsController$Operation6 == specialEffectsController$Operation3) {
                    z8 = true;
                }
            } else if (specialEffectsController$Operation6 == specialEffectsController$Operation5) {
                z8 = true;
            }
            arrayList2.add(new DefaultSpecialEffectsController$TransitionInfo(specialEffectsController$Operation6, cancellationSignal2, isPop, z8));
            specialEffectsController$Operation6.addCompletionListener(new d(mutableList, specialEffectsController$Operation6, this));
        }
        Map<SpecialEffectsController$Operation, Boolean> mapStartTransitions = startTransitions(arrayList2, mutableList, isPop, specialEffectsController$Operation3, specialEffectsController$Operation5);
        startAnimations(arrayList, mutableList, mapStartTransitions.containsValue(Boolean.TRUE), mapStartTransitions);
        Iterator<SpecialEffectsController$Operation> it2 = mutableList.iterator();
        while (it2.hasNext()) {
            applyContainerChanges(it2.next());
        }
        mutableList.clear();
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "Completed executing operations from " + specialEffectsController$Operation3 + " to " + specialEffectsController$Operation5);
        }
    }
}

package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.collection.ArrayMap;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.SharedElementCallback;
import androidx.core.os.CancellationSignal;
import androidx.core.view.OneShotPreDrawListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewGroupCompat;
import androidx.navigation.C0674b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import p005a4.RunnableC0014g;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u0003*+,B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J(\u0010\t\u001a\u00020\u00062\u0016\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\r2\u0006\u0010\u000e\u001a\u00020\fH\u0002J\u001e\u0010\u000f\u001a\u00020\u00062\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J$\u0010\u0014\u001a\u00020\u00062\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\f0\u00162\u0006\u0010\u000e\u001a\u00020\fH\u0002J@\u0010\u0018\u001a\u00020\u00062\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00112\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\b0\u001c2\u0006\u0010\u001d\u001a\u00020\u00132\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00130\u001fH\u0002JL\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00130\u001f2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\"0\u00112\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\b0\u001c2\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010#\u001a\u0004\u0018\u00010\b2\b\u0010$\u001a\u0004\u0018\u00010\bH\u0002J\u0016\u0010%\u001a\u00020\u00062\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u0011H\u0002J&\u0010&\u001a\u00020\u0006*\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\f0'2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00170)H\u0002¨\u0006-"}, m3159d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController;", "Landroidx/fragment/app/SpecialEffectsController;", "container", "Landroid/view/ViewGroup;", "(Landroid/view/ViewGroup;)V", "applyContainerChanges", "", "operation", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "captureTransitioningViews", "transitioningViews", "Ljava/util/ArrayList;", "Landroid/view/View;", "Lkotlin/collections/ArrayList;", "view", "executeOperations", "operations", "", "isPop", "", "findNamedViews", "namedViews", "", "", "startAnimations", "animationInfos", "Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;", "awaitingContainerChanges", "", "startedAnyTransition", "startedTransitions", "", "startTransitions", "transitionInfos", "Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;", "firstOut", "lastIn", "syncAnimations", "retainMatchingViews", "Landroidx/collection/ArrayMap;", "names", "", "AnimationInfo", "SpecialEffectsInfo", "TransitionInfo", "fragment_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nDefaultSpecialEffectsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultSpecialEffectsController.kt\nandroidx/fragment/app/DefaultSpecialEffectsController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,877:1\n288#2,2:878\n533#2,6:880\n819#2:886\n847#2,2:887\n766#2:889\n857#2,2:890\n1789#2,3:892\n819#2:895\n847#2,2:896\n1855#2,2:898\n*S KotlinDebug\n*F\n+ 1 DefaultSpecialEffectsController.kt\nandroidx/fragment/app/DefaultSpecialEffectsController\n*L\n47#1:878,2\n53#1:880,6\n312#1:886\n312#1:887,2\n315#1:889\n315#1:890,2\n317#1:892,3\n629#1:895\n629#1:896,2\n632#1:898,2\n*E\n"})
public final class DefaultSpecialEffectsController extends SpecialEffectsController {

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\f\u001a\u0004\u0018\u00010\n2\u0006\u0010\r\u001a\u00020\u000eR\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m3159d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;", "Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;", "operation", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "signal", "Landroidx/core/os/CancellationSignal;", "isPop", "", "(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;Z)V", "animation", "Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;", "isAnimLoaded", "getAnimation", "context", "Landroid/content/Context;", "fragment_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class AnimationInfo extends SpecialEffectsInfo {
        private FragmentAnim.AnimationOrAnimator animation;
        private boolean isAnimLoaded;
        private final boolean isPop;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnimationInfo(SpecialEffectsController.Operation operation, CancellationSignal cancellationSignal, boolean z9) {
            super(operation, cancellationSignal);
            operation.getClass();
            cancellationSignal.getClass();
            this.isPop = z9;
        }

        public final FragmentAnim.AnimationOrAnimator getAnimation(Context context) {
            context.getClass();
            if (this.isAnimLoaded) {
                return this.animation;
            }
            FragmentAnim.AnimationOrAnimator animationOrAnimatorLoadAnimation = FragmentAnim.loadAnimation(context, getOperation().getFragment(), getOperation().getFinalState() == SpecialEffectsController.Operation.State.VISIBLE, this.isPop);
            this.animation = animationOrAnimatorLoadAnimation;
            this.isAnimLoaded = true;
            return animationOrAnimatorLoadAnimation;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\b\u0012\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u000e\u001a\u00020\u000fR\u0011\u0010\u0007\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0010"}, m3159d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;", "", "operation", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "signal", "Landroidx/core/os/CancellationSignal;", "(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V", "isVisibilityUnchanged", "", "()Z", "getOperation", "()Landroidx/fragment/app/SpecialEffectsController$Operation;", "getSignal", "()Landroidx/core/os/CancellationSignal;", "completeSpecialEffect", "", "fragment_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static class SpecialEffectsInfo {
        private final SpecialEffectsController.Operation operation;
        private final CancellationSignal signal;

        public SpecialEffectsInfo(SpecialEffectsController.Operation operation, CancellationSignal cancellationSignal) {
            operation.getClass();
            cancellationSignal.getClass();
            this.operation = operation;
            this.signal = cancellationSignal;
        }

        public final void completeSpecialEffect() {
            this.operation.completeSpecialEffect(this.signal);
        }

        public final SpecialEffectsController.Operation getOperation() {
            return this.operation;
        }

        public final CancellationSignal getSignal() {
            return this.signal;
        }

        public final boolean isVisibilityUnchanged() {
            SpecialEffectsController.Operation.State.Companion companion = SpecialEffectsController.Operation.State.INSTANCE;
            View view = this.operation.getFragment().mView;
            view.getClass();
            SpecialEffectsController.Operation.State stateAsOperationState = companion.asOperationState(view);
            SpecialEffectsController.Operation.State finalState = this.operation.getFinalState();
            if (stateAsOperationState == finalState) {
                return true;
            }
            SpecialEffectsController.Operation.State state = SpecialEffectsController.Operation.State.VISIBLE;
            return (stateAsOperationState == state || finalState == state) ? false : true;
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.DefaultSpecialEffectsController$startAnimations$3 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\b"}, m3159d2 = {"androidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3", "Landroid/view/animation/Animation$AnimationListener;", "onAnimationEnd", "", "animation", "Landroid/view/animation/Animation;", "onAnimationRepeat", "onAnimationStart", "fragment_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class AnimationAnimationListenerC04993 implements Animation.AnimationListener {
        final /* synthetic */ AnimationInfo $animationInfo;
        final /* synthetic */ SpecialEffectsController.Operation $operation;
        final /* synthetic */ View $viewToAnimate;
        final /* synthetic */ DefaultSpecialEffectsController this$0;

        public AnimationAnimationListenerC04993(SpecialEffectsController.Operation operation, DefaultSpecialEffectsController defaultSpecialEffectsController, View view, AnimationInfo animationInfo) {
            this.$operation = operation;
            this.this$0 = defaultSpecialEffectsController;
            this.$viewToAnimate = view;
            this.$animationInfo = animationInfo;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onAnimationEnd$lambda$0(DefaultSpecialEffectsController defaultSpecialEffectsController, View view, AnimationInfo animationInfo) {
            defaultSpecialEffectsController.getClass();
            animationInfo.getClass();
            defaultSpecialEffectsController.getContainer().endViewTransition(view);
            animationInfo.completeSpecialEffect();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            animation.getClass();
            this.this$0.getContainer().post(new RunnableC0562d(this.this$0, this.$viewToAnimate, this.$animationInfo, 0));
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v(FragmentManager.TAG, "Animation from operation " + this.$operation + " has ended.");
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
            animation.getClass();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            animation.getClass();
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v(FragmentManager.TAG, "Animation from operation " + this.$operation + " has reached onAnimationStart.");
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultSpecialEffectsController(ViewGroup viewGroup) {
        super(viewGroup);
        viewGroup.getClass();
    }

    private final void applyContainerChanges(SpecialEffectsController.Operation operation) {
        View view = operation.getFragment().mView;
        SpecialEffectsController.Operation.State finalState = operation.getFinalState();
        view.getClass();
        finalState.applyState(view);
    }

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
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if (childAt.getVisibility() == 0) {
                captureTransitioningViews(transitioningViews, childAt);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void executeOperations$lambda$2(List list, SpecialEffectsController.Operation operation, DefaultSpecialEffectsController defaultSpecialEffectsController) {
        list.getClass();
        operation.getClass();
        defaultSpecialEffectsController.getClass();
        if (list.contains(operation)) {
            list.remove(operation);
            defaultSpecialEffectsController.applyContainerChanges(operation);
        }
    }

    private final void findNamedViews(Map<String, View> namedViews, View view) {
        String transitionName = ViewCompat.getTransitionName(view);
        if (transitionName != null) {
            namedViews.put(transitionName, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = viewGroup.getChildAt(i10);
                if (childAt.getVisibility() == 0) {
                    findNamedViews(namedViews, childAt);
                }
            }
        }
    }

    private final void retainMatchingViews(ArrayMap<String, View> arrayMap, final Collection<String> collection) {
        Set<Map.Entry<String, View>> setEntrySet = arrayMap.entrySet();
        setEntrySet.getClass();
        CollectionsKt__MutableCollectionsKt.retainAll(setEntrySet, new Function1<Map.Entry<String, View>, Boolean>() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.retainMatchingViews.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(Map.Entry<String, View> entry) {
                entry.getClass();
                return Boolean.valueOf(CollectionsKt.contains(collection, ViewCompat.getTransitionName(entry.getValue())));
            }
        });
    }

    private final void startAnimations(List<AnimationInfo> animationInfos, List<SpecialEffectsController.Operation> awaitingContainerChanges, boolean startedAnyTransition, Map<SpecialEffectsController.Operation, Boolean> startedTransitions) {
        Context context = getContainer().getContext();
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        boolean z9 = false;
        for (final AnimationInfo animationInfo : animationInfos) {
            if (animationInfo.isVisibilityUnchanged()) {
                animationInfo.completeSpecialEffect();
            } else {
                context.getClass();
                FragmentAnim.AnimationOrAnimator animation = animationInfo.getAnimation(context);
                if (animation == null) {
                    animationInfo.completeSpecialEffect();
                } else {
                    final Animator animator = animation.animator;
                    if (animator == null) {
                        arrayList.add(animationInfo);
                    } else {
                        final SpecialEffectsController.Operation operation = animationInfo.getOperation();
                        Fragment fragment = operation.getFragment();
                        if (Intrinsics.areEqual(startedTransitions.get(operation), Boolean.TRUE)) {
                            if (FragmentManager.isLoggingEnabled(2)) {
                                Log.v(FragmentManager.TAG, "Ignoring Animator set on " + fragment + " as this Fragment was involved in a Transition.");
                            }
                            animationInfo.completeSpecialEffect();
                        } else {
                            final boolean z10 = operation.getFinalState() == SpecialEffectsController.Operation.State.GONE;
                            if (z10) {
                                awaitingContainerChanges.remove(operation);
                            }
                            final View view = fragment.mView;
                            getContainer().startViewTransition(view);
                            animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.startAnimations.1
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator anim) {
                                    anim.getClass();
                                    DefaultSpecialEffectsController.this.getContainer().endViewTransition(view);
                                    if (z10) {
                                        SpecialEffectsController.Operation.State finalState = operation.getFinalState();
                                        View view2 = view;
                                        view2.getClass();
                                        finalState.applyState(view2);
                                    }
                                    animationInfo.completeSpecialEffect();
                                    if (FragmentManager.isLoggingEnabled(2)) {
                                        Log.v(FragmentManager.TAG, "Animator from operation " + operation + " has ended.");
                                    }
                                }
                            });
                            animator.setTarget(view);
                            animator.start();
                            if (FragmentManager.isLoggingEnabled(2)) {
                                Log.v(FragmentManager.TAG, "Animator from operation " + operation + " has started.");
                            }
                            animationInfo.getSignal().setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: androidx.fragment.app.a
                                @Override // androidx.core.os.CancellationSignal.OnCancelListener
                                public final void onCancel() {
                                    DefaultSpecialEffectsController.startAnimations$lambda$3(animator, operation);
                                }
                            });
                            z9 = true;
                        }
                    }
                }
            }
        }
        int size = arrayList.size();
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            final AnimationInfo animationInfo2 = (AnimationInfo) obj;
            final SpecialEffectsController.Operation operation2 = animationInfo2.getOperation();
            Fragment fragment2 = operation2.getFragment();
            if (startedAnyTransition) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(FragmentManager.TAG, "Ignoring Animation set on " + fragment2 + " as Animations cannot run alongside Transitions.");
                }
                animationInfo2.completeSpecialEffect();
            } else if (z9) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(FragmentManager.TAG, "Ignoring Animation set on " + fragment2 + " as Animations cannot run alongside Animators.");
                }
                animationInfo2.completeSpecialEffect();
            } else {
                final View view2 = fragment2.mView;
                context.getClass();
                FragmentAnim.AnimationOrAnimator animation2 = animationInfo2.getAnimation(context);
                if (animation2 == null) {
                    C1929i.m3030l("Required value was null.");
                    return;
                }
                Animation animation3 = animation2.animation;
                if (animation3 == null) {
                    C1929i.m3030l("Required value was null.");
                    return;
                }
                if (operation2.getFinalState() != SpecialEffectsController.Operation.State.REMOVED) {
                    view2.startAnimation(animation3);
                    animationInfo2.completeSpecialEffect();
                } else {
                    getContainer().startViewTransition(view2);
                    FragmentAnim.EndViewTransitionAnimation endViewTransitionAnimation = new FragmentAnim.EndViewTransitionAnimation(animation3, getContainer(), view2);
                    endViewTransitionAnimation.setAnimationListener(new AnimationAnimationListenerC04993(operation2, this, view2, animationInfo2));
                    view2.startAnimation(endViewTransitionAnimation);
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(FragmentManager.TAG, "Animation from operation " + operation2 + " has started.");
                    }
                }
                animationInfo2.getSignal().setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: androidx.fragment.app.b
                    @Override // androidx.core.os.CancellationSignal.OnCancelListener
                    public final void onCancel() {
                        DefaultSpecialEffectsController.startAnimations$lambda$4(view2, this, animationInfo2, operation2);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startAnimations$lambda$3(Animator animator, SpecialEffectsController.Operation operation) {
        operation.getClass();
        animator.end();
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "Animator from operation " + operation + " has been canceled.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startAnimations$lambda$4(View view, DefaultSpecialEffectsController defaultSpecialEffectsController, AnimationInfo animationInfo, SpecialEffectsController.Operation operation) {
        defaultSpecialEffectsController.getClass();
        animationInfo.getClass();
        operation.getClass();
        view.clearAnimation();
        defaultSpecialEffectsController.getContainer().endViewTransition(view);
        animationInfo.completeSpecialEffect();
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "Animation from operation " + operation + " has been cancelled.");
        }
    }

    private final Map<SpecialEffectsController.Operation, Boolean> startTransitions(List<TransitionInfo> transitionInfos, List<SpecialEffectsController.Operation> awaitingContainerChanges, final boolean isPop, SpecialEffectsController.Operation firstOut, final SpecialEffectsController.Operation lastIn) {
        String str;
        Object obj;
        String str2;
        Object obj2;
        Object obj3;
        String str3;
        View view;
        Iterator<TransitionInfo> it;
        Object obj4;
        SpecialEffectsController.Operation operation;
        ArrayMap arrayMap;
        LinkedHashMap linkedHashMap;
        View view2;
        int i10;
        View view3;
        Rect rect;
        View view4;
        int i11;
        this = this;
        final SpecialEffectsController.Operation operation2 = firstOut;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        ArrayList arrayList = new ArrayList();
        for (Object obj5 : transitionInfos) {
            if (!((TransitionInfo) obj5).isVisibilityUnchanged()) {
                arrayList.add(obj5);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i12 = 0;
        while (i12 < size) {
            Object obj6 = arrayList.get(i12);
            i12++;
            if (((TransitionInfo) obj6).getHandlingImpl() != null) {
                arrayList2.add(obj6);
            }
        }
        int size2 = arrayList2.size();
        FragmentTransitionImpl fragmentTransitionImpl = null;
        int i13 = 0;
        while (i13 < size2) {
            Object obj7 = arrayList2.get(i13);
            i13++;
            TransitionInfo transitionInfo = (TransitionInfo) obj7;
            FragmentTransitionImpl handlingImpl = transitionInfo.getHandlingImpl();
            if (fragmentTransitionImpl != null && handlingImpl != fragmentTransitionImpl) {
                StringBuilder sb = new StringBuilder("Mixing framework transitions and AndroidX transitions is not allowed. Fragment ");
                sb.append(transitionInfo.getOperation().getFragment());
                Object transition = transitionInfo.getTransition();
                sb.append(" returned Transition ");
                sb.append(transition);
                sb.append(" which uses a different Transition type than other Fragments.");
                throw new IllegalArgumentException(sb.toString().toString());
            }
            fragmentTransitionImpl = handlingImpl;
        }
        if (fragmentTransitionImpl == null) {
            for (TransitionInfo transitionInfo2 : transitionInfos) {
                linkedHashMap2.put(transitionInfo2.getOperation(), Boolean.FALSE);
                transitionInfo2.completeSpecialEffect();
            }
            return linkedHashMap2;
        }
        View view5 = new View(this.getContainer().getContext());
        Rect rect2 = new Rect();
        ArrayList<View> arrayList3 = new ArrayList<>();
        ArrayList<View> arrayList4 = new ArrayList<>();
        ArrayMap arrayMap2 = new ArrayMap();
        Iterator<TransitionInfo> it2 = transitionInfos.iterator();
        Object obj8 = null;
        View view6 = null;
        boolean z9 = false;
        while (true) {
            boolean zHasNext = it2.hasNext();
            str = FragmentManager.TAG;
            obj = obj8;
            if (!zHasNext) {
                break;
            }
            TransitionInfo next = it2.next();
            if (!next.hasSharedElementTransition() || operation2 == null || lastIn == null) {
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
                ArrayList<String> sharedElementSourceNames2 = operation2.getFragment().getSharedElementSourceNames();
                sharedElementSourceNames2.getClass();
                View view7 = view6;
                ArrayList<String> sharedElementTargetNames = operation2.getFragment().getSharedElementTargetNames();
                sharedElementTargetNames.getClass();
                LinkedHashMap linkedHashMap3 = linkedHashMap2;
                int size3 = sharedElementTargetNames.size();
                View view8 = view5;
                Rect rect3 = rect2;
                int i14 = 0;
                while (i14 < size3) {
                    int i15 = size3;
                    int iIndexOf = sharedElementSourceNames.indexOf(sharedElementTargetNames.get(i14));
                    if (iIndexOf != -1) {
                        sharedElementSourceNames.set(iIndexOf, sharedElementSourceNames2.get(i14));
                    }
                    i14++;
                    size3 = i15;
                }
                ArrayList<String> sharedElementTargetNames2 = lastIn.getFragment().getSharedElementTargetNames();
                sharedElementTargetNames2.getClass();
                Pair pairM3166to = !isPop ? TuplesKt.m3166to(operation2.getFragment().getExitTransitionCallback(), lastIn.getFragment().getEnterTransitionCallback()) : TuplesKt.m3166to(operation2.getFragment().getEnterTransitionCallback(), lastIn.getFragment().getExitTransitionCallback());
                SharedElementCallback sharedElementCallback = (SharedElementCallback) pairM3166to.component1();
                SharedElementCallback sharedElementCallback2 = (SharedElementCallback) pairM3166to.component2();
                int i16 = 0;
                for (int size4 = sharedElementSourceNames.size(); i16 < size4; size4 = size4) {
                    arrayMap2.put(sharedElementSourceNames.get(i16), sharedElementTargetNames2.get(i16));
                    i16++;
                }
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(FragmentManager.TAG, ">>> entering view names <<<");
                    int i17 = 0;
                    for (int size5 = sharedElementTargetNames2.size(); i17 < size5; size5 = size5) {
                        String str4 = sharedElementTargetNames2.get(i17);
                        Log.v(FragmentManager.TAG, "Name: " + str4);
                        i17++;
                    }
                    Log.v(FragmentManager.TAG, ">>> exiting view names <<<");
                    int i18 = 0;
                    for (int size6 = sharedElementSourceNames.size(); i18 < size6; size6 = size6) {
                        String str5 = sharedElementSourceNames.get(i18);
                        Log.v(FragmentManager.TAG, "Name: " + str5);
                        i18++;
                    }
                }
                ArrayMap<String, View> arrayMap3 = new ArrayMap<>();
                View view9 = operation2.getFragment().mView;
                view9.getClass();
                this.findNamedViews(arrayMap3, view9);
                arrayMap3.retainAll(sharedElementSourceNames);
                if (sharedElementCallback != null) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(FragmentManager.TAG, "Executing exit callback for operation " + operation2);
                    }
                    sharedElementCallback.onMapSharedElements(sharedElementSourceNames, arrayMap3);
                    int size7 = sharedElementSourceNames.size() - 1;
                    if (size7 >= 0) {
                        while (true) {
                            int i19 = size7 - 1;
                            String str6 = sharedElementSourceNames.get(size7);
                            View view10 = arrayMap3.get(str6);
                            if (view10 == null) {
                                arrayMap2.remove(str6);
                                i11 = i19;
                            } else {
                                i11 = i19;
                                if (!Intrinsics.areEqual(str6, ViewCompat.getTransitionName(view10))) {
                                    arrayMap2.put(ViewCompat.getTransitionName(view10), (String) arrayMap2.remove(str6));
                                }
                            }
                            if (i11 < 0) {
                                break;
                            }
                            size7 = i11;
                        }
                    }
                } else {
                    arrayMap2.retainAll(arrayMap3.keySet());
                }
                final ArrayMap<String, View> arrayMap4 = new ArrayMap<>();
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
                            int i20 = size8 - 1;
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
                            if (i20 < 0) {
                                break;
                            }
                            size8 = i20;
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
                    FragmentTransition.callSharedElementStartEnd(lastIn.getFragment(), operation2.getFragment(), isPop, arrayMap3, true);
                    OneShotPreDrawListener.add(this.getContainer(), new Runnable() { // from class: androidx.fragment.app.c
                        @Override // java.lang.Runnable
                        public final void run() {
                            DefaultSpecialEffectsController.startTransitions$lambda$9(lastIn, operation2, isPop, arrayMap4);
                        }
                    });
                    arrayList3.addAll(arrayMap3.values());
                    if (sharedElementSourceNames.isEmpty()) {
                        i10 = 0;
                        view3 = view7;
                    } else {
                        i10 = 0;
                        view3 = arrayMap3.get(sharedElementSourceNames.get(0));
                        fragmentTransitionImpl.setEpicenter(objWrapTransitionInSet, view3);
                    }
                    ArrayList<View> arrayList5 = arrayList4;
                    arrayList5.addAll(arrayMap4.values());
                    if (sharedElementTargetNames2.isEmpty() || (view4 = arrayMap4.get(sharedElementTargetNames2.get(i10))) == null) {
                        rect = rect3;
                    } else {
                        rect = rect3;
                        OneShotPreDrawListener.add(this.getContainer(), new RunnableC0562d(fragmentTransitionImpl, view4, rect, 2));
                        z9 = true;
                    }
                    view2 = view8;
                    fragmentTransitionImpl.setSharedElementTargets(objWrapTransitionInSet, view2, arrayList3);
                    Rect rect4 = rect;
                    arrayMap = arrayMap2;
                    fragmentTransitionImpl.scheduleRemoveTargets(objWrapTransitionInSet, null, null, null, null, objWrapTransitionInSet, arrayList5);
                    Boolean bool = Boolean.TRUE;
                    linkedHashMap = linkedHashMap3;
                    linkedHashMap.put(operation2, bool);
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
        boolean z10 = true;
        LinkedHashMap linkedHashMap4 = linkedHashMap2;
        View view14 = view5;
        Rect rect5 = rect2;
        ArrayList arrayList8 = new ArrayList();
        Iterator<TransitionInfo> it3 = transitionInfos.iterator();
        Object objMergeTransitionsTogether = null;
        Object objMergeTransitionsTogether2 = null;
        while (it3.hasNext()) {
            TransitionInfo next2 = it3.next();
            if (next2.isVisibilityUnchanged()) {
                linkedHashMap4.put(next2.getOperation(), Boolean.FALSE);
                next2.completeSpecialEffect();
            } else {
                Object objCloneTransition = fragmentTransitionImpl.cloneTransition(next2.getTransition());
                SpecialEffectsController.Operation operation3 = next2.getOperation();
                boolean z11 = (obj == null || !(operation3 == operation2 || operation3 == lastIn)) ? false : z10;
                if (objCloneTransition != null) {
                    Object obj9 = objMergeTransitionsTogether2;
                    ArrayList<View> arrayList9 = new ArrayList<>();
                    View view15 = operation3.getFragment().mView;
                    view15.getClass();
                    this.captureTransitioningViews(arrayList9, view15);
                    if (z11) {
                        if (operation3 == operation2) {
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
                        operation = operation3;
                        view = view13;
                        z10 = true;
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
                        z10 = true;
                        fragmentTransitionImpl.scheduleRemoveTargets(obj2, obj2, arrayList9, null, null, null, null);
                        if (operation3.getFinalState() == SpecialEffectsController.Operation.State.GONE) {
                            operation = operation3;
                            awaitingContainerChanges.remove(operation);
                            ArrayList<View> arrayList10 = new ArrayList<>(arrayList9);
                            arrayList10.remove(operation.getFragment().mView);
                            fragmentTransitionImpl.scheduleHideFragmentView(obj2, operation.getFragment().mView, arrayList10);
                            OneShotPreDrawListener.add(getContainer(), new RunnableC0014g(2, arrayList9));
                        } else {
                            operation = operation3;
                        }
                    }
                    if (operation.getFinalState() == SpecialEffectsController.Operation.State.VISIBLE) {
                        arrayList8.addAll(arrayList9);
                        if (z9) {
                            fragmentTransitionImpl.setEpicenter(obj2, rect5);
                        }
                    } else {
                        fragmentTransitionImpl.setEpicenter(obj2, view);
                    }
                    linkedHashMap4.put(operation, Boolean.TRUE);
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
                } else if (!z11) {
                    linkedHashMap4.put(operation3, Boolean.FALSE);
                    next2.completeSpecialEffect();
                }
            }
        }
        String str8 = str;
        ArrayList<View> arrayList11 = arrayList6;
        LinkedHashMap linkedHashMap5 = linkedHashMap4;
        boolean z12 = z10;
        Object obj11 = obj;
        Object objMergeTransitionsInSequence = fragmentTransitionImpl.mergeTransitionsInSequence(objMergeTransitionsTogether, objMergeTransitionsTogether2, obj11);
        if (objMergeTransitionsInSequence == null) {
            return linkedHashMap5;
        }
        ArrayList arrayList12 = new ArrayList();
        for (Object obj12 : transitionInfos) {
            if (!((TransitionInfo) obj12).isVisibilityUnchanged()) {
                arrayList12.add(obj12);
            }
        }
        int size9 = arrayList12.size();
        int i21 = 0;
        while (i21 < size9) {
            Object obj13 = arrayList12.get(i21);
            i21++;
            TransitionInfo transitionInfo3 = (TransitionInfo) obj13;
            Object transition2 = transitionInfo3.getTransition();
            SpecialEffectsController.Operation operation4 = transitionInfo3.getOperation();
            boolean z13 = (obj11 == null || !(operation4 == operation2 || operation4 == lastIn)) ? false : z12;
            if (transition2 == null && !z13) {
                str2 = str8;
            } else if (ViewCompat.isLaidOut(getContainer())) {
                str2 = str8;
                fragmentTransitionImpl.setListenerForTransitionEnd(transitionInfo3.getOperation().getFragment(), objMergeTransitionsInSequence, transitionInfo3.getSignal(), new RunnableC0568j(transitionInfo3, operation4, 2));
            } else {
                if (FragmentManager.isLoggingEnabled(2)) {
                    str2 = str8;
                    Log.v(str2, "SpecialEffectsController: Container " + getContainer() + " has not been laid out. Completing operation " + operation4);
                } else {
                    str2 = str8;
                }
                transitionInfo3.completeSpecialEffect();
            }
            operation2 = firstOut;
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
            int i22 = 0;
            while (i22 < size10) {
                View view16 = arrayList11.get(i22);
                i22++;
                view16.getClass();
                View view17 = view16;
                Log.v(str9, "View: " + view17 + " Name: " + ViewCompat.getTransitionName(view17));
            }
            Log.v(str9, ">>>>> SharedElementLastInViews <<<<<");
            int size11 = arrayList7.size();
            int i23 = 0;
            while (i23 < size11) {
                View view18 = arrayList7.get(i23);
                i23++;
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startTransitions$lambda$10(FragmentTransitionImpl fragmentTransitionImpl, View view, Rect rect) {
        fragmentTransitionImpl.getClass();
        rect.getClass();
        fragmentTransitionImpl.getBoundsOnScreen(view, rect);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startTransitions$lambda$11(ArrayList arrayList) {
        arrayList.getClass();
        FragmentTransition.setViewVisibility(arrayList, 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startTransitions$lambda$14$lambda$13(TransitionInfo transitionInfo, SpecialEffectsController.Operation operation) {
        transitionInfo.getClass();
        operation.getClass();
        transitionInfo.completeSpecialEffect();
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "Transition for operation " + operation + " has completed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startTransitions$lambda$9(SpecialEffectsController.Operation operation, SpecialEffectsController.Operation operation2, boolean z9, ArrayMap arrayMap) {
        arrayMap.getClass();
        FragmentTransition.callSharedElementStartEnd(operation.getFragment(), operation2.getFragment(), z9, arrayMap, false);
    }

    private final void syncAnimations(List<? extends SpecialEffectsController.Operation> operations) {
        Fragment fragment = ((SpecialEffectsController.Operation) CollectionsKt.last((List) operations)).getFragment();
        for (SpecialEffectsController.Operation operation : operations) {
            operation.getFragment().mAnimationInfo.mEnterAnim = fragment.mAnimationInfo.mEnterAnim;
            operation.getFragment().mAnimationInfo.mExitAnim = fragment.mAnimationInfo.mExitAnim;
            operation.getFragment().mAnimationInfo.mPopEnterAnim = fragment.mAnimationInfo.mPopEnterAnim;
            operation.getFragment().mAnimationInfo.mPopExitAnim = fragment.mAnimationInfo.mPopExitAnim;
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00c8  */
    @Override // androidx.fragment.app.SpecialEffectsController
    public void executeOperations(List<? extends SpecialEffectsController.Operation> operations, boolean isPop) {
        SpecialEffectsController.Operation operation;
        Object next;
        operations.getClass();
        Iterator<T> it = operations.iterator();
        while (true) {
            operation = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            SpecialEffectsController.Operation operation2 = (SpecialEffectsController.Operation) next;
            SpecialEffectsController.Operation.State.Companion companion = SpecialEffectsController.Operation.State.INSTANCE;
            View view = operation2.getFragment().mView;
            view.getClass();
            SpecialEffectsController.Operation.State stateAsOperationState = companion.asOperationState(view);
            SpecialEffectsController.Operation.State state = SpecialEffectsController.Operation.State.VISIBLE;
            if (stateAsOperationState == state && operation2.getFinalState() != state) {
                break;
            }
        }
        SpecialEffectsController.Operation operation3 = (SpecialEffectsController.Operation) next;
        ListIterator<? extends SpecialEffectsController.Operation> listIterator = operations.listIterator(operations.size());
        while (listIterator.hasPrevious()) {
            SpecialEffectsController.Operation operationPrevious = listIterator.previous();
            SpecialEffectsController.Operation operation4 = operationPrevious;
            SpecialEffectsController.Operation.State.Companion companion2 = SpecialEffectsController.Operation.State.INSTANCE;
            View view2 = operation4.getFragment().mView;
            view2.getClass();
            SpecialEffectsController.Operation.State stateAsOperationState2 = companion2.asOperationState(view2);
            SpecialEffectsController.Operation.State state2 = SpecialEffectsController.Operation.State.VISIBLE;
            if (stateAsOperationState2 != state2 && operation4.getFinalState() == state2) {
                operation = operationPrevious;
                break;
            }
        }
        SpecialEffectsController.Operation operation5 = operation;
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "Executing operations from " + operation3 + " to " + operation5);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        List<SpecialEffectsController.Operation> mutableList = CollectionsKt.toMutableList((Collection) operations);
        syncAnimations(operations);
        for (SpecialEffectsController.Operation operation6 : operations) {
            CancellationSignal cancellationSignal = new CancellationSignal();
            operation6.markStartedSpecialEffect(cancellationSignal);
            arrayList.add(new AnimationInfo(operation6, cancellationSignal, isPop));
            CancellationSignal cancellationSignal2 = new CancellationSignal();
            operation6.markStartedSpecialEffect(cancellationSignal2);
            boolean z9 = false;
            if (isPop) {
                if (operation6 == operation3) {
                    z9 = true;
                }
            } else if (operation6 == operation5) {
                z9 = true;
            }
            arrayList2.add(new TransitionInfo(operation6, cancellationSignal2, isPop, z9));
            operation6.addCompletionListener(new RunnableC0562d(mutableList, operation6, this));
        }
        Map<SpecialEffectsController.Operation, Boolean> mapStartTransitions = startTransitions(arrayList2, mutableList, isPop, operation3, operation5);
        startAnimations(arrayList, mutableList, mapStartTransitions.containsValue(Boolean.TRUE), mapStartTransitions);
        Iterator<SpecialEffectsController.Operation> it2 = mutableList.iterator();
        while (it2.hasNext()) {
            applyContainerChanges(it2.next());
        }
        mutableList.clear();
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "Completed executing operations from " + operation3 + " to " + operation5);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0002\u0010\tJ\u0014\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0011H\u0002J\u0006\u0010\u0016\u001a\u00020\u0007R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013¨\u0006\u0017"}, m3159d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;", "Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;", "operation", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "signal", "Landroidx/core/os/CancellationSignal;", "isPop", "", "providesSharedElementTransition", "(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;ZZ)V", "handlingImpl", "Landroidx/fragment/app/FragmentTransitionImpl;", "getHandlingImpl", "()Landroidx/fragment/app/FragmentTransitionImpl;", "isOverlapAllowed", "()Z", "sharedElementTransition", "", "getSharedElementTransition", "()Ljava/lang/Object;", "transition", "getTransition", "hasSharedElementTransition", "fragment_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class TransitionInfo extends SpecialEffectsInfo {
        private final boolean isOverlapAllowed;
        private final Object sharedElementTransition;
        private final Object transition;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TransitionInfo(SpecialEffectsController.Operation operation, CancellationSignal cancellationSignal, boolean z9, boolean z10) {
            Object returnTransition;
            super(operation, cancellationSignal);
            operation.getClass();
            cancellationSignal.getClass();
            SpecialEffectsController.Operation.State finalState = operation.getFinalState();
            SpecialEffectsController.Operation.State state = SpecialEffectsController.Operation.State.VISIBLE;
            if (finalState == state) {
                Fragment fragment = operation.getFragment();
                returnTransition = z9 ? fragment.getReenterTransition() : fragment.getEnterTransition();
            } else {
                Fragment fragment2 = operation.getFragment();
                returnTransition = z9 ? fragment2.getReturnTransition() : fragment2.getExitTransition();
            }
            this.transition = returnTransition;
            this.isOverlapAllowed = operation.getFinalState() == state ? z9 ? operation.getFragment().getAllowReturnTransitionOverlap() : operation.getFragment().getAllowEnterTransitionOverlap() : true;
            this.sharedElementTransition = z10 ? z9 ? operation.getFragment().getSharedElementReturnTransition() : operation.getFragment().getSharedElementEnterTransition() : null;
        }

        private final FragmentTransitionImpl getHandlingImpl(Object transition) {
            if (transition == null) {
                return null;
            }
            FragmentTransitionImpl fragmentTransitionImpl = FragmentTransition.PLATFORM_IMPL;
            if (fragmentTransitionImpl != null && fragmentTransitionImpl.canHandle(transition)) {
                return fragmentTransitionImpl;
            }
            FragmentTransitionImpl fragmentTransitionImpl2 = FragmentTransition.SUPPORT_IMPL;
            if (fragmentTransitionImpl2 != null && fragmentTransitionImpl2.canHandle(transition)) {
                return fragmentTransitionImpl2;
            }
            StringBuilder sb = new StringBuilder("Transition ");
            sb.append(transition);
            Fragment fragment = getOperation().getFragment();
            sb.append(" for fragment ");
            sb.append(fragment);
            sb.append(" is not a valid framework Transition or AndroidX Transition");
            throw new IllegalArgumentException(sb.toString());
        }

        public final Object getSharedElementTransition() {
            return this.sharedElementTransition;
        }

        public final Object getTransition() {
            return this.transition;
        }

        public final boolean hasSharedElementTransition() {
            return this.sharedElementTransition != null;
        }

        /* JADX INFO: renamed from: isOverlapAllowed, reason: from getter */
        public final boolean getIsOverlapAllowed() {
            return this.isOverlapAllowed;
        }

        public final FragmentTransitionImpl getHandlingImpl() {
            FragmentTransitionImpl handlingImpl = getHandlingImpl(this.transition);
            FragmentTransitionImpl handlingImpl2 = getHandlingImpl(this.sharedElementTransition);
            if (handlingImpl == null || handlingImpl2 == null || handlingImpl == handlingImpl2) {
                return handlingImpl == null ? handlingImpl2 : handlingImpl;
            }
            StringBuilder sb = new StringBuilder("Mixing framework transitions and AndroidX transitions is not allowed. Fragment ");
            sb.append(getOperation().getFragment());
            sb.append(" returned Transition ");
            sb.append(this.transition);
            C0674b.m845l(sb, " which uses a different Transition  type than its shared element transition ", this.sharedElementTransition);
            return null;
        }
    }
}

package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Rect;
import android.os.Build$VERSION;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.InflateException;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowId;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.collection.ArrayMap;
import androidx.collection.LongSparseArray;
import androidx.constraintlayout.core.motion.utils.TypedValues$TransitionType;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
import j1.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class Transition implements Cloneable {
    static final boolean DBG = false;
    private static final String LOG_TAG = "Transition";
    private static final int MATCH_FIRST = 1;
    public static final int MATCH_ID = 3;
    private static final String MATCH_ID_STR = "id";
    public static final int MATCH_INSTANCE = 1;
    private static final String MATCH_INSTANCE_STR = "instance";
    public static final int MATCH_ITEM_ID = 4;
    private static final String MATCH_ITEM_ID_STR = "itemId";
    private static final int MATCH_LAST = 4;
    public static final int MATCH_NAME = 2;
    private static final String MATCH_NAME_STR = "name";
    private ArrayList<TransitionValues> mEndValuesList;
    private Transition$EpicenterCallback mEpicenterCallback;
    private Transition$TransitionListener[] mListenersCache;
    private ArrayMap<String, String> mNameOverrides;
    TransitionPropagation mPropagation;
    Transition$SeekController mSeekController;
    long mSeekOffsetInParent;
    private ArrayList<TransitionValues> mStartValuesList;
    long mTotalDuration;
    private static final Animator[] EMPTY_ANIMATOR_ARRAY = new Animator[0];
    private static final int[] DEFAULT_MATCH_ORDER = {2, 1, 3, 4};
    private static final PathMotion STRAIGHT_PATH_MOTION = new Transition$1();
    private static ThreadLocal<ArrayMap<Animator, Transition$AnimationInfo>> sRunningAnimators = new ThreadLocal<>();
    private String mName = getClass().getName();
    private long mStartDelay = -1;
    long mDuration = -1;
    private TimeInterpolator mInterpolator = null;
    ArrayList<Integer> mTargetIds = new ArrayList<>();
    ArrayList<View> mTargets = new ArrayList<>();
    private ArrayList<String> mTargetNames = null;
    private ArrayList<Class<?>> mTargetTypes = null;
    private ArrayList<Integer> mTargetIdExcludes = null;
    private ArrayList<View> mTargetExcludes = null;
    private ArrayList<Class<?>> mTargetTypeExcludes = null;
    private ArrayList<String> mTargetNameExcludes = null;
    private ArrayList<Integer> mTargetIdChildExcludes = null;
    private ArrayList<View> mTargetChildExcludes = null;
    private ArrayList<Class<?>> mTargetTypeChildExcludes = null;
    private TransitionValuesMaps mStartValues = new TransitionValuesMaps();
    private TransitionValuesMaps mEndValues = new TransitionValuesMaps();
    TransitionSet mParent = null;
    private int[] mMatchOrder = DEFAULT_MATCH_ORDER;
    boolean mCanRemoveViews = false;
    ArrayList<Animator> mCurrentAnimators = new ArrayList<>();
    private Animator[] mAnimatorCache = EMPTY_ANIMATOR_ARRAY;
    int mNumInstances = 0;
    private boolean mPaused = false;
    boolean mEnded = false;
    private Transition mCloneParent = null;
    private ArrayList<Transition$TransitionListener> mListeners = null;
    ArrayList<Animator> mAnimators = new ArrayList<>();
    private PathMotion mPathMotion = STRAIGHT_PATH_MOTION;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Transition(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.TRANSITION);
        XmlResourceParser xmlResourceParser = (XmlResourceParser) attributeSet;
        long namedInt = TypedArrayUtils.getNamedInt(typedArrayObtainStyledAttributes, xmlResourceParser, TypedValues$TransitionType.S_DURATION, 1, -1);
        if (namedInt >= 0) {
            setDuration(namedInt);
        }
        long namedInt2 = TypedArrayUtils.getNamedInt(typedArrayObtainStyledAttributes, xmlResourceParser, "startDelay", 2, -1);
        if (namedInt2 > 0) {
            setStartDelay(namedInt2);
        }
        int namedResourceId = TypedArrayUtils.getNamedResourceId(typedArrayObtainStyledAttributes, xmlResourceParser, "interpolator", 0, 0);
        if (namedResourceId > 0) {
            setInterpolator(AnimationUtils.loadInterpolator(context, namedResourceId));
        }
        String namedString = TypedArrayUtils.getNamedString(typedArrayObtainStyledAttributes, xmlResourceParser, "matchOrder", 3);
        if (namedString != null) {
            setMatchOrder(parseMatchOrder(namedString));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Transition access$000(Transition transition) {
        return transition.mCloneParent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Transition access$002(Transition transition, Transition transition2) {
        transition.mCloneParent = transition2;
        return transition2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void addUnmatched(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2) {
        for (int i9 = 0; i9 < arrayMap.getSize(); i9++) {
            TransitionValues transitionValuesValueAt = arrayMap.valueAt(i9);
            if (isValidTarget(transitionValuesValueAt.view)) {
                this.mStartValuesList.add(transitionValuesValueAt);
                this.mEndValuesList.add(null);
            }
        }
        for (int i10 = 0; i10 < arrayMap2.getSize(); i10++) {
            TransitionValues transitionValuesValueAt2 = arrayMap2.valueAt(i10);
            if (isValidTarget(transitionValuesValueAt2.view)) {
                this.mEndValuesList.add(transitionValuesValueAt2);
                this.mStartValuesList.add(null);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void addViewValues(TransitionValuesMaps transitionValuesMaps, View view, TransitionValues transitionValues) {
        transitionValuesMaps.mViewValues.put(view, transitionValues);
        int id = view.getId();
        if (id >= 0) {
            int iIndexOfKey = transitionValuesMaps.mIdValues.indexOfKey(id);
            SparseArray<View> sparseArray = transitionValuesMaps.mIdValues;
            if (iIndexOfKey >= 0) {
                sparseArray.put(id, null);
            } else {
                sparseArray.put(id, view);
            }
        }
        String transitionName = ViewCompat.getTransitionName(view);
        if (transitionName != null) {
            boolean zContainsKey = transitionValuesMaps.mNameValues.containsKey(transitionName);
            ArrayMap<String, View> arrayMap = transitionValuesMaps.mNameValues;
            if (zContainsKey) {
                arrayMap.put(transitionName, null);
            } else {
                arrayMap.put(transitionName, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (transitionValuesMaps.mItemIdValues.indexOfKey(itemIdAtPosition) < 0) {
                    view.setHasTransientState(true);
                    transitionValuesMaps.mItemIdValues.put(itemIdAtPosition, view);
                    return;
                }
                View view2 = transitionValuesMaps.mItemIdValues.get(itemIdAtPosition);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                    transitionValuesMaps.mItemIdValues.put(itemIdAtPosition, null);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean alreadyContains(int[] iArr, int i9) {
        int i10 = iArr[i9];
        for (int i11 = 0; i11 < i9; i11++) {
            if (iArr[i11] == i10) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void captureHierarchy(View view, boolean z8) {
        if (view == null) {
            return;
        }
        int id = view.getId();
        ArrayList<Integer> arrayList = this.mTargetIdExcludes;
        if (arrayList == null || !arrayList.contains(Integer.valueOf(id))) {
            ArrayList<View> arrayList2 = this.mTargetExcludes;
            if (arrayList2 == null || !arrayList2.contains(view)) {
                ArrayList<Class<?>> arrayList3 = this.mTargetTypeExcludes;
                if (arrayList3 != null) {
                    int size = arrayList3.size();
                    for (int i9 = 0; i9 < size; i9++) {
                        if (this.mTargetTypeExcludes.get(i9).isInstance(view)) {
                            return;
                        }
                    }
                }
                if (view.getParent() instanceof ViewGroup) {
                    TransitionValues transitionValues = new TransitionValues(view);
                    if (z8) {
                        captureStartValues(transitionValues);
                    } else {
                        captureEndValues(transitionValues);
                    }
                    transitionValues.mTargetedTransitions.add(this);
                    capturePropagationValues(transitionValues);
                    if (z8) {
                        addViewValues(this.mStartValues, view, transitionValues);
                    } else {
                        addViewValues(this.mEndValues, view, transitionValues);
                    }
                }
                if (view instanceof ViewGroup) {
                    ArrayList<Integer> arrayList4 = this.mTargetIdChildExcludes;
                    if (arrayList4 == null || !arrayList4.contains(Integer.valueOf(id))) {
                        ArrayList<View> arrayList5 = this.mTargetChildExcludes;
                        if (arrayList5 == null || !arrayList5.contains(view)) {
                            ArrayList<Class<?>> arrayList6 = this.mTargetTypeChildExcludes;
                            if (arrayList6 != null) {
                                int size2 = arrayList6.size();
                                for (int i10 = 0; i10 < size2; i10++) {
                                    if (this.mTargetTypeChildExcludes.get(i10).isInstance(view)) {
                                        return;
                                    }
                                }
                            }
                            ViewGroup viewGroup = (ViewGroup) view;
                            for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
                                captureHierarchy(viewGroup.getChildAt(i11), z8);
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ArrayList<Integer> excludeId(ArrayList<Integer> arrayList, int i9, boolean z8) {
        if (i9 > 0) {
            return z8 ? Transition$ArrayListManager.add(arrayList, Integer.valueOf(i9)) : Transition$ArrayListManager.remove(arrayList, Integer.valueOf(i9));
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static <T> ArrayList<T> excludeObject(ArrayList<T> arrayList, T t, boolean z8) {
        if (t != null) {
            return z8 ? Transition$ArrayListManager.add(arrayList, t) : Transition$ArrayListManager.remove(arrayList, t);
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ArrayList<Class<?>> excludeType(ArrayList<Class<?>> arrayList, Class<?> cls, boolean z8) {
        if (cls != null) {
            return z8 ? Transition$ArrayListManager.add(arrayList, cls) : Transition$ArrayListManager.remove(arrayList, cls);
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ArrayList<View> excludeView(ArrayList<View> arrayList, View view, boolean z8) {
        if (view != null) {
            return z8 ? Transition$ArrayListManager.add(arrayList, view) : Transition$ArrayListManager.remove(arrayList, view);
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static ArrayMap<Animator, Transition$AnimationInfo> getRunningAnimators() {
        ArrayMap<Animator, Transition$AnimationInfo> arrayMap = sRunningAnimators.get();
        if (arrayMap != null) {
            return arrayMap;
        }
        ArrayMap<Animator, Transition$AnimationInfo> arrayMap2 = new ArrayMap<>();
        sRunningAnimators.set(arrayMap2);
        return arrayMap2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean isValidMatch(int i9) {
        return i9 >= 1 && i9 <= 4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean isValueChanged(TransitionValues transitionValues, TransitionValues transitionValues2, String str) {
        Object obj = transitionValues.values.get(str);
        Object obj2 = transitionValues2.values.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return !obj.equals(obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void matchIds(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2, SparseArray<View> sparseArray, SparseArray<View> sparseArray2) {
        View view;
        int size = sparseArray.size();
        for (int i9 = 0; i9 < size; i9++) {
            View viewValueAt = sparseArray.valueAt(i9);
            if (viewValueAt != null && isValidTarget(viewValueAt) && (view = sparseArray2.get(sparseArray.keyAt(i9))) != null && isValidTarget(view)) {
                TransitionValues transitionValues = arrayMap.get(viewValueAt);
                TransitionValues transitionValues2 = arrayMap2.get(view);
                if (transitionValues != null && transitionValues2 != null) {
                    this.mStartValuesList.add(transitionValues);
                    this.mEndValuesList.add(transitionValues2);
                    arrayMap.remove(viewValueAt);
                    arrayMap2.remove(view);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void matchInstances(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2) {
        TransitionValues transitionValuesRemove;
        for (int size = arrayMap.getSize() - 1; size >= 0; size--) {
            View viewKeyAt = arrayMap.keyAt(size);
            if (viewKeyAt != null && isValidTarget(viewKeyAt) && (transitionValuesRemove = arrayMap2.remove(viewKeyAt)) != null && isValidTarget(transitionValuesRemove.view)) {
                this.mStartValuesList.add(arrayMap.removeAt(size));
                this.mEndValuesList.add(transitionValuesRemove);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void matchItemIds(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2, LongSparseArray<View> longSparseArray, LongSparseArray<View> longSparseArray2) {
        View view;
        int size = longSparseArray.size();
        for (int i9 = 0; i9 < size; i9++) {
            View viewValueAt = longSparseArray.valueAt(i9);
            if (viewValueAt != null && isValidTarget(viewValueAt) && (view = longSparseArray2.get(longSparseArray.keyAt(i9))) != null && isValidTarget(view)) {
                TransitionValues transitionValues = arrayMap.get(viewValueAt);
                TransitionValues transitionValues2 = arrayMap2.get(view);
                if (transitionValues != null && transitionValues2 != null) {
                    this.mStartValuesList.add(transitionValues);
                    this.mEndValuesList.add(transitionValues2);
                    arrayMap.remove(viewValueAt);
                    arrayMap2.remove(view);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void matchNames(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2, ArrayMap<String, View> arrayMap3, ArrayMap<String, View> arrayMap4) {
        View view;
        int size = arrayMap3.getSize();
        for (int i9 = 0; i9 < size; i9++) {
            View viewValueAt = arrayMap3.valueAt(i9);
            if (viewValueAt != null && isValidTarget(viewValueAt) && (view = arrayMap4.get(arrayMap3.keyAt(i9))) != null && isValidTarget(view)) {
                TransitionValues transitionValues = arrayMap.get(viewValueAt);
                TransitionValues transitionValues2 = arrayMap2.get(view);
                if (transitionValues != null && transitionValues2 != null) {
                    this.mStartValuesList.add(transitionValues);
                    this.mEndValuesList.add(transitionValues2);
                    arrayMap.remove(viewValueAt);
                    arrayMap2.remove(view);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void matchStartAndEnd(TransitionValuesMaps transitionValuesMaps, TransitionValuesMaps transitionValuesMaps2) {
        ArrayMap<View, TransitionValues> arrayMap = new ArrayMap<>(transitionValuesMaps.mViewValues);
        ArrayMap<View, TransitionValues> arrayMap2 = new ArrayMap<>(transitionValuesMaps2.mViewValues);
        int i9 = 0;
        while (true) {
            int[] iArr = this.mMatchOrder;
            if (i9 >= iArr.length) {
                addUnmatched(arrayMap, arrayMap2);
                return;
            }
            int i10 = iArr[i9];
            if (i10 == 1) {
                matchInstances(arrayMap, arrayMap2);
            } else if (i10 == 2) {
                matchNames(arrayMap, arrayMap2, transitionValuesMaps.mNameValues, transitionValuesMaps2.mNameValues);
            } else if (i10 == 3) {
                matchIds(arrayMap, arrayMap2, transitionValuesMaps.mIdValues, transitionValuesMaps2.mIdValues);
            } else if (i10 == 4) {
                matchItemIds(arrayMap, arrayMap2, transitionValuesMaps.mItemIdValues, transitionValuesMaps2.mItemIdValues);
            }
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void notifyFromTransition(Transition transition, Transition$TransitionNotification transition$TransitionNotification, boolean z8) {
        Transition transition2 = this.mCloneParent;
        if (transition2 != null) {
            transition2.notifyFromTransition(transition, transition$TransitionNotification, z8);
        }
        ArrayList<Transition$TransitionListener> arrayList = this.mListeners;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        int size = this.mListeners.size();
        Transition$TransitionListener[] transition$TransitionListenerArr = this.mListenersCache;
        if (transition$TransitionListenerArr == null) {
            transition$TransitionListenerArr = new Transition$TransitionListener[size];
        }
        this.mListenersCache = null;
        Transition$TransitionListener[] transition$TransitionListenerArr2 = (Transition$TransitionListener[]) this.mListeners.toArray(transition$TransitionListenerArr);
        for (int i9 = 0; i9 < size; i9++) {
            transition$TransitionNotification.notifyListener(transition$TransitionListenerArr2[i9], transition, z8);
            transition$TransitionListenerArr2[i9] = null;
        }
        this.mListenersCache = transition$TransitionListenerArr2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int[] parseMatchOrder(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        int[] iArr = new int[stringTokenizer.countTokens()];
        int i9 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String strTrim = stringTokenizer.nextToken().trim();
            if (MATCH_ID_STR.equalsIgnoreCase(strTrim)) {
                iArr[i9] = 3;
            } else if (MATCH_INSTANCE_STR.equalsIgnoreCase(strTrim)) {
                iArr[i9] = 1;
            } else if (MATCH_NAME_STR.equalsIgnoreCase(strTrim)) {
                iArr[i9] = 2;
            } else if (MATCH_ITEM_ID_STR.equalsIgnoreCase(strTrim)) {
                iArr[i9] = 4;
            } else {
                if (!strTrim.isEmpty()) {
                    throw new InflateException(ai.onnxruntime.a.m("Unknown match type in matchOrder: '", strTrim, "'"));
                }
                int[] iArr2 = new int[iArr.length - 1];
                System.arraycopy(iArr, 0, iArr2, 0, i9);
                i9--;
                iArr = iArr2;
            }
            i9++;
        }
        return iArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void runAnimator(Animator animator, ArrayMap<Animator, Transition$AnimationInfo> arrayMap) {
        if (animator != null) {
            animator.addListener(new Transition$2(this, arrayMap));
            animate(animator);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Transition addListener(@NonNull Transition$TransitionListener transition$TransitionListener) {
        if (this.mListeners == null) {
            this.mListeners = new ArrayList<>();
        }
        this.mListeners.add(transition$TransitionListener);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Transition addTarget(@NonNull String str) {
        if (this.mTargetNames == null) {
            this.mTargetNames = new ArrayList<>();
        }
        this.mTargetNames.add(str);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void animate(@Nullable Animator animator) {
        if (animator == null) {
            end();
            return;
        }
        if (getDuration() >= 0) {
            animator.setDuration(getDuration());
        }
        if (getStartDelay() >= 0) {
            animator.setStartDelay(animator.getStartDelay() + getStartDelay());
        }
        if (getInterpolator() != null) {
            animator.setInterpolator(getInterpolator());
        }
        animator.addListener(new Transition$3(this));
        animator.start();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void cancel() {
        int size = this.mCurrentAnimators.size();
        Animator[] animatorArr = (Animator[]) this.mCurrentAnimators.toArray(this.mAnimatorCache);
        this.mAnimatorCache = EMPTY_ANIMATOR_ARRAY;
        for (int i9 = size - 1; i9 >= 0; i9--) {
            Animator animator = animatorArr[i9];
            animatorArr[i9] = null;
            animator.cancel();
        }
        this.mAnimatorCache = animatorArr;
        notifyListeners(Transition$TransitionNotification.ON_CANCEL, false);
    }

    public abstract void captureEndValues(@NonNull TransitionValues transitionValues);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void capturePropagationValues(TransitionValues transitionValues) {
        String[] propagationProperties;
        if (this.mPropagation == null || transitionValues.values.isEmpty() || (propagationProperties = this.mPropagation.getPropagationProperties()) == null) {
            return;
        }
        for (String str : propagationProperties) {
            if (!transitionValues.values.containsKey(str)) {
                this.mPropagation.captureValues(transitionValues);
                return;
            }
        }
    }

    public abstract void captureStartValues(@NonNull TransitionValues transitionValues);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void captureValues(@NonNull ViewGroup viewGroup, boolean z8) {
        ArrayList<String> arrayList;
        ArrayList<Class<?>> arrayList2;
        ArrayMap<String, String> arrayMap;
        clearValues(z8);
        if ((this.mTargetIds.size() > 0 || this.mTargets.size() > 0) && (((arrayList = this.mTargetNames) == null || arrayList.isEmpty()) && ((arrayList2 = this.mTargetTypes) == null || arrayList2.isEmpty()))) {
            for (int i9 = 0; i9 < this.mTargetIds.size(); i9++) {
                View viewFindViewById = viewGroup.findViewById(this.mTargetIds.get(i9).intValue());
                if (viewFindViewById != null) {
                    TransitionValues transitionValues = new TransitionValues(viewFindViewById);
                    if (z8) {
                        captureStartValues(transitionValues);
                    } else {
                        captureEndValues(transitionValues);
                    }
                    transitionValues.mTargetedTransitions.add(this);
                    capturePropagationValues(transitionValues);
                    if (z8) {
                        addViewValues(this.mStartValues, viewFindViewById, transitionValues);
                    } else {
                        addViewValues(this.mEndValues, viewFindViewById, transitionValues);
                    }
                }
            }
            for (int i10 = 0; i10 < this.mTargets.size(); i10++) {
                View view = this.mTargets.get(i10);
                TransitionValues transitionValues2 = new TransitionValues(view);
                if (z8) {
                    captureStartValues(transitionValues2);
                } else {
                    captureEndValues(transitionValues2);
                }
                transitionValues2.mTargetedTransitions.add(this);
                capturePropagationValues(transitionValues2);
                if (z8) {
                    addViewValues(this.mStartValues, view, transitionValues2);
                } else {
                    addViewValues(this.mEndValues, view, transitionValues2);
                }
            }
        } else {
            captureHierarchy(viewGroup, z8);
        }
        if (z8 || (arrayMap = this.mNameOverrides) == null) {
            return;
        }
        int size = arrayMap.getSize();
        ArrayList arrayList3 = new ArrayList(size);
        for (int i11 = 0; i11 < size; i11++) {
            arrayList3.add(this.mStartValues.mNameValues.remove(this.mNameOverrides.keyAt(i11)));
        }
        for (int i12 = 0; i12 < size; i12++) {
            View view2 = (View) arrayList3.get(i12);
            if (view2 != null) {
                this.mStartValues.mNameValues.put(this.mNameOverrides.valueAt(i12), view2);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clearValues(boolean z8) {
        if (z8) {
            this.mStartValues.mViewValues.clear();
            this.mStartValues.mIdValues.clear();
            this.mStartValues.mItemIdValues.clear();
        } else {
            this.mEndValues.mViewValues.clear();
            this.mEndValues.mIdValues.clear();
            this.mEndValues.mItemIdValues.clear();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Transition clone() {
        try {
            Transition transition = (Transition) super.clone();
            transition.mAnimators = new ArrayList<>();
            transition.mStartValues = new TransitionValuesMaps();
            transition.mEndValues = new TransitionValuesMaps();
            transition.mStartValuesList = null;
            transition.mEndValuesList = null;
            transition.mSeekController = null;
            transition.mCloneParent = this;
            transition.mListeners = null;
            return transition;
        } catch (CloneNotSupportedException e) {
            n0.b.w(e);
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void createAnimators(@NonNull ViewGroup viewGroup, @NonNull TransitionValuesMaps transitionValuesMaps, @NonNull TransitionValuesMaps transitionValuesMaps2, @NonNull ArrayList<TransitionValues> arrayList, @NonNull ArrayList<TransitionValues> arrayList2) {
        Animator animatorCreateAnimator;
        Animator animator;
        int i9;
        boolean z8;
        int i10;
        View view;
        TransitionValues transitionValues;
        Animator animator2;
        View view2;
        Animator animator3;
        ArrayMap<Animator, Transition$AnimationInfo> runningAnimators = getRunningAnimators();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        boolean z9 = getRootTransition().mSeekController != null;
        long jMin = Long.MAX_VALUE;
        int i11 = 0;
        while (i11 < size) {
            TransitionValues transitionValues2 = arrayList.get(i11);
            TransitionValues transitionValues3 = arrayList2.get(i11);
            if (transitionValues2 != null && !transitionValues2.mTargetedTransitions.contains(this)) {
                transitionValues2 = null;
            }
            if (transitionValues3 != null && !transitionValues3.mTargetedTransitions.contains(this)) {
                transitionValues3 = null;
            }
            if (!(transitionValues2 == null && transitionValues3 == null) && ((transitionValues2 == null || transitionValues3 == null || isTransitionRequired(transitionValues2, transitionValues3)) && (animatorCreateAnimator = createAnimator(viewGroup, transitionValues2, transitionValues3)) != null)) {
                if (transitionValues3 != null) {
                    View view3 = transitionValues3.view;
                    String[] transitionProperties = getTransitionProperties();
                    if (transitionProperties != null && transitionProperties.length > 0) {
                        transitionValues = new TransitionValues(view3);
                        i9 = size;
                        z8 = z9;
                        TransitionValues transitionValues4 = transitionValuesMaps2.mViewValues.get(view3);
                        i10 = i11;
                        if (transitionValues4 != null) {
                            int i12 = 0;
                            while (i12 < transitionProperties.length) {
                                Map<String, Object> map = transitionValues.values;
                                int i13 = i12;
                                String str = transitionProperties[i13];
                                map.put(str, transitionValues4.values.get(str));
                                i12 = i13 + 1;
                                transitionProperties = transitionProperties;
                            }
                        }
                        int size2 = runningAnimators.getSize();
                        int i14 = 0;
                        while (true) {
                            if (i14 >= size2) {
                                view2 = view3;
                                animator3 = animatorCreateAnimator;
                                break;
                            }
                            Transition$AnimationInfo transition$AnimationInfo = runningAnimators.get(runningAnimators.keyAt(i14));
                            if (transition$AnimationInfo.mValues != null && transition$AnimationInfo.mView == view3) {
                                view2 = view3;
                                if (transition$AnimationInfo.mName.equals(getName()) && transition$AnimationInfo.mValues.equals(transitionValues)) {
                                    animator3 = null;
                                    break;
                                }
                            } else {
                                view2 = view3;
                            }
                            i14++;
                            view3 = view2;
                        }
                    } else {
                        view2 = view3;
                        i9 = size;
                        z8 = z9;
                        i10 = i11;
                        animator3 = animatorCreateAnimator;
                        transitionValues = null;
                    }
                    animator = animator3;
                    view = view2;
                } else {
                    animator = animatorCreateAnimator;
                    i9 = size;
                    z8 = z9;
                    i10 = i11;
                    view = transitionValues2.view;
                    transitionValues = null;
                }
                if (animator != null) {
                    TransitionPropagation transitionPropagation = this.mPropagation;
                    if (transitionPropagation != null) {
                        long startDelay = transitionPropagation.getStartDelay(viewGroup, this, transitionValues2, transitionValues3);
                        sparseIntArray.put(this.mAnimators.size(), (int) startDelay);
                        jMin = Math.min(startDelay, jMin);
                    }
                    long j9 = jMin;
                    View view4 = view;
                    TransitionValues transitionValues5 = transitionValues;
                    Animator animator4 = animator;
                    Transition$AnimationInfo transition$AnimationInfo2 = new Transition$AnimationInfo(view4, getName(), this, viewGroup.getWindowId(), transitionValues5, animator4);
                    if (z8) {
                        AnimatorSet animatorSet = new AnimatorSet();
                        animatorSet.play(animator4);
                        animator2 = animatorSet;
                    } else {
                        animator2 = animator4;
                    }
                    runningAnimators.put(animator2, transition$AnimationInfo2);
                    this.mAnimators.add(animator2);
                    jMin = j9;
                }
            } else {
                i9 = size;
                z8 = z9;
                i10 = i11;
            }
            i11 = i10 + 1;
            size = i9;
            z9 = z8;
        }
        if (sparseIntArray.size() != 0) {
            for (int i15 = 0; i15 < sparseIntArray.size(); i15++) {
                Transition$AnimationInfo transition$AnimationInfo3 = runningAnimators.get(this.mAnimators.get(sparseIntArray.keyAt(i15)));
                transition$AnimationInfo3.mAnimator.setStartDelay(transition$AnimationInfo3.mAnimator.getStartDelay() + (((long) sparseIntArray.valueAt(i15)) - jMin));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RequiresApi(34)
    public TransitionSeekController createSeekController() {
        Transition$SeekController transition$SeekController = new Transition$SeekController(this);
        this.mSeekController = transition$SeekController;
        addListener(transition$SeekController);
        return this.mSeekController;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void end() {
        int i9 = this.mNumInstances - 1;
        this.mNumInstances = i9;
        if (i9 == 0) {
            notifyListeners(Transition$TransitionNotification.ON_END, false);
            for (int i10 = 0; i10 < this.mStartValues.mItemIdValues.size(); i10++) {
                View viewValueAt = this.mStartValues.mItemIdValues.valueAt(i10);
                if (viewValueAt != null) {
                    viewValueAt.setHasTransientState(false);
                }
            }
            for (int i11 = 0; i11 < this.mEndValues.mItemIdValues.size(); i11++) {
                View viewValueAt2 = this.mEndValues.mItemIdValues.valueAt(i11);
                if (viewValueAt2 != null) {
                    viewValueAt2.setHasTransientState(false);
                }
            }
            this.mEnded = true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Transition excludeChildren(@NonNull View view, boolean z8) {
        this.mTargetChildExcludes = excludeView(this.mTargetChildExcludes, view, z8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Transition excludeTarget(@NonNull View view, boolean z8) {
        this.mTargetExcludes = excludeView(this.mTargetExcludes, view, z8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r0v1, resolved type: V */
    /* JADX DEBUG: Multi-variable search result rejected for r0v5, resolved type: K */
    /* JADX WARN: Multi-variable type inference failed */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void forceToEnd(@Nullable ViewGroup viewGroup) {
        ArrayMap<Animator, Transition$AnimationInfo> runningAnimators = getRunningAnimators();
        int size = runningAnimators.getSize();
        if (viewGroup == null || size == 0) {
            return;
        }
        WindowId windowId = viewGroup.getWindowId();
        ArrayMap arrayMap = new ArrayMap(runningAnimators);
        runningAnimators.clear();
        for (int i9 = size - 1; i9 >= 0; i9--) {
            Transition$AnimationInfo transition$AnimationInfo = (Transition$AnimationInfo) arrayMap.valueAt(i9);
            if (transition$AnimationInfo.mView != null && windowId.equals(transition$AnimationInfo.mWindowId)) {
                ((Animator) arrayMap.keyAt(i9)).end();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getDuration() {
        return this.mDuration;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Rect getEpicenter() {
        Transition$EpicenterCallback transition$EpicenterCallback = this.mEpicenterCallback;
        if (transition$EpicenterCallback == null) {
            return null;
        }
        return transition$EpicenterCallback.onGetEpicenter(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Transition$EpicenterCallback getEpicenterCallback() {
        return this.mEpicenterCallback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public TimeInterpolator getInterpolator() {
        return this.mInterpolator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TransitionValues getMatchedTransitionValues(View view, boolean z8) {
        TransitionSet transitionSet = this.mParent;
        if (transitionSet != null) {
            return transitionSet.getMatchedTransitionValues(view, z8);
        }
        ArrayList<TransitionValues> arrayList = z8 ? this.mStartValuesList : this.mEndValuesList;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i9 = 0;
        while (true) {
            if (i9 >= size) {
                i9 = -1;
                break;
            }
            TransitionValues transitionValues = arrayList.get(i9);
            if (transitionValues == null) {
                return null;
            }
            if (transitionValues.view == view) {
                break;
            }
            i9++;
        }
        if (i9 >= 0) {
            return (z8 ? this.mEndValuesList : this.mStartValuesList).get(i9);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public String getName() {
        return this.mName;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public PathMotion getPathMotion() {
        return this.mPathMotion;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public TransitionPropagation getPropagation() {
        return this.mPropagation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public final Transition getRootTransition() {
        TransitionSet transitionSet = this.mParent;
        return transitionSet != null ? transitionSet.getRootTransition() : this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getStartDelay() {
        return this.mStartDelay;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public List<Integer> getTargetIds() {
        return this.mTargetIds;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public List<String> getTargetNames() {
        return this.mTargetNames;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public List<Class<?>> getTargetTypes() {
        return this.mTargetTypes;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public List<View> getTargets() {
        return this.mTargets;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long getTotalDurationMillis() {
        return this.mTotalDuration;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public String[] getTransitionProperties() {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public TransitionValues getTransitionValues(@NonNull View view, boolean z8) {
        TransitionSet transitionSet = this.mParent;
        if (transitionSet != null) {
            return transitionSet.getTransitionValues(view, z8);
        }
        return (z8 ? this.mStartValues : this.mEndValues).mViewValues.get(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasAnimators() {
        return !this.mCurrentAnimators.isEmpty();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isSeekingSupported() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isTransitionRequired(@Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        if (transitionValues != null && transitionValues2 != null) {
            String[] transitionProperties = getTransitionProperties();
            if (transitionProperties != null) {
                for (String str : transitionProperties) {
                    if (isValueChanged(transitionValues, transitionValues2, str)) {
                        return true;
                    }
                }
            } else {
                Iterator<String> it = transitionValues.values.keySet().iterator();
                while (it.hasNext()) {
                    if (isValueChanged(transitionValues, transitionValues2, it.next())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isValidTarget(View view) {
        ArrayList<Class<?>> arrayList;
        ArrayList<String> arrayList2;
        int id = view.getId();
        ArrayList<Integer> arrayList3 = this.mTargetIdExcludes;
        if (arrayList3 != null && arrayList3.contains(Integer.valueOf(id))) {
            return false;
        }
        ArrayList<View> arrayList4 = this.mTargetExcludes;
        if (arrayList4 != null && arrayList4.contains(view)) {
            return false;
        }
        ArrayList<Class<?>> arrayList5 = this.mTargetTypeExcludes;
        if (arrayList5 != null) {
            int size = arrayList5.size();
            for (int i9 = 0; i9 < size; i9++) {
                if (this.mTargetTypeExcludes.get(i9).isInstance(view)) {
                    return false;
                }
            }
        }
        if (this.mTargetNameExcludes != null && ViewCompat.getTransitionName(view) != null && this.mTargetNameExcludes.contains(ViewCompat.getTransitionName(view))) {
            return false;
        }
        if ((this.mTargetIds.size() == 0 && this.mTargets.size() == 0 && (((arrayList = this.mTargetTypes) == null || arrayList.isEmpty()) && ((arrayList2 = this.mTargetNames) == null || arrayList2.isEmpty()))) || this.mTargetIds.contains(Integer.valueOf(id)) || this.mTargets.contains(view)) {
            return true;
        }
        ArrayList<String> arrayList6 = this.mTargetNames;
        if (arrayList6 != null && arrayList6.contains(ViewCompat.getTransitionName(view))) {
            return true;
        }
        if (this.mTargetTypes != null) {
            for (int i10 = 0; i10 < this.mTargetTypes.size(); i10++) {
                if (this.mTargetTypes.get(i10).isInstance(view)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void notifyListeners(Transition$TransitionNotification transition$TransitionNotification, boolean z8) {
        notifyFromTransition(this, transition$TransitionNotification, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void pause(@Nullable View view) {
        if (this.mEnded) {
            return;
        }
        int size = this.mCurrentAnimators.size();
        Animator[] animatorArr = (Animator[]) this.mCurrentAnimators.toArray(this.mAnimatorCache);
        this.mAnimatorCache = EMPTY_ANIMATOR_ARRAY;
        for (int i9 = size - 1; i9 >= 0; i9--) {
            Animator animator = animatorArr[i9];
            animatorArr[i9] = null;
            animator.pause();
        }
        this.mAnimatorCache = animatorArr;
        notifyListeners(Transition$TransitionNotification.ON_PAUSE, false);
        this.mPaused = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void playTransition(@NonNull ViewGroup viewGroup) {
        Transition$AnimationInfo transition$AnimationInfo;
        this.mStartValuesList = new ArrayList<>();
        this.mEndValuesList = new ArrayList<>();
        matchStartAndEnd(this.mStartValues, this.mEndValues);
        ArrayMap<Animator, Transition$AnimationInfo> runningAnimators = getRunningAnimators();
        int size = runningAnimators.getSize();
        WindowId windowId = viewGroup.getWindowId();
        for (int i9 = size - 1; i9 >= 0; i9--) {
            Animator animatorKeyAt = runningAnimators.keyAt(i9);
            if (animatorKeyAt != null && (transition$AnimationInfo = runningAnimators.get(animatorKeyAt)) != null && transition$AnimationInfo.mView != null && windowId.equals(transition$AnimationInfo.mWindowId)) {
                TransitionValues transitionValues = transition$AnimationInfo.mValues;
                View view = transition$AnimationInfo.mView;
                TransitionValues transitionValues2 = getTransitionValues(view, true);
                TransitionValues matchedTransitionValues = getMatchedTransitionValues(view, true);
                if (transitionValues2 == null && matchedTransitionValues == null) {
                    matchedTransitionValues = this.mEndValues.mViewValues.get(view);
                }
                if ((transitionValues2 != null || matchedTransitionValues != null) && transition$AnimationInfo.mTransition.isTransitionRequired(transitionValues, matchedTransitionValues)) {
                    Transition transition = transition$AnimationInfo.mTransition;
                    if (transition.getRootTransition().mSeekController != null) {
                        animatorKeyAt.cancel();
                        transition.mCurrentAnimators.remove(animatorKeyAt);
                        runningAnimators.remove(animatorKeyAt);
                        if (transition.mCurrentAnimators.size() == 0) {
                            transition.notifyListeners(Transition$TransitionNotification.ON_CANCEL, false);
                            if (!transition.mEnded) {
                                transition.mEnded = true;
                                transition.notifyListeners(Transition$TransitionNotification.ON_END, false);
                            }
                        }
                    } else if (animatorKeyAt.isRunning() || animatorKeyAt.isStarted()) {
                        animatorKeyAt.cancel();
                    } else {
                        runningAnimators.remove(animatorKeyAt);
                    }
                }
            }
        }
        createAnimators(viewGroup, this.mStartValues, this.mEndValues, this.mStartValuesList, this.mEndValuesList);
        if (this.mSeekController == null) {
            runAnimators();
        } else if (Build$VERSION.SDK_INT >= 34) {
            prepareAnimatorsForSeeking();
            this.mSeekController.initPlayTime();
            this.mSeekController.ready();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(34)
    public void prepareAnimatorsForSeeking() {
        ArrayMap<Animator, Transition$AnimationInfo> runningAnimators = getRunningAnimators();
        this.mTotalDuration = 0L;
        int i9 = 0;
        while (true) {
            int size = this.mAnimators.size();
            ArrayList<Animator> arrayList = this.mAnimators;
            if (i9 >= size) {
                arrayList.clear();
                return;
            }
            Animator animator = arrayList.get(i9);
            Transition$AnimationInfo transition$AnimationInfo = runningAnimators.get(animator);
            if (animator != null && transition$AnimationInfo != null) {
                if (getDuration() >= 0) {
                    transition$AnimationInfo.mAnimator.setDuration(getDuration());
                }
                if (getStartDelay() >= 0) {
                    transition$AnimationInfo.mAnimator.setStartDelay(transition$AnimationInfo.mAnimator.getStartDelay() + getStartDelay());
                }
                if (getInterpolator() != null) {
                    transition$AnimationInfo.mAnimator.setInterpolator(getInterpolator());
                }
                this.mCurrentAnimators.add(animator);
                this.mTotalDuration = Math.max(this.mTotalDuration, Transition$Impl26.getTotalDuration(animator));
            }
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Transition removeListener(@NonNull Transition$TransitionListener transition$TransitionListener) {
        Transition transition;
        ArrayList<Transition$TransitionListener> arrayList = this.mListeners;
        if (arrayList != null) {
            if (!arrayList.remove(transition$TransitionListener) && (transition = this.mCloneParent) != null) {
                transition.removeListener(transition$TransitionListener);
            }
            if (this.mListeners.size() == 0) {
                this.mListeners = null;
            }
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Transition removeTarget(@IdRes int i9) {
        if (i9 != 0) {
            this.mTargetIds.remove(Integer.valueOf(i9));
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void resume(@Nullable View view) {
        if (this.mPaused) {
            if (!this.mEnded) {
                int size = this.mCurrentAnimators.size();
                Animator[] animatorArr = (Animator[]) this.mCurrentAnimators.toArray(this.mAnimatorCache);
                this.mAnimatorCache = EMPTY_ANIMATOR_ARRAY;
                for (int i9 = size - 1; i9 >= 0; i9--) {
                    Animator animator = animatorArr[i9];
                    animatorArr[i9] = null;
                    animator.resume();
                }
                this.mAnimatorCache = animatorArr;
                notifyListeners(Transition$TransitionNotification.ON_RESUME, false);
            }
            this.mPaused = false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void runAnimators() {
        start();
        ArrayMap<Animator, Transition$AnimationInfo> runningAnimators = getRunningAnimators();
        ArrayList<Animator> arrayList = this.mAnimators;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Animator animator = arrayList.get(i9);
            i9++;
            Animator animator2 = animator;
            if (runningAnimators.containsKey(animator2)) {
                start();
                runAnimator(animator2, runningAnimators);
            }
        }
        this.mAnimators.clear();
        end();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCanRemoveViews(boolean z8) {
        this.mCanRemoveViews = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(34)
    public void setCurrentPlayTimeMillis(long j9, long j10) {
        long totalDurationMillis = getTotalDurationMillis();
        int i9 = 0;
        boolean z8 = j9 < j10;
        if ((j10 < 0 && j9 >= 0) || (j10 > totalDurationMillis && j9 <= totalDurationMillis)) {
            this.mEnded = false;
            notifyListeners(Transition$TransitionNotification.ON_START, z8);
        }
        int size = this.mCurrentAnimators.size();
        Animator[] animatorArr = (Animator[]) this.mCurrentAnimators.toArray(this.mAnimatorCache);
        this.mAnimatorCache = EMPTY_ANIMATOR_ARRAY;
        while (i9 < size) {
            Animator animator = animatorArr[i9];
            animatorArr[i9] = null;
            Transition$Impl26.setCurrentPlayTime(animator, Math.min(Math.max(0L, j9), Transition$Impl26.getTotalDuration(animator)));
            i9++;
            totalDurationMillis = totalDurationMillis;
        }
        long j11 = totalDurationMillis;
        this.mAnimatorCache = animatorArr;
        if ((j9 <= j11 || j10 > j11) && (j9 >= 0 || j10 < 0)) {
            return;
        }
        if (j9 > j11) {
            this.mEnded = true;
        }
        notifyListeners(Transition$TransitionNotification.ON_END, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Transition setDuration(long j9) {
        this.mDuration = j9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEpicenterCallback(@Nullable Transition$EpicenterCallback transition$EpicenterCallback) {
        this.mEpicenterCallback = transition$EpicenterCallback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Transition setInterpolator(@Nullable TimeInterpolator timeInterpolator) {
        this.mInterpolator = timeInterpolator;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMatchOrder(@Nullable int... iArr) {
        if (iArr == null || iArr.length == 0) {
            this.mMatchOrder = DEFAULT_MATCH_ORDER;
            return;
        }
        for (int i9 = 0; i9 < iArr.length; i9++) {
            if (!isValidMatch(iArr[i9])) {
                i.k("matches contains invalid value");
                return;
            } else {
                if (alreadyContains(iArr, i9)) {
                    i.k("matches contains a duplicate value");
                    return;
                }
            }
        }
        this.mMatchOrder = (int[]) iArr.clone();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPathMotion(@Nullable PathMotion pathMotion) {
        if (pathMotion == null) {
            this.mPathMotion = STRAIGHT_PATH_MOTION;
        } else {
            this.mPathMotion = pathMotion;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPropagation(@Nullable TransitionPropagation transitionPropagation) {
        this.mPropagation = transitionPropagation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Transition setStartDelay(long j9) {
        this.mStartDelay = j9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void start() {
        if (this.mNumInstances == 0) {
            notifyListeners(Transition$TransitionNotification.ON_START, false);
            this.mEnded = false;
        }
        this.mNumInstances++;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString(String str) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(getClass().getSimpleName());
        sb.append("@");
        sb.append(Integer.toHexString(hashCode()));
        sb.append(": ");
        if (this.mDuration != -1) {
            sb.append("dur(");
            sb.append(this.mDuration);
            sb.append(") ");
        }
        if (this.mStartDelay != -1) {
            sb.append("dly(");
            sb.append(this.mStartDelay);
            sb.append(") ");
        }
        if (this.mInterpolator != null) {
            sb.append("interp(");
            sb.append(this.mInterpolator);
            sb.append(") ");
        }
        if (this.mTargetIds.size() > 0 || this.mTargets.size() > 0) {
            sb.append("tgts(");
            if (this.mTargetIds.size() > 0) {
                for (int i9 = 0; i9 < this.mTargetIds.size(); i9++) {
                    if (i9 > 0) {
                        sb.append(", ");
                    }
                    sb.append(this.mTargetIds.get(i9));
                }
            }
            if (this.mTargets.size() > 0) {
                for (int i10 = 0; i10 < this.mTargets.size(); i10++) {
                    if (i10 > 0) {
                        sb.append(", ");
                    }
                    sb.append(this.mTargets.get(i10));
                }
            }
            sb.append(")");
        }
        return sb.toString();
    }

    @NonNull
    public Transition excludeChildren(@IdRes int i9, boolean z8) {
        this.mTargetIdChildExcludes = excludeId(this.mTargetIdChildExcludes, i9, z8);
        return this;
    }

    @NonNull
    public Transition excludeTarget(@IdRes int i9, boolean z8) {
        this.mTargetIdExcludes = excludeId(this.mTargetIdExcludes, i9, z8);
        return this;
    }

    @NonNull
    public Transition excludeChildren(@NonNull Class<?> cls, boolean z8) {
        this.mTargetTypeChildExcludes = excludeType(this.mTargetTypeChildExcludes, cls, z8);
        return this;
    }

    @NonNull
    public Transition excludeTarget(@NonNull String str, boolean z8) {
        this.mTargetNameExcludes = excludeObject(this.mTargetNameExcludes, str, z8);
        return this;
    }

    @NonNull
    public Transition excludeTarget(@NonNull Class<?> cls, boolean z8) {
        this.mTargetTypeExcludes = excludeType(this.mTargetTypeExcludes, cls, z8);
        return this;
    }

    @NonNull
    public Transition removeTarget(@NonNull View view) {
        this.mTargets.remove(view);
        return this;
    }

    @NonNull
    public Transition removeTarget(@NonNull String str) {
        ArrayList<String> arrayList = this.mTargetNames;
        if (arrayList != null) {
            arrayList.remove(str);
        }
        return this;
    }

    @NonNull
    public Transition removeTarget(@NonNull Class<?> cls) {
        ArrayList<Class<?>> arrayList = this.mTargetTypes;
        if (arrayList != null) {
            arrayList.remove(cls);
        }
        return this;
    }

    @NonNull
    public Transition addTarget(@IdRes int i9) {
        if (i9 != 0) {
            this.mTargetIds.add(Integer.valueOf(i9));
        }
        return this;
    }

    @NonNull
    public Transition addTarget(@NonNull View view) {
        this.mTargets.add(view);
        return this;
    }

    @NonNull
    public Transition addTarget(@NonNull Class<?> cls) {
        if (this.mTargetTypes == null) {
            this.mTargetTypes = new ArrayList<>();
        }
        this.mTargetTypes.add(cls);
        return this;
    }

    @NonNull
    /* JADX INFO: renamed from: clone, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Object mo82clone() {
        return clone();
    }

    public Transition() {
    }

    @NonNull
    public String toString() {
        return toString("");
    }
}

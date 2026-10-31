package androidx.constraintlayout.core.state;

import androidx.annotation.NonNull;
import androidx.constraintlayout.core.state.helpers.AlignHorizontallyReference;
import androidx.constraintlayout.core.state.helpers.AlignVerticallyReference;
import androidx.constraintlayout.core.state.helpers.BarrierReference;
import androidx.constraintlayout.core.state.helpers.FlowReference;
import androidx.constraintlayout.core.state.helpers.GridReference;
import androidx.constraintlayout.core.state.helpers.GuidelineReference;
import androidx.constraintlayout.core.state.helpers.HorizontalChainReference;
import androidx.constraintlayout.core.state.helpers.VerticalChainReference;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.HelperWidget;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class State {
    static final int CONSTRAINT_RATIO = 2;
    static final int CONSTRAINT_SPREAD = 0;
    static final int CONSTRAINT_WRAP = 1;
    public static final Integer PARENT = 0;
    static final int UNKNOWN = -1;
    ArrayList<Object> mBaselineNeeded;
    ArrayList<ConstraintWidget> mBaselineNeededWidgets;
    boolean mDirtyBaselineNeededWidgets;
    private CorePixelDp mDpToPixel;
    private int mNumHelpers;
    public final ConstraintReference mParent;
    private boolean mIsLtr = true;
    protected HashMap<Object, Reference> mReferences = new HashMap<>();
    protected HashMap<Object, HelperReference> mHelperReferences = new HashMap<>();
    HashMap<String, ArrayList<String>> mTags = new HashMap<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public State() {
        ConstraintReference constraintReference = new ConstraintReference(this);
        this.mParent = constraintReference;
        this.mNumHelpers = 0;
        this.mBaselineNeeded = new ArrayList<>();
        this.mBaselineNeededWidgets = new ArrayList<>();
        this.mDirtyBaselineNeededWidgets = true;
        Integer num = PARENT;
        constraintReference.setKey(num);
        this.mReferences.put(num, constraintReference);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private String createHelperKey() {
        StringBuilder sb = new StringBuilder("__HELPER_KEY_");
        int i9 = this.mNumHelpers;
        this.mNumHelpers = i9 + 1;
        return ai.onnxruntime.a.o(sb, "__", i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void apply(ConstraintWidgetContainer constraintWidgetContainer) {
        HelperReference helperReference;
        HelperWidget helperWidget;
        HelperWidget helperWidget2;
        constraintWidgetContainer.removeAllChildren();
        this.mParent.getWidth().apply(this, constraintWidgetContainer, 0);
        this.mParent.getHeight().apply(this, constraintWidgetContainer, 1);
        for (Object obj : this.mHelperReferences.keySet()) {
            HelperWidget helperWidget3 = this.mHelperReferences.get(obj).getHelperWidget();
            if (helperWidget3 != null) {
                Reference referenceConstraints = this.mReferences.get(obj);
                if (referenceConstraints == null) {
                    referenceConstraints = constraints(obj);
                }
                referenceConstraints.setConstraintWidget(helperWidget3);
            }
        }
        for (Object obj2 : this.mReferences.keySet()) {
            Reference reference = this.mReferences.get(obj2);
            if (reference != this.mParent && (reference.getFacade() instanceof HelperReference) && (helperWidget2 = ((HelperReference) reference.getFacade()).getHelperWidget()) != null) {
                Reference referenceConstraints2 = this.mReferences.get(obj2);
                if (referenceConstraints2 == null) {
                    referenceConstraints2 = constraints(obj2);
                }
                referenceConstraints2.setConstraintWidget(helperWidget2);
            }
        }
        Iterator<Object> it = this.mReferences.keySet().iterator();
        while (it.hasNext()) {
            Reference reference2 = this.mReferences.get(it.next());
            if (reference2 != this.mParent) {
                ConstraintWidget constraintWidget = reference2.getConstraintWidget();
                constraintWidget.setDebugName(reference2.getKey().toString());
                constraintWidget.setParent(null);
                if (reference2.getFacade() instanceof GuidelineReference) {
                    reference2.apply();
                }
                constraintWidgetContainer.add(constraintWidget);
            } else {
                reference2.setConstraintWidget(constraintWidgetContainer);
            }
        }
        Iterator<Object> it2 = this.mHelperReferences.keySet().iterator();
        while (it2.hasNext()) {
            HelperReference helperReference2 = this.mHelperReferences.get(it2.next());
            if (helperReference2.getHelperWidget() != null) {
                ArrayList<Object> arrayList = helperReference2.mReferences;
                int size = arrayList.size();
                int i9 = 0;
                while (i9 < size) {
                    Object obj3 = arrayList.get(i9);
                    i9++;
                    helperReference2.getHelperWidget().add(this.mReferences.get(obj3).getConstraintWidget());
                }
                helperReference2.apply();
            } else {
                helperReference2.apply();
            }
        }
        Iterator<Object> it3 = this.mReferences.keySet().iterator();
        while (it3.hasNext()) {
            Reference reference3 = this.mReferences.get(it3.next());
            if (reference3 != this.mParent && (reference3.getFacade() instanceof HelperReference) && (helperWidget = (helperReference = (HelperReference) reference3.getFacade()).getHelperWidget()) != null) {
                ArrayList<Object> arrayList2 = helperReference.mReferences;
                int size2 = arrayList2.size();
                int i10 = 0;
                while (i10 < size2) {
                    Object obj4 = arrayList2.get(i10);
                    i10++;
                    Reference reference4 = this.mReferences.get(obj4);
                    if (reference4 != null) {
                        helperWidget.add(reference4.getConstraintWidget());
                    } else if (obj4 instanceof Reference) {
                        helperWidget.add(((Reference) obj4).getConstraintWidget());
                    } else {
                        System.out.println("couldn't find reference for " + obj4);
                    }
                }
                reference3.apply();
            }
        }
        for (Object obj5 : this.mReferences.keySet()) {
            Reference reference5 = this.mReferences.get(obj5);
            reference5.apply();
            ConstraintWidget constraintWidget2 = reference5.getConstraintWidget();
            if (constraintWidget2 != null && obj5 != null) {
                constraintWidget2.stringId = obj5.toString();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public BarrierReference barrier(Object obj, State$Direction state$Direction) {
        ConstraintReference constraintReferenceConstraints = constraints(obj);
        if (constraintReferenceConstraints.getFacade() == null || !(constraintReferenceConstraints.getFacade() instanceof BarrierReference)) {
            BarrierReference barrierReference = new BarrierReference(this);
            barrierReference.setBarrierDirection(state$Direction);
            constraintReferenceConstraints.setFacade(barrierReference);
        }
        return (BarrierReference) constraintReferenceConstraints.getFacade();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void baselineNeededFor(Object obj) {
        this.mBaselineNeeded.add(obj);
        this.mDirtyBaselineNeededWidgets = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AlignHorizontallyReference centerHorizontally(Object... objArr) {
        AlignHorizontallyReference alignHorizontallyReference = (AlignHorizontallyReference) helper(null, State$Helper.ALIGN_HORIZONTALLY);
        alignHorizontallyReference.add(objArr);
        return alignHorizontallyReference;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AlignVerticallyReference centerVertically(Object... objArr) {
        AlignVerticallyReference alignVerticallyReference = (AlignVerticallyReference) helper(null, State$Helper.ALIGN_VERTICALLY);
        alignVerticallyReference.add(objArr);
        return alignVerticallyReference;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintReference constraints(Object obj) {
        Reference referenceCreateConstraintReference = this.mReferences.get(obj);
        if (referenceCreateConstraintReference == null) {
            referenceCreateConstraintReference = createConstraintReference(obj);
            this.mReferences.put(obj, referenceCreateConstraintReference);
            referenceCreateConstraintReference.setKey(obj);
        }
        if (referenceCreateConstraintReference instanceof ConstraintReference) {
            return (ConstraintReference) referenceCreateConstraintReference;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int convertDimension(Object obj) {
        if (obj instanceof Float) {
            return Math.round(((Float) obj).floatValue());
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintReference createConstraintReference(Object obj) {
        return new ConstraintReference(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void directMapping() {
        for (Object obj : this.mReferences.keySet()) {
            ConstraintReference constraintReferenceConstraints = constraints(obj);
            if (constraintReferenceConstraints != null) {
                constraintReferenceConstraints.setView(obj);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CorePixelDp getDpToPixel() {
        return this.mDpToPixel;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlowReference getFlow(Object obj, boolean z8) {
        ConstraintReference constraintReferenceConstraints = constraints(obj);
        if (constraintReferenceConstraints.getFacade() == null || !(constraintReferenceConstraints.getFacade() instanceof FlowReference)) {
            constraintReferenceConstraints.setFacade(z8 ? new FlowReference(this, State$Helper.VERTICAL_FLOW) : new FlowReference(this, State$Helper.HORIZONTAL_FLOW));
        }
        return (FlowReference) constraintReferenceConstraints.getFacade();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public GridReference getGrid(@NonNull Object obj, @NonNull String str) {
        ConstraintReference constraintReferenceConstraints = constraints(obj);
        if (constraintReferenceConstraints.getFacade() == null || !(constraintReferenceConstraints.getFacade() instanceof GridReference)) {
            State$Helper state$Helper = State$Helper.GRID;
            if (str.charAt(0) == 'r') {
                state$Helper = State$Helper.ROW;
            } else if (str.charAt(0) == 'c') {
                state$Helper = State$Helper.COLUMN;
            }
            constraintReferenceConstraints.setFacade(new GridReference(this, state$Helper));
        }
        return (GridReference) constraintReferenceConstraints.getFacade();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlowReference getHorizontalFlow(Object... objArr) {
        FlowReference flowReference = (FlowReference) helper(null, State$Helper.HORIZONTAL_FLOW);
        flowReference.add(objArr);
        return flowReference;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayList<String> getIdsForTag(String str) {
        if (this.mTags.containsKey(str)) {
            return this.mTags.get(str);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlowReference getVerticalFlow(Object... objArr) {
        FlowReference flowReference = (FlowReference) helper(null, State$Helper.VERTICAL_FLOW);
        flowReference.add(objArr);
        return flowReference;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public GuidelineReference guideline(Object obj, int i9) {
        ConstraintReference constraintReferenceConstraints = constraints(obj);
        if (constraintReferenceConstraints.getFacade() == null || !(constraintReferenceConstraints.getFacade() instanceof GuidelineReference)) {
            GuidelineReference guidelineReference = new GuidelineReference(this);
            guidelineReference.setOrientation(i9);
            guidelineReference.setKey(obj);
            constraintReferenceConstraints.setFacade(guidelineReference);
        }
        return (GuidelineReference) constraintReferenceConstraints.getFacade();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public State height(Dimension dimension) {
        return setHeight(dimension);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public HelperReference helper(Object obj, State$Helper state$Helper) {
        if (obj == null) {
            obj = createHelperKey();
        }
        HelperReference horizontalChainReference = this.mHelperReferences.get(obj);
        if (horizontalChainReference == null) {
            switch (state$Helper.ordinal()) {
                case 0:
                    horizontalChainReference = new HorizontalChainReference(this);
                    break;
                case 1:
                    horizontalChainReference = new VerticalChainReference(this);
                    break;
                case 2:
                    horizontalChainReference = new AlignHorizontallyReference(this);
                    break;
                case 3:
                    horizontalChainReference = new AlignVerticallyReference(this);
                    break;
                case 4:
                    horizontalChainReference = new BarrierReference(this);
                    break;
                case 5:
                default:
                    horizontalChainReference = new HelperReference(this, state$Helper);
                    break;
                case 6:
                case 7:
                    horizontalChainReference = new FlowReference(this, state$Helper);
                    break;
                case 8:
                case 9:
                case 10:
                    horizontalChainReference = new GridReference(this, state$Helper);
                    break;
            }
            horizontalChainReference.setKey(obj);
            this.mHelperReferences.put(obj, horizontalChainReference);
        }
        return horizontalChainReference;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public HorizontalChainReference horizontalChain(Object... objArr) {
        HorizontalChainReference horizontalChainReference = (HorizontalChainReference) helper(null, State$Helper.HORIZONTAL_CHAIN);
        horizontalChainReference.add(objArr);
        return horizontalChainReference;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public GuidelineReference horizontalGuideline(Object obj) {
        return guideline(obj, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isBaselineNeeded(ConstraintWidget constraintWidget) {
        if (this.mDirtyBaselineNeededWidgets) {
            this.mBaselineNeededWidgets.clear();
            ArrayList<Object> arrayList = this.mBaselineNeeded;
            int size = arrayList.size();
            int i9 = 0;
            while (i9 < size) {
                Object obj = arrayList.get(i9);
                i9++;
                ConstraintWidget constraintWidget2 = this.mReferences.get(obj).getConstraintWidget();
                if (constraintWidget2 != null) {
                    this.mBaselineNeededWidgets.add(constraintWidget2);
                }
            }
            this.mDirtyBaselineNeededWidgets = false;
        }
        return this.mBaselineNeededWidgets.contains(constraintWidget);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public boolean isLtr() {
        return this.mIsLtr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isRtl() {
        return !this.mIsLtr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void map(Object obj, Object obj2) {
        ConstraintReference constraintReferenceConstraints = constraints(obj);
        if (constraintReferenceConstraints != null) {
            constraintReferenceConstraints.setView(obj2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Reference reference(Object obj) {
        return this.mReferences.get(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void reset() {
        Iterator<Object> it = this.mReferences.keySet().iterator();
        while (it.hasNext()) {
            this.mReferences.get(it.next()).getConstraintWidget().reset();
        }
        this.mReferences.clear();
        this.mReferences.put(PARENT, this.mParent);
        this.mHelperReferences.clear();
        this.mTags.clear();
        this.mBaselineNeeded.clear();
        this.mDirtyBaselineNeededWidgets = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean sameFixedHeight(int i9) {
        return this.mParent.getHeight().equalsFixedValue(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean sameFixedWidth(int i9) {
        return this.mParent.getWidth().equalsFixedValue(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDpToPixel(CorePixelDp corePixelDp) {
        this.mDpToPixel = corePixelDp;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public State setHeight(Dimension dimension) {
        this.mParent.setHeight(dimension);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setLtr(boolean z8) {
        this.mIsLtr = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRtl(boolean z8) {
        this.mIsLtr = !z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTag(String str, String str2) {
        ArrayList<String> arrayList;
        ConstraintReference constraintReferenceConstraints = constraints(str);
        if (constraintReferenceConstraints != null) {
            constraintReferenceConstraints.setTag(str2);
            if (this.mTags.containsKey(str2)) {
                arrayList = this.mTags.get(str2);
            } else {
                arrayList = new ArrayList<>();
                this.mTags.put(str2, arrayList);
            }
            arrayList.add(str);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public State setWidth(Dimension dimension) {
        this.mParent.setWidth(dimension);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public VerticalChainReference verticalChain(Object... objArr) {
        VerticalChainReference verticalChainReference = (VerticalChainReference) helper(null, State$Helper.VERTICAL_CHAIN);
        verticalChainReference.add(objArr);
        return verticalChainReference;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public GuidelineReference verticalGuideline(Object obj) {
        return guideline(obj, 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public State width(Dimension dimension) {
        return setWidth(dimension);
    }

    public FlowReference getHorizontalFlow() {
        return (FlowReference) helper(null, State$Helper.HORIZONTAL_FLOW);
    }

    public FlowReference getVerticalFlow() {
        return (FlowReference) helper(null, State$Helper.VERTICAL_FLOW);
    }

    public HorizontalChainReference horizontalChain() {
        return (HorizontalChainReference) helper(null, State$Helper.HORIZONTAL_CHAIN);
    }

    public VerticalChainReference verticalChain() {
        return (VerticalChainReference) helper(null, State$Helper.VERTICAL_CHAIN);
    }
}

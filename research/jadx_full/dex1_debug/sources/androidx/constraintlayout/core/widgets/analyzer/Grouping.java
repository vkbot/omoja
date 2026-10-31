package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.Metrics;
import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintAnchor$Type;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Flow;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.HelperWidget;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Grouping {
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_GROUPING = false;
    private static final boolean FORCE_USE = true;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static WidgetGroup findDependents(ConstraintWidget constraintWidget, int i9, ArrayList<WidgetGroup> arrayList, WidgetGroup widgetGroup) {
        int iFindGroupInDependents;
        int i10 = i9 == 0 ? constraintWidget.horizontalGroup : constraintWidget.verticalGroup;
        if (i10 != -1 && (widgetGroup == null || i10 != widgetGroup.getId())) {
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                WidgetGroup widgetGroup2 = arrayList.get(i11);
                if (widgetGroup2.getId() == i10) {
                    if (widgetGroup != null) {
                        widgetGroup.moveTo(i9, widgetGroup2);
                        arrayList.remove(widgetGroup);
                    }
                    widgetGroup = widgetGroup2;
                    break;
                }
            }
        } else if (i10 != -1) {
            return widgetGroup;
        }
        if (widgetGroup == null) {
            if ((constraintWidget instanceof HelperWidget) && (iFindGroupInDependents = ((HelperWidget) constraintWidget).findGroupInDependents(i9)) != -1) {
                for (int i12 = 0; i12 < arrayList.size(); i12++) {
                    WidgetGroup widgetGroup3 = arrayList.get(i12);
                    if (widgetGroup3.getId() == iFindGroupInDependents) {
                        widgetGroup = widgetGroup3;
                        break;
                    }
                }
            }
            if (widgetGroup == null) {
                widgetGroup = new WidgetGroup(i9);
            }
            arrayList.add(widgetGroup);
        }
        if (widgetGroup.add(constraintWidget)) {
            if (constraintWidget instanceof Guideline) {
                Guideline guideline = (Guideline) constraintWidget;
                guideline.getAnchor().findDependents(guideline.getOrientation() == 0 ? 1 : 0, arrayList, widgetGroup);
            }
            if (i9 == 0) {
                constraintWidget.horizontalGroup = widgetGroup.getId();
                constraintWidget.mLeft.findDependents(i9, arrayList, widgetGroup);
                constraintWidget.mRight.findDependents(i9, arrayList, widgetGroup);
            } else {
                constraintWidget.verticalGroup = widgetGroup.getId();
                constraintWidget.mTop.findDependents(i9, arrayList, widgetGroup);
                constraintWidget.mBaseline.findDependents(i9, arrayList, widgetGroup);
                constraintWidget.mBottom.findDependents(i9, arrayList, widgetGroup);
            }
            constraintWidget.mCenter.findDependents(i9, arrayList, widgetGroup);
        }
        return widgetGroup;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static WidgetGroup findGroup(ArrayList<WidgetGroup> arrayList, int i9) {
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            WidgetGroup widgetGroup = arrayList.get(i10);
            if (i9 == widgetGroup.getId()) {
                return widgetGroup;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:168:0x034c  */
    public static boolean simpleSolvingPass(ConstraintWidgetContainer constraintWidgetContainer, BasicMeasure$Measurer basicMeasure$Measurer) {
        WidgetGroup widgetGroup;
        boolean z8;
        WidgetGroup widgetGroup2;
        ArrayList<ConstraintWidget> children = constraintWidgetContainer.getChildren();
        int size = children.size();
        int i9 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            ConstraintWidget constraintWidget = children.get(i10);
            if (!validInGroup(constraintWidgetContainer.getHorizontalDimensionBehaviour(), constraintWidgetContainer.getVerticalDimensionBehaviour(), constraintWidget.getHorizontalDimensionBehaviour(), constraintWidget.getVerticalDimensionBehaviour()) || (constraintWidget instanceof Flow)) {
                return false;
            }
        }
        Metrics metrics = constraintWidgetContainer.mMetrics;
        if (metrics != null) {
            metrics.grouping++;
        }
        int i11 = 0;
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        ArrayList arrayList3 = null;
        ArrayList arrayList4 = null;
        ArrayList arrayList5 = null;
        ArrayList arrayList6 = null;
        while (i11 < size) {
            ConstraintWidget constraintWidget2 = children.get(i11);
            if (!validInGroup(constraintWidgetContainer.getHorizontalDimensionBehaviour(), constraintWidgetContainer.getVerticalDimensionBehaviour(), constraintWidget2.getHorizontalDimensionBehaviour(), constraintWidget2.getVerticalDimensionBehaviour())) {
                ConstraintWidgetContainer.measure(i9, constraintWidget2, basicMeasure$Measurer, constraintWidgetContainer.mMeasure, BasicMeasure$Measure.SELF_DIMENSIONS);
            }
            boolean z9 = constraintWidget2 instanceof Guideline;
            if (z9) {
                Guideline guideline = (Guideline) constraintWidget2;
                if (guideline.getOrientation() == 0) {
                    if (arrayList3 == null) {
                        arrayList3 = new ArrayList();
                    }
                    arrayList3.add(guideline);
                }
                if (guideline.getOrientation() == 1) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(guideline);
                }
            }
            if (constraintWidget2 instanceof HelperWidget) {
                if (constraintWidget2 instanceof Barrier) {
                    Barrier barrier = (Barrier) constraintWidget2;
                    if (barrier.getOrientation() == 0) {
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(barrier);
                    }
                    if (barrier.getOrientation() == 1) {
                        if (arrayList4 == null) {
                            arrayList4 = new ArrayList();
                        }
                        arrayList4.add(barrier);
                    }
                } else {
                    HelperWidget helperWidget = (HelperWidget) constraintWidget2;
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(helperWidget);
                    if (arrayList4 == null) {
                        arrayList4 = new ArrayList();
                    }
                    arrayList4.add(helperWidget);
                }
            }
            if (constraintWidget2.mLeft.mTarget == null && constraintWidget2.mRight.mTarget == null && !z9 && !(constraintWidget2 instanceof Barrier)) {
                if (arrayList5 == null) {
                    arrayList5 = new ArrayList();
                }
                arrayList5.add(constraintWidget2);
            }
            if (constraintWidget2.mTop.mTarget == null && constraintWidget2.mBottom.mTarget == null && constraintWidget2.mBaseline.mTarget == null && !z9 && !(constraintWidget2 instanceof Barrier)) {
                if (arrayList6 == null) {
                    arrayList6 = new ArrayList();
                }
                arrayList6.add(constraintWidget2);
            }
            i11++;
            i9 = 0;
        }
        ArrayList<WidgetGroup> arrayList7 = new ArrayList<>();
        if (arrayList != null) {
            int size2 = arrayList.size();
            int i12 = 0;
            while (i12 < size2) {
                Object obj = arrayList.get(i12);
                i12++;
                findDependents((Guideline) obj, 0, arrayList7, null);
            }
        }
        if (arrayList2 != null) {
            int size3 = arrayList2.size();
            int i13 = 0;
            while (i13 < size3) {
                Object obj2 = arrayList2.get(i13);
                i13++;
                HelperWidget helperWidget2 = (HelperWidget) obj2;
                WidgetGroup widgetGroupFindDependents = findDependents(helperWidget2, 0, arrayList7, null);
                helperWidget2.addDependents(arrayList7, 0, widgetGroupFindDependents);
                widgetGroupFindDependents.cleanup(arrayList7);
            }
        }
        ConstraintAnchor anchor = constraintWidgetContainer.getAnchor(ConstraintAnchor$Type.LEFT);
        if (anchor.getDependents() != null) {
            Iterator<ConstraintAnchor> it = anchor.getDependents().iterator();
            while (it.hasNext()) {
                findDependents(it.next().mOwner, 0, arrayList7, null);
            }
        }
        ConstraintAnchor anchor2 = constraintWidgetContainer.getAnchor(ConstraintAnchor$Type.RIGHT);
        if (anchor2.getDependents() != null) {
            Iterator<ConstraintAnchor> it2 = anchor2.getDependents().iterator();
            while (it2.hasNext()) {
                findDependents(it2.next().mOwner, 0, arrayList7, null);
            }
        }
        ConstraintAnchor anchor3 = constraintWidgetContainer.getAnchor(ConstraintAnchor$Type.CENTER);
        if (anchor3.getDependents() != null) {
            Iterator<ConstraintAnchor> it3 = anchor3.getDependents().iterator();
            while (it3.hasNext()) {
                findDependents(it3.next().mOwner, 0, arrayList7, null);
            }
        }
        if (arrayList5 != null) {
            int size4 = arrayList5.size();
            int i14 = 0;
            while (i14 < size4) {
                Object obj3 = arrayList5.get(i14);
                i14++;
                findDependents((ConstraintWidget) obj3, 0, arrayList7, null);
            }
        }
        if (arrayList3 != null) {
            int size5 = arrayList3.size();
            int i15 = 0;
            while (i15 < size5) {
                Object obj4 = arrayList3.get(i15);
                i15++;
                findDependents((Guideline) obj4, 1, arrayList7, null);
            }
        }
        if (arrayList4 != null) {
            int size6 = arrayList4.size();
            int i16 = 0;
            while (i16 < size6) {
                Object obj5 = arrayList4.get(i16);
                i16++;
                HelperWidget helperWidget3 = (HelperWidget) obj5;
                WidgetGroup widgetGroupFindDependents2 = findDependents(helperWidget3, 1, arrayList7, null);
                helperWidget3.addDependents(arrayList7, 1, widgetGroupFindDependents2);
                widgetGroupFindDependents2.cleanup(arrayList7);
            }
        }
        ConstraintAnchor anchor4 = constraintWidgetContainer.getAnchor(ConstraintAnchor$Type.TOP);
        if (anchor4.getDependents() != null) {
            Iterator<ConstraintAnchor> it4 = anchor4.getDependents().iterator();
            while (it4.hasNext()) {
                findDependents(it4.next().mOwner, 1, arrayList7, null);
            }
        }
        ConstraintAnchor anchor5 = constraintWidgetContainer.getAnchor(ConstraintAnchor$Type.BASELINE);
        if (anchor5.getDependents() != null) {
            Iterator<ConstraintAnchor> it5 = anchor5.getDependents().iterator();
            while (it5.hasNext()) {
                findDependents(it5.next().mOwner, 1, arrayList7, null);
            }
        }
        ConstraintAnchor anchor6 = constraintWidgetContainer.getAnchor(ConstraintAnchor$Type.BOTTOM);
        if (anchor6.getDependents() != null) {
            Iterator<ConstraintAnchor> it6 = anchor6.getDependents().iterator();
            while (it6.hasNext()) {
                findDependents(it6.next().mOwner, 1, arrayList7, null);
            }
        }
        ConstraintAnchor anchor7 = constraintWidgetContainer.getAnchor(ConstraintAnchor$Type.CENTER);
        if (anchor7.getDependents() != null) {
            Iterator<ConstraintAnchor> it7 = anchor7.getDependents().iterator();
            while (it7.hasNext()) {
                findDependents(it7.next().mOwner, 1, arrayList7, null);
            }
        }
        if (arrayList6 != null) {
            int size7 = arrayList6.size();
            int i17 = 0;
            while (i17 < size7) {
                Object obj6 = arrayList6.get(i17);
                i17++;
                findDependents((ConstraintWidget) obj6, 1, arrayList7, null);
            }
        }
        for (int i18 = 0; i18 < size; i18++) {
            ConstraintWidget constraintWidget3 = children.get(i18);
            if (constraintWidget3.oppositeDimensionsTied()) {
                WidgetGroup widgetGroupFindGroup = findGroup(arrayList7, constraintWidget3.horizontalGroup);
                WidgetGroup widgetGroupFindGroup2 = findGroup(arrayList7, constraintWidget3.verticalGroup);
                if (widgetGroupFindGroup != null && widgetGroupFindGroup2 != null) {
                    widgetGroupFindGroup.moveTo(0, widgetGroupFindGroup2);
                    widgetGroupFindGroup2.setOrientation(2);
                    arrayList7.remove(widgetGroupFindGroup);
                }
            }
        }
        if (arrayList7.size() <= 1) {
            return false;
        }
        if (constraintWidgetContainer.getHorizontalDimensionBehaviour() == ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
            int size8 = arrayList7.size();
            widgetGroup = null;
            int i19 = 0;
            int i20 = 0;
            while (i20 < size8) {
                WidgetGroup widgetGroup3 = arrayList7.get(i20);
                i20++;
                WidgetGroup widgetGroup4 = widgetGroup3;
                if (widgetGroup4.getOrientation() != 1) {
                    widgetGroup4.setAuthoritative(false);
                    int iMeasureWrap = widgetGroup4.measureWrap(constraintWidgetContainer.getSystem(), 0);
                    if (iMeasureWrap > i19) {
                        widgetGroup = widgetGroup4;
                        i19 = iMeasureWrap;
                    }
                }
            }
            if (widgetGroup != null) {
                constraintWidgetContainer.setHorizontalDimensionBehaviour(ConstraintWidget$DimensionBehaviour.FIXED);
                constraintWidgetContainer.setWidth(i19);
                widgetGroup.setAuthoritative(true);
            } else {
                widgetGroup = null;
            }
        } else {
            widgetGroup = null;
        }
        if (constraintWidgetContainer.getVerticalDimensionBehaviour() == ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
            int size9 = arrayList7.size();
            widgetGroup2 = null;
            int i21 = 0;
            int i22 = 0;
            while (i21 < size9) {
                WidgetGroup widgetGroup5 = arrayList7.get(i21);
                i21++;
                WidgetGroup widgetGroup6 = widgetGroup5;
                if (widgetGroup6.getOrientation() != 0) {
                    widgetGroup6.setAuthoritative(false);
                    int iMeasureWrap2 = widgetGroup6.measureWrap(constraintWidgetContainer.getSystem(), 1);
                    if (iMeasureWrap2 > i22) {
                        widgetGroup2 = widgetGroup6;
                        i22 = iMeasureWrap2;
                    }
                }
            }
            z8 = true;
            if (widgetGroup2 != null) {
                constraintWidgetContainer.setVerticalDimensionBehaviour(ConstraintWidget$DimensionBehaviour.FIXED);
                constraintWidgetContainer.setHeight(i22);
                widgetGroup2.setAuthoritative(true);
            }
            if (widgetGroup == null || widgetGroup2 != null) {
                return z8;
            }
            return false;
        }
        z8 = true;
        widgetGroup2 = null;
        if (widgetGroup == null) {
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean validInGroup(ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour, ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2, ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3, ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4) {
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour5;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour6;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour7 = ConstraintWidget$DimensionBehaviour.FIXED;
        return (constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour7 || constraintWidget$DimensionBehaviour3 == (constraintWidget$DimensionBehaviour6 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) || (constraintWidget$DimensionBehaviour3 == ConstraintWidget$DimensionBehaviour.MATCH_PARENT && constraintWidget$DimensionBehaviour != constraintWidget$DimensionBehaviour6)) || (constraintWidget$DimensionBehaviour4 == constraintWidget$DimensionBehaviour7 || constraintWidget$DimensionBehaviour4 == (constraintWidget$DimensionBehaviour5 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) || (constraintWidget$DimensionBehaviour4 == ConstraintWidget$DimensionBehaviour.MATCH_PARENT && constraintWidget$DimensionBehaviour2 != constraintWidget$DimensionBehaviour5));
    }
}

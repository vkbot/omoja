package androidx.constraintlayout.core.state;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.utils.TypedBundle;
import androidx.constraintlayout.core.motion.utils.TypedValues$AttributesType;
import androidx.constraintlayout.core.motion.utils.TypedValues$Custom;
import androidx.constraintlayout.core.motion.utils.TypedValues$CycleType;
import androidx.constraintlayout.core.motion.utils.TypedValues$PositionType;
import androidx.constraintlayout.core.motion.utils.TypedValues$TransitionType;
import androidx.constraintlayout.core.parser.CLArray;
import androidx.constraintlayout.core.parser.CLContainer;
import androidx.constraintlayout.core.parser.CLElement;
import androidx.constraintlayout.core.parser.CLKey;
import androidx.constraintlayout.core.parser.CLNumber;
import androidx.constraintlayout.core.parser.CLObject;
import androidx.constraintlayout.core.parser.CLParsingException;
import java.lang.reflect.Array;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class TransitionParser {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void map(TypedBundle typedBundle, int i9, String str, String... strArr) {
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if (strArr[i10].equals(str)) {
                typedBundle.add(i9, i10);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static void parse(@NonNull CLObject cLObject, @NonNull Transition transition) throws CLParsingException {
        transition.resetProperties();
        String stringOrNull = cLObject.getStringOrNull(TypedValues$TransitionType.S_PATH_MOTION_ARC);
        TypedBundle typedBundle = new TypedBundle();
        boolean z8 = true;
        boolean z9 = false;
        if (stringOrNull != null) {
            switch (stringOrNull) {
                case "startVertical":
                    typedBundle.add(509, 1);
                    break;
                case "startHorizontal":
                    typedBundle.add(509, 2);
                    break;
                case "flip":
                    typedBundle.add(509, 3);
                    break;
                case "none":
                    typedBundle.add(509, 0);
                    break;
                case "above":
                    typedBundle.add(509, 5);
                    break;
                case "below":
                    typedBundle.add(509, 4);
                    break;
            }
            z9 = true;
        }
        String stringOrNull2 = cLObject.getStringOrNull("interpolator");
        if (stringOrNull2 != null) {
            typedBundle.add(TypedValues$TransitionType.TYPE_INTERPOLATOR, stringOrNull2);
            z9 = true;
        }
        float floatOrNaN = cLObject.getFloatOrNaN(TypedValues$TransitionType.S_STAGGERED);
        if (Float.isNaN(floatOrNaN)) {
            z8 = z9;
        } else {
            typedBundle.add(TypedValues$TransitionType.TYPE_STAGGERED, floatOrNaN);
        }
        if (z8) {
            transition.setTransitionProperties(typedBundle);
        }
        CLObject objectOrNull = cLObject.getObjectOrNull("onSwipe");
        if (objectOrNull != null) {
            parseOnSwipe(objectOrNull, transition);
        }
        parseKeyFrames(cLObject, transition);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void parseKeyAttribute(CLObject cLObject, Transition transition) throws CLParsingException {
        CLArray arrayOrNull;
        CustomVariable[][] customVariableArr;
        CLObject cLObject2;
        String[] strArr;
        CLArray arrayOrNull2 = cLObject.getArrayOrNull(TypedValues$AttributesType.S_TARGET);
        if (arrayOrNull2 == null || (arrayOrNull = cLObject.getArrayOrNull("frames")) == null) {
            return;
        }
        String stringOrNull = cLObject.getStringOrNull("transitionEasing");
        String[] strArr2 = {"scaleX", "scaleY", "translationX", "translationY", "translationZ", "rotationX", "rotationY", "rotationZ", "alpha"};
        int[] iArr = {311, 312, 304, 305, 306, 308, 309, 310, 303};
        boolean[] zArr = {false, false, true, true, true, false, false, false, false};
        int size = arrayOrNull.size();
        TypedBundle[] typedBundleArr = new TypedBundle[size];
        for (int i9 = 0; i9 < arrayOrNull.size(); i9++) {
            typedBundleArr[i9] = new TypedBundle();
        }
        int i10 = 0;
        for (int i11 = 9; i10 < i11; i11 = 9) {
            String str = strArr2[i10];
            int i12 = iArr[i10];
            boolean z8 = zArr[i10];
            CLArray arrayOrNull3 = cLObject.getArrayOrNull(str);
            if (arrayOrNull3 != null && arrayOrNull3.size() != size) {
                throw new CLParsingException(ai.onnxruntime.a.m("incorrect size for ", str, " array, not matching targets array!"), cLObject);
            }
            if (arrayOrNull3 != null) {
                int i13 = 0;
                while (i13 < size) {
                    float pixels = arrayOrNull3.getFloat(i13);
                    String[] strArr3 = strArr2;
                    if (z8) {
                        pixels = transition.mToPixel.toPixels(pixels);
                    }
                    typedBundleArr[i13].add(i12, pixels);
                    i13++;
                    strArr2 = strArr3;
                }
                strArr = strArr2;
            } else {
                strArr = strArr2;
                float floatOrNaN = cLObject.getFloatOrNaN(str);
                if (!Float.isNaN(floatOrNaN)) {
                    if (z8) {
                        floatOrNaN = transition.mToPixel.toPixels(floatOrNaN);
                    }
                    for (int i14 = 0; i14 < size; i14++) {
                        typedBundleArr[i14].add(i12, floatOrNaN);
                    }
                }
            }
            i10++;
            strArr2 = strArr;
        }
        int i15 = 0;
        CLElement orNull = cLObject.getOrNull("custom");
        if (orNull == null || !(orNull instanceof CLObject)) {
            customVariableArr = null;
        } else {
            CLObject cLObject3 = (CLObject) orNull;
            int size2 = cLObject3.size();
            customVariableArr = (CustomVariable[][]) Array.newInstance((Class<?>) CustomVariable.class, arrayOrNull.size(), size2);
            int i16 = 0;
            while (i16 < size2) {
                CLKey cLKey = (CLKey) cLObject3.get(i16);
                String strContent = cLKey.content();
                if (cLKey.getValue() instanceof CLArray) {
                    CLArray cLArray = (CLArray) cLKey.getValue();
                    int size3 = cLArray.size();
                    if (size3 != size || size3 <= 0) {
                        cLObject2 = cLObject3;
                    } else {
                        int i17 = i15;
                        if (cLArray.get(i17) instanceof CLNumber) {
                            int i18 = i17;
                            while (i18 < size) {
                                customVariableArr[i18][i16] = new CustomVariable(strContent, TypedValues$Custom.TYPE_FLOAT, cLArray.get(i18).getFloat());
                                i18++;
                                cLObject3 = cLObject3;
                            }
                            cLObject2 = cLObject3;
                        } else {
                            cLObject2 = cLObject3;
                            for (int i19 = 0; i19 < size; i19++) {
                                long colorString = ConstraintSetParser.parseColorString(cLArray.get(i19).content());
                                if (colorString != -1) {
                                    customVariableArr[i19][i16] = new CustomVariable(strContent, TypedValues$Custom.TYPE_COLOR, (int) colorString);
                                }
                            }
                        }
                    }
                } else {
                    cLObject2 = cLObject3;
                    CLElement value = cLKey.getValue();
                    if (value instanceof CLNumber) {
                        float f8 = value.getFloat();
                        for (int i20 = 0; i20 < size; i20++) {
                            customVariableArr[i20][i16] = new CustomVariable(strContent, TypedValues$Custom.TYPE_FLOAT, f8);
                        }
                    } else {
                        long colorString2 = ConstraintSetParser.parseColorString(value.content());
                        if (colorString2 != -1) {
                            int i21 = 0;
                            while (i21 < size) {
                                customVariableArr[i21][i16] = new CustomVariable(strContent, TypedValues$Custom.TYPE_COLOR, (int) colorString2);
                                i21++;
                                size2 = size2;
                                colorString2 = colorString2;
                            }
                        }
                    }
                }
                i16++;
                size2 = size2;
                cLObject3 = cLObject2;
                i15 = 0;
            }
        }
        String stringOrNull2 = cLObject.getStringOrNull("curveFit");
        for (int i22 = 0; i22 < arrayOrNull2.size(); i22++) {
            for (int i23 = 0; i23 < size; i23++) {
                String string = arrayOrNull2.getString(i22);
                TypedBundle typedBundle = typedBundleArr[i23];
                if (stringOrNull2 != null) {
                    typedBundle.add(TypedValues$PositionType.TYPE_CURVE_FIT, map(stringOrNull2, "spline", "linear"));
                }
                typedBundle.addIfNotNull(TypedValues$PositionType.TYPE_TRANSITION_EASING, stringOrNull);
                typedBundle.add(100, arrayOrNull.getInt(i23));
                transition.addKeyAttribute(string, typedBundle, customVariableArr != null ? customVariableArr[i23] : null);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void parseKeyCycle(CLObject cLObject, Transition transition) throws CLParsingException {
        int[] iArr;
        CLArray array = cLObject.getArray(TypedValues$AttributesType.S_TARGET);
        CLArray array2 = cLObject.getArray("frames");
        String stringOrNull = cLObject.getStringOrNull("transitionEasing");
        String[] strArr = {"scaleX", "scaleY", "translationX", "translationY", "translationZ", "rotationX", "rotationY", "rotationZ", "alpha", TypedValues$CycleType.S_WAVE_PERIOD, TypedValues$CycleType.S_WAVE_OFFSET, TypedValues$CycleType.S_WAVE_PHASE};
        int[] iArr2 = {311, 312, 304, 305, 306, 308, 309, 310, TypedValues$CycleType.TYPE_ALPHA, TypedValues$CycleType.TYPE_WAVE_PERIOD, TypedValues$CycleType.TYPE_WAVE_OFFSET, TypedValues$CycleType.TYPE_WAVE_PHASE};
        int[] iArr3 = {0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 2, 0};
        int size = array2.size();
        TypedBundle[] typedBundleArr = new TypedBundle[size];
        for (int i9 = 0; i9 < size; i9++) {
            typedBundleArr[i9] = new TypedBundle();
        }
        boolean z8 = false;
        for (int i10 = 0; i10 < 12; i10++) {
            if (cLObject.has(strArr[i10]) && iArr3[i10] == 1) {
                z8 = true;
            }
        }
        int i11 = 0;
        for (int i12 = 12; i11 < i12; i12 = 12) {
            String str = strArr[i11];
            int i13 = iArr2[i11];
            int i14 = iArr3[i11];
            CLArray arrayOrNull = cLObject.getArrayOrNull(str);
            String[] strArr2 = strArr;
            if (arrayOrNull != null && arrayOrNull.size() != size) {
                throw new CLParsingException("incorrect size for $attrName array, not matching targets array!", cLObject);
            }
            if (arrayOrNull != null) {
                int i15 = 0;
                while (i15 < size) {
                    float pixels = arrayOrNull.getFloat(i15);
                    int[] iArr4 = iArr2;
                    if (i14 == 1) {
                        pixels = transition.mToPixel.toPixels(pixels);
                    } else if (i14 == 2 && z8) {
                        pixels = transition.mToPixel.toPixels(pixels);
                    }
                    typedBundleArr[i15].add(i13, pixels);
                    i15++;
                    iArr2 = iArr4;
                }
                iArr = iArr2;
            } else {
                iArr = iArr2;
                float floatOrNaN = cLObject.getFloatOrNaN(str);
                if (!Float.isNaN(floatOrNaN)) {
                    if (i14 == 1) {
                        floatOrNaN = transition.mToPixel.toPixels(floatOrNaN);
                    } else if (i14 == 2 && z8) {
                        floatOrNaN = transition.mToPixel.toPixels(floatOrNaN);
                    }
                    for (int i16 = 0; i16 < size; i16++) {
                        typedBundleArr[i16].add(i13, floatOrNaN);
                    }
                }
            }
            i11++;
            strArr = strArr2;
            iArr2 = iArr;
        }
        String stringOrNull2 = cLObject.getStringOrNull("curveFit");
        String stringOrNull3 = cLObject.getStringOrNull("easing");
        String stringOrNull4 = cLObject.getStringOrNull("waveShape");
        String stringOrNull5 = cLObject.getStringOrNull(TypedValues$CycleType.S_CUSTOM_WAVE_SHAPE);
        for (int i17 = 0; i17 < array.size(); i17++) {
            for (int i18 = 0; i18 < size; i18++) {
                String string = array.getString(i17);
                TypedBundle typedBundle = typedBundleArr[i18];
                if (stringOrNull2 != null) {
                    if (stringOrNull2.equals("linear")) {
                        typedBundle.add(TypedValues$CycleType.TYPE_CURVE_FIT, 1);
                    } else if (stringOrNull2.equals("spline")) {
                        typedBundle.add(TypedValues$CycleType.TYPE_CURVE_FIT, 0);
                    }
                }
                typedBundle.addIfNotNull(TypedValues$PositionType.TYPE_TRANSITION_EASING, stringOrNull);
                if (stringOrNull3 != null) {
                    typedBundle.add(TypedValues$CycleType.TYPE_EASING, stringOrNull3);
                }
                if (stringOrNull4 != null) {
                    typedBundle.add(TypedValues$CycleType.TYPE_WAVE_SHAPE, stringOrNull4);
                }
                if (stringOrNull5 != null) {
                    typedBundle.add(TypedValues$CycleType.TYPE_CUSTOM_WAVE_SHAPE, stringOrNull5);
                }
                typedBundle.add(100, array2.getInt(i18));
                transition.addKeyCycle(string, typedBundle);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void parseKeyFrames(CLObject cLObject, Transition transition) throws CLParsingException {
        CLObject objectOrNull = cLObject.getObjectOrNull("KeyFrames");
        if (objectOrNull == null) {
            return;
        }
        CLArray arrayOrNull = objectOrNull.getArrayOrNull("KeyPositions");
        if (arrayOrNull != null) {
            for (int i9 = 0; i9 < arrayOrNull.size(); i9++) {
                CLElement cLElement = arrayOrNull.get(i9);
                if (cLElement instanceof CLObject) {
                    parseKeyPosition((CLObject) cLElement, transition);
                }
            }
        }
        CLArray arrayOrNull2 = objectOrNull.getArrayOrNull(TypedValues$AttributesType.NAME);
        if (arrayOrNull2 != null) {
            for (int i10 = 0; i10 < arrayOrNull2.size(); i10++) {
                CLElement cLElement2 = arrayOrNull2.get(i10);
                if (cLElement2 instanceof CLObject) {
                    parseKeyAttribute((CLObject) cLElement2, transition);
                }
            }
        }
        CLArray arrayOrNull3 = objectOrNull.getArrayOrNull("KeyCycles");
        if (arrayOrNull3 != null) {
            for (int i11 = 0; i11 < arrayOrNull3.size(); i11++) {
                CLElement cLElement3 = arrayOrNull3.get(i11);
                if (cLElement3 instanceof CLObject) {
                    parseKeyCycle((CLObject) cLElement3, transition);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void parseKeyPosition(CLObject cLObject, Transition transition) throws CLParsingException {
        TypedBundle typedBundle = new TypedBundle();
        CLArray array = cLObject.getArray(TypedValues$AttributesType.S_TARGET);
        CLArray array2 = cLObject.getArray("frames");
        CLArray arrayOrNull = cLObject.getArrayOrNull("percentX");
        CLArray arrayOrNull2 = cLObject.getArrayOrNull("percentY");
        CLArray arrayOrNull3 = cLObject.getArrayOrNull("percentWidth");
        CLArray arrayOrNull4 = cLObject.getArrayOrNull("percentHeight");
        String stringOrNull = cLObject.getStringOrNull(TypedValues$TransitionType.S_PATH_MOTION_ARC);
        String stringOrNull2 = cLObject.getStringOrNull("transitionEasing");
        String stringOrNull3 = cLObject.getStringOrNull("curveFit");
        String stringOrNull4 = cLObject.getStringOrNull("type");
        if (stringOrNull4 == null) {
            stringOrNull4 = "parentRelative";
        }
        if (arrayOrNull == null || array2.size() == arrayOrNull.size()) {
            if (arrayOrNull2 == null || array2.size() == arrayOrNull2.size()) {
                int i9 = 0;
                while (i9 < array.size()) {
                    String string = array.getString(i9);
                    int map = map(stringOrNull4, "deltaRelative", "pathRelative", "parentRelative");
                    typedBundle.clear();
                    typedBundle.add(TypedValues$PositionType.TYPE_POSITION_TYPE, map);
                    if (stringOrNull3 != null) {
                        map(typedBundle, TypedValues$PositionType.TYPE_CURVE_FIT, stringOrNull3, "spline", "linear");
                    }
                    typedBundle.addIfNotNull(TypedValues$PositionType.TYPE_TRANSITION_EASING, stringOrNull2);
                    if (stringOrNull != null) {
                        map(typedBundle, 509, stringOrNull, "none", "startVertical", "startHorizontal", "flip", "below", "above");
                    }
                    int i10 = 0;
                    while (i10 < array2.size()) {
                        typedBundle.add(100, array2.getInt(i10));
                        set(typedBundle, TypedValues$PositionType.TYPE_PERCENT_X, arrayOrNull, i10);
                        set(typedBundle, TypedValues$PositionType.TYPE_PERCENT_Y, arrayOrNull2, i10);
                        set(typedBundle, TypedValues$PositionType.TYPE_PERCENT_WIDTH, arrayOrNull3, i10);
                        set(typedBundle, TypedValues$PositionType.TYPE_PERCENT_HEIGHT, arrayOrNull4, i10);
                        transition.addKeyPosition(string, typedBundle);
                        i10++;
                        stringOrNull4 = stringOrNull4;
                    }
                    i9++;
                    stringOrNull4 = stringOrNull4;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void parseOnSwipe(CLContainer cLContainer, Transition transition) {
        String stringOrNull = cLContainer.getStringOrNull("anchor");
        int map = map(cLContainer.getStringOrNull("side"), Transition$OnSwipe.SIDES);
        int map2 = map(cLContainer.getStringOrNull("direction"), Transition$OnSwipe.DIRECTIONS);
        float floatOrNaN = cLContainer.getFloatOrNaN("scale");
        float floatOrNaN2 = cLContainer.getFloatOrNaN("threshold");
        float floatOrNaN3 = cLContainer.getFloatOrNaN("maxVelocity");
        float floatOrNaN4 = cLContainer.getFloatOrNaN("maxAccel");
        String stringOrNull2 = cLContainer.getStringOrNull("limitBounds");
        int map3 = map(cLContainer.getStringOrNull("mode"), Transition$OnSwipe.MODE);
        int map4 = map(cLContainer.getStringOrNull("touchUp"), Transition$OnSwipe.TOUCH_UP);
        float floatOrNaN5 = cLContainer.getFloatOrNaN("springMass");
        float floatOrNaN6 = cLContainer.getFloatOrNaN("springStiffness");
        float floatOrNaN7 = cLContainer.getFloatOrNaN("springDamping");
        float floatOrNaN8 = cLContainer.getFloatOrNaN("stopThreshold");
        int map5 = map(cLContainer.getStringOrNull("springBoundary"), Transition$OnSwipe.BOUNDARY);
        String stringOrNull3 = cLContainer.getStringOrNull("around");
        Transition$OnSwipe transition$OnSwipeCreateOnSwipe = transition.createOnSwipe();
        transition$OnSwipeCreateOnSwipe.setAnchorId(stringOrNull);
        transition$OnSwipeCreateOnSwipe.setAnchorSide(map);
        transition$OnSwipeCreateOnSwipe.setDragDirection(map2);
        transition$OnSwipeCreateOnSwipe.setDragScale(floatOrNaN);
        transition$OnSwipeCreateOnSwipe.setDragThreshold(floatOrNaN2);
        transition$OnSwipeCreateOnSwipe.setMaxVelocity(floatOrNaN3);
        transition$OnSwipeCreateOnSwipe.setMaxAcceleration(floatOrNaN4);
        transition$OnSwipeCreateOnSwipe.setLimitBoundsTo(stringOrNull2);
        transition$OnSwipeCreateOnSwipe.setAutoCompleteMode(map3);
        transition$OnSwipeCreateOnSwipe.setOnTouchUp(map4);
        transition$OnSwipeCreateOnSwipe.setSpringMass(floatOrNaN5);
        transition$OnSwipeCreateOnSwipe.setSpringStiffness(floatOrNaN6);
        transition$OnSwipeCreateOnSwipe.setSpringDamping(floatOrNaN7);
        transition$OnSwipeCreateOnSwipe.setSpringStopThreshold(floatOrNaN8);
        transition$OnSwipeCreateOnSwipe.setSpringBoundary(map5);
        transition$OnSwipeCreateOnSwipe.setRotationCenterId(stringOrNull3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void set(TypedBundle typedBundle, int i9, CLArray cLArray, int i10) {
        if (cLArray != null) {
            typedBundle.add(i9, cLArray.getFloat(i10));
        }
    }

    private static int map(String str, String... strArr) {
        for (int i9 = 0; i9 < strArr.length; i9++) {
            if (strArr[i9].equals(str)) {
                return i9;
            }
        }
        return 0;
    }

    @Deprecated
    public static void parse(CLObject cLObject, Transition transition, CorePixelDp corePixelDp) throws CLParsingException {
        parse(cLObject, transition);
    }
}

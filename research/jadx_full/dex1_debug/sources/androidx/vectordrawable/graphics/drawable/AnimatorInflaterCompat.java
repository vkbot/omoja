package androidx.vectordrawable.graphics.drawable;

import ai.onnxruntime.a;
import ai.onnxruntime.b;
import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources$NotFoundException;
import android.content.res.Resources$Theme;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import androidx.annotation.AnimatorRes;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.constraintlayout.core.motion.utils.TypedValues$TransitionType;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import androidx.core.graphics.PathParser$PathDataNode;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
public class AnimatorInflaterCompat {
    private static final boolean DBG_ANIMATOR_INFLATER = false;
    private static final int MAX_NUM_POINTS = 100;
    private static final String TAG = "AnimatorInflater";
    private static final int TOGETHER = 0;
    private static final int VALUE_TYPE_COLOR = 3;
    private static final int VALUE_TYPE_FLOAT = 0;
    private static final int VALUE_TYPE_INT = 1;
    private static final int VALUE_TYPE_PATH = 2;
    private static final int VALUE_TYPE_UNDEFINED = 4;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private AnimatorInflaterCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Animator createAnimatorFromXml(Context context, Resources resources, Resources$Theme resources$Theme, XmlPullParser xmlPullParser, AttributeSet attributeSet, AnimatorSet animatorSet, int i9, float f8) throws XmlPullParserException, IOException {
        int i10;
        int depth = xmlPullParser.getDepth();
        Animator animatorLoadAnimator = null;
        ArrayList arrayList = null;
        while (true) {
            int next = xmlPullParser.next();
            i10 = 0;
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                break;
            }
            if (next == 2) {
                String name = xmlPullParser.getName();
                if (name.equals("objectAnimator")) {
                    animatorLoadAnimator = loadObjectAnimator(context, resources, resources$Theme, attributeSet, f8, xmlPullParser);
                } else if (name.equals("animator")) {
                    animatorLoadAnimator = loadAnimator(context, resources, resources$Theme, attributeSet, null, f8, xmlPullParser);
                } else if (name.equals("set")) {
                    AnimatorSet animatorSet2 = new AnimatorSet();
                    TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, resources$Theme, attributeSet, AndroidResources.STYLEABLE_ANIMATOR_SET);
                    createAnimatorFromXml(context, resources, resources$Theme, xmlPullParser, attributeSet, animatorSet2, TypedArrayUtils.getNamedInt(typedArrayObtainAttributes, xmlPullParser, "ordering", 0, 0), f8);
                    typedArrayObtainAttributes.recycle();
                    animatorLoadAnimator = animatorSet2;
                } else {
                    if (!name.equals("propertyValuesHolder")) {
                        b.f(xmlPullParser.getName(), "Unknown animator name: ");
                        return null;
                    }
                    PropertyValuesHolder[] propertyValuesHolderArrLoadValues = loadValues(context, resources, resources$Theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser));
                    if (propertyValuesHolderArrLoadValues != null && (animatorLoadAnimator instanceof ValueAnimator)) {
                        ((ValueAnimator) animatorLoadAnimator).setValues(propertyValuesHolderArrLoadValues);
                    }
                    i10 = 1;
                }
                if (animatorSet != null && i10 == 0) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(animatorLoadAnimator);
                }
            }
        }
        if (animatorSet != null && arrayList != null) {
            Animator[] animatorArr = new Animator[arrayList.size()];
            int size = arrayList.size();
            int i11 = 0;
            while (i11 < size) {
                Object obj = arrayList.get(i11);
                i11++;
                animatorArr[i10] = (Animator) obj;
                i10++;
            }
            if (i9 == 0) {
                animatorSet.playTogether(animatorArr);
                return animatorLoadAnimator;
            }
            animatorSet.playSequentially(animatorArr);
        }
        return animatorLoadAnimator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Keyframe createNewKeyframe(Keyframe keyframe, float f8) {
        if (keyframe.getType() == Float.TYPE) {
            return Keyframe.ofFloat(f8);
        }
        return keyframe.getType() == Integer.TYPE ? Keyframe.ofInt(f8) : Keyframe.ofObject(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void distributeKeyframes(Keyframe[] keyframeArr, float f8, int i9, int i10) {
        float f9 = f8 / ((i10 - i9) + 2);
        while (i9 <= i10) {
            keyframeArr[i9].setFraction(keyframeArr[i9 - 1].getFraction() + f9);
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void dumpKeyframes(Object[] objArr, String str) {
        if (objArr == null || objArr.length == 0) {
            return;
        }
        Log.d(TAG, str);
        int length = objArr.length;
        for (int i9 = 0; i9 < length; i9++) {
            Keyframe keyframe = (Keyframe) objArr[i9];
            StringBuilder sbQ = a.q(i9, "Keyframe ", ": fraction ");
            Object value = "null";
            sbQ.append(keyframe.getFraction() < 0.0f ? "null" : Float.valueOf(keyframe.getFraction()));
            sbQ.append(", , value : ");
            if (keyframe.hasValue()) {
                value = keyframe.getValue();
            }
            sbQ.append(value);
            Log.d(TAG, sbQ.toString());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static PropertyValuesHolder getPVH(TypedArray typedArray, int i9, int i10, int i11, String str) {
        int color;
        int color2;
        int color3;
        PropertyValuesHolder propertyValuesHolderOfFloat;
        TypedValue typedValuePeekValue = typedArray.peekValue(i10);
        boolean z8 = typedValuePeekValue != null;
        int i12 = z8 ? typedValuePeekValue.type : 0;
        TypedValue typedValuePeekValue2 = typedArray.peekValue(i11);
        boolean z9 = typedValuePeekValue2 != null;
        int i13 = z9 ? typedValuePeekValue2.type : 0;
        if (i9 == 4) {
            i9 = ((z8 && isColorType(i12)) || (z9 && isColorType(i13))) ? 3 : 0;
        }
        boolean z10 = i9 == 0;
        PropertyValuesHolder propertyValuesHolderOfInt = null;
        if (i9 == 2) {
            String string = typedArray.getString(i10);
            String string2 = typedArray.getString(i11);
            PathParser$PathDataNode[] pathParser$PathDataNodeArrCreateNodesFromPathData = PathParser.createNodesFromPathData(string);
            PathParser$PathDataNode[] pathParser$PathDataNodeArrCreateNodesFromPathData2 = PathParser.createNodesFromPathData(string2);
            if (pathParser$PathDataNodeArrCreateNodesFromPathData != null || pathParser$PathDataNodeArrCreateNodesFromPathData2 != null) {
                if (pathParser$PathDataNodeArrCreateNodesFromPathData != null) {
                    AnimatorInflaterCompat$PathDataEvaluator animatorInflaterCompat$PathDataEvaluator = new AnimatorInflaterCompat$PathDataEvaluator();
                    if (pathParser$PathDataNodeArrCreateNodesFromPathData2 == null) {
                        return PropertyValuesHolder.ofObject(str, animatorInflaterCompat$PathDataEvaluator, pathParser$PathDataNodeArrCreateNodesFromPathData);
                    }
                    if (PathParser.canMorph(pathParser$PathDataNodeArrCreateNodesFromPathData, pathParser$PathDataNodeArrCreateNodesFromPathData2)) {
                        return PropertyValuesHolder.ofObject(str, animatorInflaterCompat$PathDataEvaluator, pathParser$PathDataNodeArrCreateNodesFromPathData, pathParser$PathDataNodeArrCreateNodesFromPathData2);
                    }
                    throw new InflateException(" Can't morph from " + string + " to " + string2);
                }
                if (pathParser$PathDataNodeArrCreateNodesFromPathData2 != null) {
                    return PropertyValuesHolder.ofObject(str, new AnimatorInflaterCompat$PathDataEvaluator(), pathParser$PathDataNodeArrCreateNodesFromPathData2);
                }
            }
            return null;
        }
        ArgbEvaluator argbEvaluator = i9 == 3 ? ArgbEvaluator.getInstance() : null;
        if (z10) {
            if (z8) {
                float dimension = i12 == 5 ? typedArray.getDimension(i10, 0.0f) : typedArray.getFloat(i10, 0.0f);
                if (z9) {
                    propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, dimension, i13 == 5 ? typedArray.getDimension(i11, 0.0f) : typedArray.getFloat(i11, 0.0f));
                } else {
                    propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, dimension);
                }
            } else {
                propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, i13 == 5 ? typedArray.getDimension(i11, 0.0f) : typedArray.getFloat(i11, 0.0f));
            }
            propertyValuesHolderOfInt = propertyValuesHolderOfFloat;
        } else if (z8) {
            if (i12 == 5) {
                color2 = (int) typedArray.getDimension(i10, 0.0f);
            } else {
                color2 = isColorType(i12) ? typedArray.getColor(i10, 0) : typedArray.getInt(i10, 0);
            }
            if (z9) {
                if (i13 == 5) {
                    color3 = (int) typedArray.getDimension(i11, 0.0f);
                } else {
                    color3 = isColorType(i13) ? typedArray.getColor(i11, 0) : typedArray.getInt(i11, 0);
                }
                propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, color2, color3);
            } else {
                propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, color2);
            }
        } else if (z9) {
            if (i13 == 5) {
                color = (int) typedArray.getDimension(i11, 0.0f);
            } else {
                color = isColorType(i13) ? typedArray.getColor(i11, 0) : typedArray.getInt(i11, 0);
            }
            propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, color);
        }
        if (propertyValuesHolderOfInt != null && argbEvaluator != null) {
            propertyValuesHolderOfInt.setEvaluator(argbEvaluator);
        }
        return propertyValuesHolderOfInt;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int inferValueTypeFromValues(TypedArray typedArray, int i9, int i10) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i9);
        boolean z8 = typedValuePeekValue != null;
        int i11 = z8 ? typedValuePeekValue.type : 0;
        TypedValue typedValuePeekValue2 = typedArray.peekValue(i10);
        boolean z9 = typedValuePeekValue2 != null;
        int i12 = z9 ? typedValuePeekValue2.type : 0;
        if (z8 && isColorType(i11)) {
            return 3;
        }
        return (z9 && isColorType(i12)) ? 3 : 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int inferValueTypeOfKeyframe(Resources resources, Resources$Theme resources$Theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, resources$Theme, attributeSet, AndroidResources.STYLEABLE_KEYFRAME);
        int i9 = 0;
        TypedValue typedValuePeekNamedValue = TypedArrayUtils.peekNamedValue(typedArrayObtainAttributes, xmlPullParser, "value", 0);
        if (typedValuePeekNamedValue != null && isColorType(typedValuePeekNamedValue.type)) {
            i9 = 3;
        }
        typedArrayObtainAttributes.recycle();
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean isColorType(int i9) {
        return i9 >= 28 && i9 <= 31;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Animator loadAnimator(Context context, Resources resources, Resources$Theme resources$Theme, @AnimatorRes int i9, float f8) {
        XmlResourceParser animation = null;
        try {
            try {
                try {
                    animation = resources.getAnimation(i9);
                    Animator animatorCreateAnimatorFromXml = createAnimatorFromXml(context, resources, resources$Theme, animation, f8);
                    if (animation != null) {
                        animation.close();
                    }
                    return animatorCreateAnimatorFromXml;
                } catch (IOException e) {
                    Resources$NotFoundException resources$NotFoundException = new Resources$NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i9));
                    resources$NotFoundException.initCause(e);
                    throw resources$NotFoundException;
                }
            } catch (XmlPullParserException e6) {
                Resources$NotFoundException resources$NotFoundException2 = new Resources$NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i9));
                resources$NotFoundException2.initCause(e6);
                throw resources$NotFoundException2;
            }
        } catch (Throwable th) {
            if (animation != null) {
                animation.close();
            }
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Keyframe loadKeyframe(Context context, Resources resources, Resources$Theme resources$Theme, AttributeSet attributeSet, int i9, XmlPullParser xmlPullParser) {
        Keyframe keyframeOfFloat;
        TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, resources$Theme, attributeSet, AndroidResources.STYLEABLE_KEYFRAME);
        float namedFloat = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, "fraction", 3, -1.0f);
        TypedValue typedValuePeekNamedValue = TypedArrayUtils.peekNamedValue(typedArrayObtainAttributes, xmlPullParser, "value", 0);
        boolean z8 = typedValuePeekNamedValue != null;
        if (i9 == 4) {
            i9 = (z8 && isColorType(typedValuePeekNamedValue.type)) ? 3 : 0;
        }
        if (!z8) {
            keyframeOfFloat = i9 == 0 ? Keyframe.ofFloat(namedFloat) : Keyframe.ofInt(namedFloat);
        } else if (i9 != 0) {
            keyframeOfFloat = (i9 == 1 || i9 == 3) ? Keyframe.ofInt(namedFloat, TypedArrayUtils.getNamedInt(typedArrayObtainAttributes, xmlPullParser, "value", 0, 0)) : null;
        } else {
            keyframeOfFloat = Keyframe.ofFloat(namedFloat, TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, "value", 0, 0.0f));
        }
        int namedResourceId = TypedArrayUtils.getNamedResourceId(typedArrayObtainAttributes, xmlPullParser, "interpolator", 1, 0);
        if (namedResourceId > 0) {
            keyframeOfFloat.setInterpolator(AnimationUtilsCompat.loadInterpolator(context, namedResourceId));
        }
        typedArrayObtainAttributes.recycle();
        return keyframeOfFloat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static ObjectAnimator loadObjectAnimator(Context context, Resources resources, Resources$Theme resources$Theme, AttributeSet attributeSet, float f8, XmlPullParser xmlPullParser) {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        loadAnimator(context, resources, resources$Theme, attributeSet, objectAnimator, f8, xmlPullParser);
        return objectAnimator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static PropertyValuesHolder loadPvh(Context context, Resources resources, Resources$Theme resources$Theme, XmlPullParser xmlPullParser, String str, int i9) throws XmlPullParserException, IOException {
        int size;
        Context context2;
        Resources$Theme resources$Theme2;
        XmlPullParser xmlPullParser2;
        ArrayList arrayList = null;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 3 || next == 1) {
                break;
            }
            if (xmlPullParser.getName().equals("keyframe")) {
                if (i9 == 4) {
                    i9 = inferValueTypeOfKeyframe(resources, resources$Theme, Xml.asAttributeSet(xmlPullParser), xmlPullParser);
                }
                int i10 = i9;
                context2 = context;
                resources$Theme2 = resources$Theme;
                xmlPullParser2 = xmlPullParser;
                Keyframe keyframeLoadKeyframe = loadKeyframe(context2, resources, resources$Theme2, Xml.asAttributeSet(xmlPullParser), i10, xmlPullParser2);
                if (keyframeLoadKeyframe != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(keyframeLoadKeyframe);
                }
                xmlPullParser2.next();
                i9 = i10;
            } else {
                context2 = context;
                resources$Theme2 = resources$Theme;
                xmlPullParser2 = xmlPullParser;
            }
            context = context2;
            resources$Theme = resources$Theme2;
            xmlPullParser = xmlPullParser2;
        }
        if (arrayList == null || (size = arrayList.size()) <= 0) {
            return null;
        }
        Keyframe keyframe = (Keyframe) arrayList.get(0);
        Keyframe keyframe2 = (Keyframe) arrayList.get(size - 1);
        float fraction = keyframe2.getFraction();
        if (fraction < 1.0f) {
            if (fraction < 0.0f) {
                keyframe2.setFraction(1.0f);
            } else {
                arrayList.add(arrayList.size(), createNewKeyframe(keyframe2, 1.0f));
                size++;
            }
        }
        float fraction2 = keyframe.getFraction();
        if (fraction2 != 0.0f) {
            if (fraction2 < 0.0f) {
                keyframe.setFraction(0.0f);
            } else {
                arrayList.add(0, createNewKeyframe(keyframe, 0.0f));
                size++;
            }
        }
        Keyframe[] keyframeArr = new Keyframe[size];
        arrayList.toArray(keyframeArr);
        for (int i11 = 0; i11 < size; i11++) {
            Keyframe keyframe3 = keyframeArr[i11];
            if (keyframe3.getFraction() < 0.0f) {
                if (i11 == 0) {
                    keyframe3.setFraction(0.0f);
                } else {
                    int i12 = size - 1;
                    if (i11 == i12) {
                        keyframe3.setFraction(1.0f);
                    } else {
                        int i13 = i11;
                        for (int i14 = i11 + 1; i14 < i12 && keyframeArr[i14].getFraction() < 0.0f; i14++) {
                            i13 = i14;
                        }
                        distributeKeyframes(keyframeArr, keyframeArr[i13 + 1].getFraction() - keyframeArr[i11 - 1].getFraction(), i11, i13);
                    }
                }
            }
        }
        PropertyValuesHolder propertyValuesHolderOfKeyframe = PropertyValuesHolder.ofKeyframe(str, keyframeArr);
        if (i9 == 3) {
            propertyValuesHolderOfKeyframe.setEvaluator(ArgbEvaluator.getInstance());
        }
        return propertyValuesHolderOfKeyframe;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static PropertyValuesHolder[] loadValues(Context context, Resources resources, Resources$Theme resources$Theme, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int i9;
        XmlPullParser xmlPullParser2 = xmlPullParser;
        ArrayList arrayList = null;
        while (true) {
            int eventType = xmlPullParser2.getEventType();
            if (eventType == 3 || eventType == 1) {
                break;
            }
            if (eventType != 2) {
                xmlPullParser2.next();
            } else {
                if (xmlPullParser2.getName().equals("propertyValuesHolder")) {
                    TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, resources$Theme, attributeSet, AndroidResources.STYLEABLE_PROPERTY_VALUES_HOLDER);
                    String namedString = TypedArrayUtils.getNamedString(typedArrayObtainAttributes, xmlPullParser2, "propertyName", 3);
                    int namedInt = TypedArrayUtils.getNamedInt(typedArrayObtainAttributes, xmlPullParser2, "valueType", 2, 4);
                    PropertyValuesHolder propertyValuesHolderLoadPvh = loadPvh(context, resources, resources$Theme, xmlPullParser2, namedString, namedInt);
                    if (propertyValuesHolderLoadPvh == null) {
                        propertyValuesHolderLoadPvh = getPVH(typedArrayObtainAttributes, namedInt, 0, 1, namedString);
                    }
                    if (propertyValuesHolderLoadPvh != null) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(propertyValuesHolderLoadPvh);
                    }
                    typedArrayObtainAttributes.recycle();
                }
                xmlPullParser.next();
                xmlPullParser2 = xmlPullParser;
            }
        }
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        PropertyValuesHolder[] propertyValuesHolderArr = new PropertyValuesHolder[size];
        for (i9 = 0; i9 < size; i9++) {
            propertyValuesHolderArr[i9] = (PropertyValuesHolder) arrayList.get(i9);
        }
        return propertyValuesHolderArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void parseAnimatorFromTypeArray(ValueAnimator valueAnimator, TypedArray typedArray, TypedArray typedArray2, float f8, XmlPullParser xmlPullParser) {
        long namedInt = TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, TypedValues$TransitionType.S_DURATION, 1, 300);
        long namedInt2 = TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "startOffset", 2, 0);
        int namedInt3 = TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "valueType", 7, 4);
        if (TypedArrayUtils.hasAttribute(xmlPullParser, "valueFrom") && TypedArrayUtils.hasAttribute(xmlPullParser, "valueTo")) {
            if (namedInt3 == 4) {
                namedInt3 = inferValueTypeFromValues(typedArray, 5, 6);
            }
            PropertyValuesHolder pvh = getPVH(typedArray, namedInt3, 5, 6, "");
            if (pvh != null) {
                valueAnimator.setValues(pvh);
            }
        }
        valueAnimator.setDuration(namedInt);
        valueAnimator.setStartDelay(namedInt2);
        valueAnimator.setRepeatCount(TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "repeatCount", 3, 0));
        valueAnimator.setRepeatMode(TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "repeatMode", 4, 1));
        if (typedArray2 != null) {
            setupObjectAnimator(valueAnimator, typedArray2, namedInt3, f8, xmlPullParser);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void setupObjectAnimator(ValueAnimator valueAnimator, TypedArray typedArray, int i9, float f8, XmlPullParser xmlPullParser) {
        ObjectAnimator objectAnimator = (ObjectAnimator) valueAnimator;
        String namedString = TypedArrayUtils.getNamedString(typedArray, xmlPullParser, "pathData", 1);
        if (namedString == null) {
            objectAnimator.setPropertyName(TypedArrayUtils.getNamedString(typedArray, xmlPullParser, "propertyName", 0));
            return;
        }
        String namedString2 = TypedArrayUtils.getNamedString(typedArray, xmlPullParser, "propertyXName", 2);
        String namedString3 = TypedArrayUtils.getNamedString(typedArray, xmlPullParser, "propertyYName", 3);
        if (i9 != 2) {
        }
        if (namedString2 != null || namedString3 != null) {
            setupPathMotion(PathParser.createPathFromPathData(namedString), objectAnimator, f8 * 0.5f, namedString2, namedString3);
            return;
        }
        throw new InflateException(typedArray.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void setupPathMotion(Path path, ObjectAnimator objectAnimator, float f8, String str, String str2) {
        char c = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        ArrayList arrayList = new ArrayList();
        float f9 = 0.0f;
        arrayList.add(Float.valueOf(0.0f));
        float length = 0.0f;
        do {
            length += pathMeasure.getLength();
            arrayList.add(Float.valueOf(length));
        } while (pathMeasure.nextContour());
        PathMeasure pathMeasure2 = new PathMeasure(path, false);
        int iMin = Math.min(100, ((int) (length / f8)) + 1);
        float[] fArr = new float[iMin];
        float[] fArr2 = new float[iMin];
        float[] fArr3 = new float[2];
        float f10 = length / (iMin - 1);
        int i9 = 0;
        int i10 = 0;
        while (true) {
            if (i9 >= iMin) {
                break;
            }
            char c9 = c;
            pathMeasure2.getPosTan(f9 - ((Float) arrayList.get(i10)).floatValue(), fArr3, null);
            fArr[i9] = fArr3[c9];
            fArr2[i9] = fArr3[1];
            f9 += f10;
            int i11 = i10 + 1;
            if (i11 < arrayList.size() && f9 > ((Float) arrayList.get(i11)).floatValue()) {
                pathMeasure2.nextContour();
                i10 = i11;
            }
            i9++;
            c = c9;
        }
        PropertyValuesHolder propertyValuesHolderOfFloat = str != null ? PropertyValuesHolder.ofFloat(str, fArr) : null;
        PropertyValuesHolder propertyValuesHolderOfFloat2 = str2 != null ? PropertyValuesHolder.ofFloat(str2, fArr2) : null;
        if (propertyValuesHolderOfFloat == null) {
            objectAnimator.setValues(propertyValuesHolderOfFloat2);
        } else if (propertyValuesHolderOfFloat2 == null) {
            objectAnimator.setValues(propertyValuesHolderOfFloat);
        } else {
            objectAnimator.setValues(propertyValuesHolderOfFloat, propertyValuesHolderOfFloat2);
        }
    }

    public static Animator loadAnimator(Context context, Resources resources, Resources$Theme resources$Theme, @AnimatorRes int i9) {
        return loadAnimator(context, resources, resources$Theme, i9, 1.0f);
    }

    public static Animator loadAnimator(Context context, @AnimatorRes int i9) {
        return AnimatorInflater.loadAnimator(context, i9);
    }

    private static ValueAnimator loadAnimator(Context context, Resources resources, Resources$Theme resources$Theme, AttributeSet attributeSet, ValueAnimator valueAnimator, float f8, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, resources$Theme, attributeSet, AndroidResources.STYLEABLE_ANIMATOR);
        TypedArray typedArrayObtainAttributes2 = TypedArrayUtils.obtainAttributes(resources, resources$Theme, attributeSet, AndroidResources.STYLEABLE_PROPERTY_ANIMATOR);
        if (valueAnimator == null) {
            valueAnimator = new ValueAnimator();
        }
        parseAnimatorFromTypeArray(valueAnimator, typedArrayObtainAttributes, typedArrayObtainAttributes2, f8, xmlPullParser);
        int namedResourceId = TypedArrayUtils.getNamedResourceId(typedArrayObtainAttributes, xmlPullParser, "interpolator", 0, 0);
        if (namedResourceId > 0) {
            valueAnimator.setInterpolator(AnimationUtilsCompat.loadInterpolator(context, namedResourceId));
        }
        typedArrayObtainAttributes.recycle();
        if (typedArrayObtainAttributes2 != null) {
            typedArrayObtainAttributes2.recycle();
        }
        return valueAnimator;
    }

    private static Animator createAnimatorFromXml(Context context, Resources resources, Resources$Theme resources$Theme, XmlPullParser xmlPullParser, float f8) {
        return createAnimatorFromXml(context, resources, resources$Theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser), null, 0, f8);
    }
}

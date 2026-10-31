package androidx.constraintlayout.core.motion;

import ai.onnxruntime.a;
import ai.onnxruntime.b;
import androidx.core.view.ViewCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CustomAttribute {
    private static final String TAG = "TransitionLayout";
    boolean mBooleanValue;
    private int mColorValue;
    private float mFloatValue;
    private int mIntegerValue;
    private boolean mMethod;
    String mName;
    private String mStringValue;
    private CustomAttribute$AttributeType mType;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CustomAttribute(CustomAttribute customAttribute, Object obj) {
        this.mMethod = false;
        this.mName = customAttribute.mName;
        this.mType = customAttribute.mType;
        setValue(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int clamp(int i9) {
        int i10 = (i9 & (~(i9 >> 31))) - 255;
        return (i10 & (i10 >> 31)) + 255;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int hsvToRgb(float f8, float f9, float f10) {
        float f11 = f8 * 6.0f;
        int i9 = (int) f11;
        float f12 = f11 - i9;
        float f13 = f10 * 255.0f;
        int iB = (int) a.b(1.0f, f9, f13, 0.5f);
        int i10 = (int) (((1.0f - (f12 * f9)) * f13) + 0.5f);
        int i11 = (int) (((1.0f - ((1.0f - f12) * f9)) * f13) + 0.5f);
        int i12 = (int) (f13 + 0.5f);
        if (i9 == 0) {
            return ((i12 << 16) + (i11 << 8) + iB) | ViewCompat.MEASURED_STATE_MASK;
        }
        if (i9 == 1) {
            return ((i10 << 16) + (i12 << 8) + iB) | ViewCompat.MEASURED_STATE_MASK;
        }
        if (i9 == 2) {
            return ((iB << 16) + (i12 << 8) + i11) | ViewCompat.MEASURED_STATE_MASK;
        }
        if (i9 == 3) {
            return ((iB << 16) + (i10 << 8) + i12) | ViewCompat.MEASURED_STATE_MASK;
        }
        if (i9 == 4) {
            return ((i11 << 16) + (iB << 8) + i12) | ViewCompat.MEASURED_STATE_MASK;
        }
        if (i9 != 5) {
            return 0;
        }
        return ((i12 << 16) + (iB << 8) + i10) | ViewCompat.MEASURED_STATE_MASK;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean diff(CustomAttribute customAttribute) {
        CustomAttribute$AttributeType customAttribute$AttributeType;
        if (customAttribute != null && (customAttribute$AttributeType = this.mType) == customAttribute.mType) {
            switch (customAttribute$AttributeType) {
                case INT_TYPE:
                case REFERENCE_TYPE:
                    if (this.mIntegerValue == customAttribute.mIntegerValue) {
                        return true;
                    }
                    break;
                case FLOAT_TYPE:
                    return this.mFloatValue == customAttribute.mFloatValue;
                case COLOR_TYPE:
                case COLOR_DRAWABLE_TYPE:
                    return this.mColorValue == customAttribute.mColorValue;
                case STRING_TYPE:
                    return this.mIntegerValue == customAttribute.mIntegerValue;
                case BOOLEAN_TYPE:
                    return this.mBooleanValue == customAttribute.mBooleanValue;
                case DIMENSION_TYPE:
                    return this.mFloatValue == customAttribute.mFloatValue;
                default:
                    return false;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CustomAttribute$AttributeType getType() {
        return this.mType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getValueToInterpolate() {
        switch (this.mType) {
            case INT_TYPE:
                return this.mIntegerValue;
            case FLOAT_TYPE:
                return this.mFloatValue;
            case COLOR_TYPE:
            case COLOR_DRAWABLE_TYPE:
                b.h("Color does not have a single color to interpolate");
                return 0.0f;
            case STRING_TYPE:
                b.h("Cannot interpolate String");
                return 0.0f;
            case BOOLEAN_TYPE:
                return this.mBooleanValue ? 1.0f : 0.0f;
            case DIMENSION_TYPE:
                return this.mFloatValue;
            default:
                return Float.NaN;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void getValuesToInterpolate(float[] fArr) {
        switch (this.mType) {
            case INT_TYPE:
                fArr[0] = this.mIntegerValue;
                break;
            case FLOAT_TYPE:
                fArr[0] = this.mFloatValue;
                break;
            case COLOR_TYPE:
            case COLOR_DRAWABLE_TYPE:
                int i9 = this.mColorValue;
                int i10 = (i9 >> 24) & 255;
                float fPow = (float) Math.pow(((i9 >> 16) & 255) / 255.0f, 2.2d);
                float fPow2 = (float) Math.pow(((i9 >> 8) & 255) / 255.0f, 2.2d);
                float fPow3 = (float) Math.pow((i9 & 255) / 255.0f, 2.2d);
                fArr[0] = fPow;
                fArr[1] = fPow2;
                fArr[2] = fPow3;
                fArr[3] = i10 / 255.0f;
                break;
            case STRING_TYPE:
                b.h("Color does not have a single color to interpolate");
                break;
            case BOOLEAN_TYPE:
                fArr[0] = this.mBooleanValue ? 1.0f : 0.0f;
                break;
            case DIMENSION_TYPE:
                fArr[0] = this.mFloatValue;
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isContinuous() {
        int iOrdinal = this.mType.ordinal();
        return (iOrdinal == 4 || iOrdinal == 5 || iOrdinal == 7) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int numberOfInterpolatedValues() {
        int iOrdinal = this.mType.ordinal();
        return (iOrdinal == 2 || iOrdinal == 3) ? 4 : 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setColorValue(int i9) {
        this.mColorValue = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFloatValue(float f8) {
        this.mFloatValue = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIntValue(int i9) {
        this.mIntegerValue = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStringValue(String str) {
        this.mStringValue = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setValue(float[] fArr) {
        switch (this.mType) {
            case INT_TYPE:
            case REFERENCE_TYPE:
                this.mIntegerValue = (int) fArr[0];
                break;
            case FLOAT_TYPE:
                this.mFloatValue = fArr[0];
                break;
            case COLOR_TYPE:
            case COLOR_DRAWABLE_TYPE:
                int iHsvToRgb = hsvToRgb(fArr[0], fArr[1], fArr[2]);
                this.mColorValue = iHsvToRgb;
                this.mColorValue = (clamp((int) (fArr[3] * 255.0f)) << 24) | (iHsvToRgb & ViewCompat.MEASURED_SIZE_MASK);
                break;
            case STRING_TYPE:
                b.h("Color does not have a single color to interpolate");
                break;
            case BOOLEAN_TYPE:
                this.mBooleanValue = ((double) fArr[0]) > 0.5d;
                break;
            case DIMENSION_TYPE:
                this.mFloatValue = fArr[0];
                break;
        }
    }

    public CustomAttribute(String str, CustomAttribute$AttributeType customAttribute$AttributeType, Object obj, boolean z8) {
        this.mName = str;
        this.mType = customAttribute$AttributeType;
        this.mMethod = z8;
        setValue(obj);
    }

    public CustomAttribute(String str, CustomAttribute$AttributeType customAttribute$AttributeType) {
        this.mMethod = false;
        this.mName = str;
        this.mType = customAttribute$AttributeType;
    }

    public void setValue(Object obj) {
        switch (this.mType) {
            case INT_TYPE:
            case REFERENCE_TYPE:
                this.mIntegerValue = ((Integer) obj).intValue();
                break;
            case FLOAT_TYPE:
                this.mFloatValue = ((Float) obj).floatValue();
                break;
            case COLOR_TYPE:
            case COLOR_DRAWABLE_TYPE:
                this.mColorValue = ((Integer) obj).intValue();
                break;
            case STRING_TYPE:
                this.mStringValue = (String) obj;
                break;
            case BOOLEAN_TYPE:
                this.mBooleanValue = ((Boolean) obj).booleanValue();
                break;
            case DIMENSION_TYPE:
                this.mFloatValue = ((Float) obj).floatValue();
                break;
        }
    }
}

package androidx.constraintlayout.core.motion;

import ai.onnxruntime.a;
import ai.onnxruntime.b;
import androidx.constraintlayout.core.motion.utils.TypedValues$Custom;
import androidx.core.view.ViewCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CustomVariable {
    private static final String TAG = "TransitionLayout";
    boolean mBooleanValue;
    private float mFloatValue;
    private int mIntegerValue;
    String mName;
    private String mStringValue;
    private int mType;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CustomVariable(CustomVariable customVariable) {
        this.mIntegerValue = Integer.MIN_VALUE;
        this.mFloatValue = Float.NaN;
        this.mStringValue = null;
        this.mName = customVariable.mName;
        this.mType = customVariable.mType;
        this.mIntegerValue = customVariable.mIntegerValue;
        this.mFloatValue = customVariable.mFloatValue;
        this.mStringValue = customVariable.mStringValue;
        this.mBooleanValue = customVariable.mBooleanValue;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int clamp(int i9) {
        int i10 = (i9 & (~(i9 >> 31))) - 255;
        return (i10 & (i10 >> 31)) + 255;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String colorString(int i9) {
        String str = "00000000" + Integer.toHexString(i9);
        return "#".concat(str.substring(str.length() - 8));
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
    public static int rgbaTocColor(float f8, float f9, float f10, float f11) {
        int iClamp = clamp((int) (f8 * 255.0f));
        int iClamp2 = clamp((int) (f9 * 255.0f));
        return (iClamp << 16) | (clamp((int) (f11 * 255.0f)) << 24) | (iClamp2 << 8) | clamp((int) (f10 * 255.0f));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void applyToWidget(MotionWidget motionWidget) {
        int i9 = this.mType;
        switch (i9) {
            case TypedValues$Custom.TYPE_INT /* 900 */:
            case TypedValues$Custom.TYPE_COLOR /* 902 */:
            case TypedValues$Custom.TYPE_REFERENCE /* 906 */:
                motionWidget.setCustomAttribute(this.mName, i9, this.mIntegerValue);
                break;
            case TypedValues$Custom.TYPE_FLOAT /* 901 */:
            case TypedValues$Custom.TYPE_DIMENSION /* 905 */:
                motionWidget.setCustomAttribute(this.mName, i9, this.mFloatValue);
                break;
            case TypedValues$Custom.TYPE_STRING /* 903 */:
                motionWidget.setCustomAttribute(this.mName, i9, this.mStringValue);
                break;
            case TypedValues$Custom.TYPE_BOOLEAN /* 904 */:
                motionWidget.setCustomAttribute(this.mName, i9, this.mBooleanValue);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CustomVariable copy() {
        return new CustomVariable(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean diff(CustomVariable customVariable) {
        int i9;
        if (customVariable != null && (i9 = this.mType) == customVariable.mType) {
            switch (i9) {
                case TypedValues$Custom.TYPE_INT /* 900 */:
                case TypedValues$Custom.TYPE_REFERENCE /* 906 */:
                    if (this.mIntegerValue == customVariable.mIntegerValue) {
                        return true;
                    }
                    break;
                case TypedValues$Custom.TYPE_FLOAT /* 901 */:
                    return this.mFloatValue == customVariable.mFloatValue;
                case TypedValues$Custom.TYPE_COLOR /* 902 */:
                    return this.mIntegerValue == customVariable.mIntegerValue;
                case TypedValues$Custom.TYPE_STRING /* 903 */:
                    return this.mIntegerValue == customVariable.mIntegerValue;
                case TypedValues$Custom.TYPE_BOOLEAN /* 904 */:
                    return this.mBooleanValue == customVariable.mBooleanValue;
                case TypedValues$Custom.TYPE_DIMENSION /* 905 */:
                    return this.mFloatValue == customVariable.mFloatValue;
                default:
                    return false;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getBooleanValue() {
        return this.mBooleanValue;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getColorValue() {
        return this.mIntegerValue;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getFloatValue() {
        return this.mFloatValue;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getIntegerValue() {
        return this.mIntegerValue;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getInterpolatedColor(float[] fArr) {
        return (clamp((int) (fArr[3] * 255.0f)) << 24) | (clamp((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (clamp((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | clamp((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getName() {
        return this.mName;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getStringValue() {
        return this.mStringValue;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getType() {
        return this.mType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getValueToInterpolate() {
        switch (this.mType) {
            case TypedValues$Custom.TYPE_INT /* 900 */:
                return this.mIntegerValue;
            case TypedValues$Custom.TYPE_FLOAT /* 901 */:
                return this.mFloatValue;
            case TypedValues$Custom.TYPE_COLOR /* 902 */:
                b.h("Color does not have a single color to interpolate");
                return 0.0f;
            case TypedValues$Custom.TYPE_STRING /* 903 */:
                b.h("Cannot interpolate String");
                return 0.0f;
            case TypedValues$Custom.TYPE_BOOLEAN /* 904 */:
                return this.mBooleanValue ? 1.0f : 0.0f;
            case TypedValues$Custom.TYPE_DIMENSION /* 905 */:
                return this.mFloatValue;
            default:
                return Float.NaN;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void getValuesToInterpolate(float[] fArr) {
        switch (this.mType) {
            case TypedValues$Custom.TYPE_INT /* 900 */:
                fArr[0] = this.mIntegerValue;
                break;
            case TypedValues$Custom.TYPE_FLOAT /* 901 */:
                fArr[0] = this.mFloatValue;
                break;
            case TypedValues$Custom.TYPE_COLOR /* 902 */:
                int i9 = this.mIntegerValue;
                int i10 = (i9 >> 24) & 255;
                float fPow = (float) Math.pow(((i9 >> 16) & 255) / 255.0f, 2.2d);
                float fPow2 = (float) Math.pow(((i9 >> 8) & 255) / 255.0f, 2.2d);
                float fPow3 = (float) Math.pow((i9 & 255) / 255.0f, 2.2d);
                fArr[0] = fPow;
                fArr[1] = fPow2;
                fArr[2] = fPow3;
                fArr[3] = i10 / 255.0f;
                break;
            case TypedValues$Custom.TYPE_STRING /* 903 */:
                b.h("Cannot interpolate String");
                break;
            case TypedValues$Custom.TYPE_BOOLEAN /* 904 */:
                fArr[0] = this.mBooleanValue ? 1.0f : 0.0f;
                break;
            case TypedValues$Custom.TYPE_DIMENSION /* 905 */:
                fArr[0] = this.mFloatValue;
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isContinuous() {
        int i9 = this.mType;
        return (i9 == 903 || i9 == 904 || i9 == 906) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int numberOfInterpolatedValues() {
        return this.mType != 902 ? 1 : 4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBooleanValue(boolean z8) {
        this.mBooleanValue = z8;
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
    public void setInterpolatedValue(MotionWidget motionWidget, float[] fArr) {
        int i9 = this.mType;
        switch (i9) {
            case TypedValues$Custom.TYPE_INT /* 900 */:
                motionWidget.setCustomAttribute(this.mName, i9, (int) fArr[0]);
                break;
            case TypedValues$Custom.TYPE_FLOAT /* 901 */:
            case TypedValues$Custom.TYPE_DIMENSION /* 905 */:
                motionWidget.setCustomAttribute(this.mName, i9, fArr[0]);
                break;
            case TypedValues$Custom.TYPE_COLOR /* 902 */:
                motionWidget.setCustomAttribute(this.mName, this.mType, (clamp((int) (fArr[3] * 255.0f)) << 24) | (clamp((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (clamp((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | clamp((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f)));
                break;
            case TypedValues$Custom.TYPE_STRING /* 903 */:
            case TypedValues$Custom.TYPE_REFERENCE /* 906 */:
                b.f(this.mName, "unable to interpolate ");
                break;
            case TypedValues$Custom.TYPE_BOOLEAN /* 904 */:
                motionWidget.setCustomAttribute(this.mName, i9, fArr[0] > 0.5f);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStringValue(String str) {
        this.mStringValue = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setValue(float[] fArr) {
        switch (this.mType) {
            case TypedValues$Custom.TYPE_INT /* 900 */:
            case TypedValues$Custom.TYPE_REFERENCE /* 906 */:
                this.mIntegerValue = (int) fArr[0];
                break;
            case TypedValues$Custom.TYPE_FLOAT /* 901 */:
            case TypedValues$Custom.TYPE_DIMENSION /* 905 */:
                this.mFloatValue = fArr[0];
                break;
            case TypedValues$Custom.TYPE_COLOR /* 902 */:
                this.mIntegerValue = ((Math.round(fArr[3] * 255.0f) & 255) << 24) | ((Math.round(((float) Math.pow(fArr[0], 0.5d)) * 255.0f) & 255) << 16) | ((Math.round(((float) Math.pow(fArr[1], 0.5d)) * 255.0f) & 255) << 8) | (Math.round(((float) Math.pow(fArr[2], 0.5d)) * 255.0f) & 255);
                break;
            case TypedValues$Custom.TYPE_STRING /* 903 */:
                b.h("Cannot interpolate String");
                break;
            case TypedValues$Custom.TYPE_BOOLEAN /* 904 */:
                this.mBooleanValue = ((double) fArr[0]) > 0.5d;
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        String str = this.mName + ':';
        switch (this.mType) {
            case TypedValues$Custom.TYPE_INT /* 900 */:
                StringBuilder sbU = a.u(str);
                sbU.append(this.mIntegerValue);
                return sbU.toString();
            case TypedValues$Custom.TYPE_FLOAT /* 901 */:
                StringBuilder sbU2 = a.u(str);
                sbU2.append(this.mFloatValue);
                return sbU2.toString();
            case TypedValues$Custom.TYPE_COLOR /* 902 */:
                StringBuilder sbU3 = a.u(str);
                sbU3.append(colorString(this.mIntegerValue));
                return sbU3.toString();
            case TypedValues$Custom.TYPE_STRING /* 903 */:
                StringBuilder sbU4 = a.u(str);
                sbU4.append(this.mStringValue);
                return sbU4.toString();
            case TypedValues$Custom.TYPE_BOOLEAN /* 904 */:
                StringBuilder sbU5 = a.u(str);
                sbU5.append(Boolean.valueOf(this.mBooleanValue));
                return sbU5.toString();
            case TypedValues$Custom.TYPE_DIMENSION /* 905 */:
                StringBuilder sbU6 = a.u(str);
                sbU6.append(this.mFloatValue);
                return sbU6.toString();
            default:
                return str.concat("????");
        }
    }

    public CustomVariable(String str, int i9, String str2) {
        this.mIntegerValue = Integer.MIN_VALUE;
        this.mFloatValue = Float.NaN;
        this.mName = str;
        this.mType = i9;
        this.mStringValue = str2;
    }

    public CustomVariable(String str, int i9, int i10) {
        this.mIntegerValue = Integer.MIN_VALUE;
        this.mFloatValue = Float.NaN;
        this.mStringValue = null;
        this.mName = str;
        this.mType = i9;
        if (i9 == 901) {
            this.mFloatValue = i10;
        } else {
            this.mIntegerValue = i10;
        }
    }

    public CustomVariable(String str, int i9, float f8) {
        this.mIntegerValue = Integer.MIN_VALUE;
        this.mStringValue = null;
        this.mName = str;
        this.mType = i9;
        this.mFloatValue = f8;
    }

    public CustomVariable(String str, int i9, boolean z8) {
        this.mIntegerValue = Integer.MIN_VALUE;
        this.mFloatValue = Float.NaN;
        this.mStringValue = null;
        this.mName = str;
        this.mType = i9;
        this.mBooleanValue = z8;
    }

    public CustomVariable(String str, int i9) {
        this.mIntegerValue = Integer.MIN_VALUE;
        this.mFloatValue = Float.NaN;
        this.mStringValue = null;
        this.mName = str;
        this.mType = i9;
    }

    public CustomVariable(String str, int i9, Object obj) {
        this.mIntegerValue = Integer.MIN_VALUE;
        this.mFloatValue = Float.NaN;
        this.mStringValue = null;
        this.mName = str;
        this.mType = i9;
        setValue(obj);
    }

    public CustomVariable(CustomVariable customVariable, Object obj) {
        this.mIntegerValue = Integer.MIN_VALUE;
        this.mFloatValue = Float.NaN;
        this.mStringValue = null;
        this.mName = customVariable.mName;
        this.mType = customVariable.mType;
        setValue(obj);
    }

    public void setValue(Object obj) {
        switch (this.mType) {
            case TypedValues$Custom.TYPE_INT /* 900 */:
            case TypedValues$Custom.TYPE_REFERENCE /* 906 */:
                this.mIntegerValue = ((Integer) obj).intValue();
                break;
            case TypedValues$Custom.TYPE_FLOAT /* 901 */:
                this.mFloatValue = ((Float) obj).floatValue();
                break;
            case TypedValues$Custom.TYPE_COLOR /* 902 */:
                this.mIntegerValue = ((Integer) obj).intValue();
                break;
            case TypedValues$Custom.TYPE_STRING /* 903 */:
                this.mStringValue = (String) obj;
                break;
            case TypedValues$Custom.TYPE_BOOLEAN /* 904 */:
                this.mBooleanValue = ((Boolean) obj).booleanValue();
                break;
            case TypedValues$Custom.TYPE_DIMENSION /* 905 */:
                this.mFloatValue = ((Float) obj).floatValue();
                break;
        }
    }
}

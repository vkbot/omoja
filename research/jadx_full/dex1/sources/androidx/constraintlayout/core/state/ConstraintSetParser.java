package androidx.constraintlayout.core.state;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.constraintlayout.core.motion.utils.TypedBundle;
import androidx.constraintlayout.core.motion.utils.TypedValues$MotionType;
import androidx.constraintlayout.core.motion.utils.TypedValues$TransitionType;
import androidx.constraintlayout.core.parser.CLArray;
import androidx.constraintlayout.core.parser.CLElement;
import androidx.constraintlayout.core.parser.CLKey;
import androidx.constraintlayout.core.parser.CLNumber;
import androidx.constraintlayout.core.parser.CLObject;
import androidx.constraintlayout.core.parser.CLParser;
import androidx.constraintlayout.core.parser.CLParsingException;
import androidx.constraintlayout.core.parser.CLString;
import androidx.constraintlayout.core.state.helpers.BarrierReference;
import androidx.constraintlayout.core.state.helpers.ChainReference;
import androidx.constraintlayout.core.state.helpers.FlowReference;
import androidx.constraintlayout.core.state.helpers.GridReference;
import androidx.constraintlayout.core.state.helpers.GuidelineReference;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ConstraintSetParser {
    private static final boolean PARSER_DEBUG = false;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void applyAttribute(State state, ConstraintSetParser$LayoutVariables constraintSetParser$LayoutVariables, ConstraintReference constraintReference, CLObject cLObject, String str) throws CLParsingException {
        str.getClass();
        switch (str) {
            case "centerVertically":
                String string = cLObject.getString(str);
                boolean zEquals = string.equals("parent");
                Object obj = string;
                if (zEquals) {
                    obj = State.PARENT;
                }
                ConstraintReference constraintReferenceConstraints = state.constraints(obj);
                constraintReference.topToTop(constraintReferenceConstraints);
                constraintReference.bottomToBottom(constraintReferenceConstraints);
                break;
            case "center":
                String string2 = cLObject.getString(str);
                ConstraintReference constraintReferenceConstraints2 = string2.equals("parent") ? state.constraints(State.PARENT) : state.constraints(string2);
                constraintReference.startToStart(constraintReferenceConstraints2);
                constraintReference.endToEnd(constraintReferenceConstraints2);
                constraintReference.topToTop(constraintReferenceConstraints2);
                constraintReference.bottomToBottom(constraintReferenceConstraints2);
                break;
            case "custom":
                parseCustomProperties(cLObject, constraintReference, str);
                break;
            case "rotationX":
                constraintReference.rotationX(constraintSetParser$LayoutVariables.get(cLObject.get(str)));
                break;
            case "rotationY":
                constraintReference.rotationY(constraintSetParser$LayoutVariables.get(cLObject.get(str)));
                break;
            case "rotationZ":
                constraintReference.rotationZ(constraintSetParser$LayoutVariables.get(cLObject.get(str)));
                break;
            case "translationX":
                constraintReference.translationX(toPix(state, constraintSetParser$LayoutVariables.get(cLObject.get(str))));
                break;
            case "translationY":
                constraintReference.translationY(toPix(state, constraintSetParser$LayoutVariables.get(cLObject.get(str))));
                break;
            case "translationZ":
                constraintReference.translationZ(toPix(state, constraintSetParser$LayoutVariables.get(cLObject.get(str))));
                break;
            case "height":
                constraintReference.setHeight(parseDimension(cLObject, str, state, state.getDpToPixel()));
                break;
            case "motion":
                parseMotionProperties(cLObject.get(str), constraintReference);
                break;
            case "pivotX":
                constraintReference.pivotX(constraintSetParser$LayoutVariables.get(cLObject.get(str)));
                break;
            case "pivotY":
                constraintReference.pivotY(constraintSetParser$LayoutVariables.get(cLObject.get(str)));
                break;
            case "scaleX":
                constraintReference.scaleX(constraintSetParser$LayoutVariables.get(cLObject.get(str)));
                break;
            case "scaleY":
                constraintReference.scaleY(constraintSetParser$LayoutVariables.get(cLObject.get(str)));
                break;
            case "hRtlBias":
                float f8 = constraintSetParser$LayoutVariables.get(cLObject.get(str));
                if (state.isRtl()) {
                    f8 = 1.0f - f8;
                }
                constraintReference.horizontalBias(f8);
                break;
            case "vWeight":
                constraintReference.setVerticalChainWeight(constraintSetParser$LayoutVariables.get(cLObject.get(str)));
                break;
            case "alpha":
                constraintReference.alpha(constraintSetParser$LayoutVariables.get(cLObject.get(str)));
                break;
            case "hBias":
                constraintReference.horizontalBias(constraintSetParser$LayoutVariables.get(cLObject.get(str)));
                break;
            case "vBias":
                constraintReference.verticalBias(constraintSetParser$LayoutVariables.get(cLObject.get(str)));
                break;
            case "width":
                constraintReference.setWidth(parseDimension(cLObject, str, state, state.getDpToPixel()));
                break;
            case "hWeight":
                constraintReference.setHorizontalChainWeight(constraintSetParser$LayoutVariables.get(cLObject.get(str)));
                break;
            case "centerHorizontally":
                String string3 = cLObject.getString(str);
                boolean zEquals2 = string3.equals("parent");
                Object obj2 = string3;
                if (zEquals2) {
                    obj2 = State.PARENT;
                }
                ConstraintReference constraintReferenceConstraints3 = state.constraints(obj2);
                constraintReference.startToStart(constraintReferenceConstraints3);
                constraintReference.endToEnd(constraintReferenceConstraints3);
                break;
            case "visibility":
                String string4 = cLObject.getString(str);
                string4.getClass();
                switch (string4) {
                    case "invisible":
                        constraintReference.visibility(4);
                        constraintReference.alpha(0.0f);
                        break;
                    case "gone":
                        constraintReference.visibility(8);
                        break;
                    case "visible":
                        constraintReference.visibility(0);
                        break;
                }
                break;
            default:
                parseConstraint(state, constraintSetParser$LayoutVariables, cLObject, constraintReference, str);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int indexOf(String str, String... strArr) {
        for (int i9 = 0; i9 < strArr.length; i9++) {
            if (strArr[i9].equals(str)) {
                return i9;
            }
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String lookForType(CLObject cLObject) {
        ArrayList<String> arrayListNames = cLObject.names();
        int size = arrayListNames.size();
        int i9 = 0;
        while (i9 < size) {
            String str = arrayListNames.get(i9);
            i9++;
            if (str.equals("type")) {
                return cLObject.getString("type");
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void override(CLObject cLObject, String str, CLObject cLObject2) throws CLParsingException {
        if (!cLObject.has(str)) {
            cLObject.put(str, cLObject2);
            return;
        }
        CLObject object = cLObject.getObject(str);
        ArrayList<String> arrayListNames = cLObject2.names();
        int size = arrayListNames.size();
        int i9 = 0;
        while (i9 < size) {
            String str2 = arrayListNames.get(i9);
            i9++;
            String str3 = str2;
            if (str3.equals("clear")) {
                CLArray array = cLObject2.getArray("clear");
                for (int i10 = 0; i10 < array.size(); i10++) {
                    String stringOrNull = array.getStringOrNull(i10);
                    if (stringOrNull != null) {
                        switch (stringOrNull) {
                            case "transforms":
                                object.remove("visibility");
                                object.remove("alpha");
                                object.remove("pivotX");
                                object.remove("pivotY");
                                object.remove("rotationX");
                                object.remove("rotationY");
                                object.remove("rotationZ");
                                object.remove("scaleX");
                                object.remove("scaleY");
                                object.remove("translationX");
                                object.remove("translationY");
                                break;
                            case "constraints":
                                object.remove("start");
                                object.remove("end");
                                object.remove("top");
                                object.remove("bottom");
                                object.remove("baseline");
                                object.remove("center");
                                object.remove("centerHorizontally");
                                object.remove("centerVertically");
                                break;
                            case "dimensions":
                                object.remove("width");
                                object.remove("height");
                                break;
                            default:
                                object.remove(stringOrNull);
                                break;
                        }
                    }
                }
            } else {
                object.put(str3, cLObject2.get(str3));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void parseBarrier(State state, String str, CLObject cLObject) throws CLParsingException {
        boolean zIsRtl = state.isRtl();
        BarrierReference barrierReferenceBarrier = state.barrier(str, State$Direction.END);
        ArrayList<String> arrayListNames = cLObject.names();
        if (arrayListNames == null) {
            return;
        }
        int size = arrayListNames.size();
        int i9 = 0;
        while (i9 < size) {
            String str2 = arrayListNames.get(i9);
            i9++;
            String str3 = str2;
            str3.getClass();
            switch (str3) {
                case "margin":
                    float floatOrNaN = cLObject.getFloatOrNaN(str3);
                    if (Float.isNaN(floatOrNaN)) {
                        break;
                    } else {
                        barrierReferenceBarrier.margin(Float.valueOf(toPix(state, floatOrNaN)));
                        break;
                    }
                    break;
                case "direction":
                    String string = cLObject.getString(str3);
                    string.getClass();
                    switch (string) {
                        case "bottom":
                            barrierReferenceBarrier.setBarrierDirection(State$Direction.BOTTOM);
                            break;
                        case "end":
                            if (zIsRtl) {
                                barrierReferenceBarrier.setBarrierDirection(State$Direction.LEFT);
                                break;
                            } else {
                                barrierReferenceBarrier.setBarrierDirection(State$Direction.RIGHT);
                                break;
                            }
                            break;
                        case "top":
                            barrierReferenceBarrier.setBarrierDirection(State$Direction.TOP);
                            break;
                        case "left":
                            barrierReferenceBarrier.setBarrierDirection(State$Direction.LEFT);
                            break;
                        case "right":
                            barrierReferenceBarrier.setBarrierDirection(State$Direction.RIGHT);
                            break;
                        case "start":
                            if (zIsRtl) {
                                barrierReferenceBarrier.setBarrierDirection(State$Direction.RIGHT);
                                break;
                            } else {
                                barrierReferenceBarrier.setBarrierDirection(State$Direction.LEFT);
                                break;
                            }
                            break;
                    }
                    break;
                case "contains":
                    CLArray arrayOrNull = cLObject.getArrayOrNull(str3);
                    if (arrayOrNull != null) {
                        for (int i10 = 0; i10 < arrayOrNull.size(); i10++) {
                            barrierReferenceBarrier.add(state.constraints(arrayOrNull.get(i10).content()));
                        }
                        break;
                    } else {
                        break;
                    }
                    break;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:29:0x0085  */
    public static void parseChain(int i9, State state, ConstraintSetParser$LayoutVariables constraintSetParser$LayoutVariables, CLArray cLArray) throws CLParsingException {
        String strContent;
        ChainReference chainReferenceHorizontalChain = i9 == 0 ? state.horizontalChain() : state.verticalChain();
        CLElement cLElement = cLArray.get(1);
        if (cLElement instanceof CLArray) {
            CLArray cLArray2 = (CLArray) cLElement;
            if (cLArray2.size() < 1) {
                return;
            }
            for (int i10 = 0; i10 < cLArray2.size(); i10++) {
                chainReferenceHorizontalChain.add(cLArray2.getString(i10));
            }
            if (cLArray.size() > 2) {
                CLElement cLElement2 = cLArray.get(2);
                if (cLElement2 instanceof CLObject) {
                    CLObject cLObject = (CLObject) cLElement2;
                    ArrayList<String> arrayListNames = cLObject.names();
                    int size = arrayListNames.size();
                    int i11 = 0;
                    while (i11 < size) {
                        String str = arrayListNames.get(i11);
                        i11++;
                        String str2 = str;
                        str2.getClass();
                        if (str2.equals("style")) {
                            CLElement cLElement3 = cLObject.get(str2);
                            if (cLElement3 instanceof CLArray) {
                                CLArray cLArray3 = (CLArray) cLElement3;
                                if (cLArray3.size() > 1) {
                                    strContent = cLArray3.getString(0);
                                    chainReferenceHorizontalChain.bias(cLArray3.getFloat(1));
                                } else {
                                    strContent = cLElement3.content();
                                }
                            } else {
                                strContent = cLElement3.content();
                            }
                            strContent.getClass();
                            if (strContent.equals("packed")) {
                                chainReferenceHorizontalChain.style(State$Chain.PACKED);
                            } else if (strContent.equals("spread_inside")) {
                                chainReferenceHorizontalChain.style(State$Chain.SPREAD_INSIDE);
                            } else {
                                chainReferenceHorizontalChain.style(State$Chain.SPREAD);
                            }
                        } else {
                            parseConstraint(state, constraintSetParser$LayoutVariables, cLObject, chainReferenceHorizontalChain, str2);
                        }
                    }
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:46:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:48:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:50:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:51:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:54:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:56:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:57:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:58:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:59:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:61:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:64:0x0105  */
    /* JADX WARN: Code duplicated, block: B:67:0x010c  */
    /* JADX WARN: Code duplicated, block: B:69:0x0114  */
    /* JADX WARN: Code duplicated, block: B:71:0x011c  */
    /* JADX WARN: Code duplicated, block: B:73:0x012c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x012e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:75:0x0130 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:76:0x0132  */
    /* JADX WARN: Code duplicated, block: B:78:0x0143  */
    /* JADX WARN: Code duplicated, block: B:79:0x0179  */
    /* JADX WARN: Code duplicated, block: B:81:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:82:0x01be  */
    /* JADX WARN: Code duplicated, block: B:84:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:85:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:89:0x021e  */
    /* JADX WARN: Code duplicated, block: B:93:0x0202 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:0x0202 A[SYNTHETIC] */
    private static void parseChainType(String str, State state, String str2, ConstraintSetParser$LayoutVariables constraintSetParser$LayoutVariables, CLObject cLObject) throws CLParsingException {
        int i9;
        int i10;
        boolean z8;
        float f8;
        float pix;
        float pix2;
        float pix3;
        String strContent;
        int i11 = 0;
        ChainReference chainReferenceHorizontalChain = str.charAt(0) == 'h' ? state.horizontalChain() : state.verticalChain();
        chainReferenceHorizontalChain.setKey(str2);
        ArrayList<String> arrayListNames = cLObject.names();
        int size = arrayListNames.size();
        int i12 = 0;
        while (i12 < size) {
            int i13 = i12 + 1;
            String str3 = arrayListNames.get(i12);
            str3.getClass();
            int i14 = 6;
            int i15 = 4;
            int i16 = 3;
            int i17 = 2;
            int i18 = -1;
            switch (str3) {
                case "bottom":
                    i18 = i11;
                case "contains":
                    i18 = 1;
                case "end":
                    i18 = 2;
                case "top":
                    i18 = 3;
                case "left":
                    i18 = 4;
                case "right":
                    i18 = 5;
                case "start":
                    i18 = 6;
                case "style":
                    i18 = 7;
                default:
                    switch (i18) {
                        case 0:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                            parseConstraint(state, constraintSetParser$LayoutVariables, cLObject, chainReferenceHorizontalChain, str3);
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            i12 = i13;
                            i11 = 0;
                            break;
                        case 1:
                            CLElement cLElement = cLObject.get(str3);
                            if (cLElement instanceof CLArray) {
                                CLArray cLArray = (CLArray) cLElement;
                                if (cLArray.size() >= 1) {
                                    int i19 = i11;
                                    while (i19 < cLArray.size()) {
                                        CLElement cLElement2 = cLArray.get(i19);
                                        if (cLElement2 instanceof CLArray) {
                                            CLArray cLArray2 = (CLArray) cLElement2;
                                            if (cLArray2.size() > 0) {
                                                String strContent2 = cLArray2.get(i11).content();
                                                int size2 = cLArray2.size();
                                                float f9 = Float.NaN;
                                                if (size2 != i17) {
                                                    if (size2 == i16) {
                                                        i10 = i17;
                                                        CLArray cLArray3 = cLArray;
                                                        f8 = cLArray2.getFloat(1);
                                                        cLArray = cLArray3;
                                                        i9 = i16;
                                                        z8 = true;
                                                        i15 = 4;
                                                        pix = toPix(state, cLArray2.getFloat(i10));
                                                        pix2 = pix;
                                                    } else if (size2 != i15) {
                                                        if (size2 != i14) {
                                                            i9 = i16;
                                                            i10 = i17;
                                                            strContent2 = strContent2;
                                                            f8 = Float.NaN;
                                                            pix = Float.NaN;
                                                            pix2 = Float.NaN;
                                                            f9 = Float.NaN;
                                                            pix3 = Float.NaN;
                                                        } else {
                                                            float f10 = cLArray2.getFloat(1);
                                                            float pix4 = toPix(state, cLArray2.getFloat(i17));
                                                            float pix5 = toPix(state, cLArray2.getFloat(i16));
                                                            float pix6 = toPix(state, cLArray2.getFloat(i15));
                                                            pix3 = toPix(state, cLArray2.getFloat(5));
                                                            strContent2 = strContent2;
                                                            f9 = pix6;
                                                            pix2 = pix5;
                                                            pix = pix4;
                                                            f8 = f10;
                                                            i10 = 2;
                                                            i9 = 3;
                                                        }
                                                        z8 = true;
                                                    } else {
                                                        float f11 = cLArray2.getFloat(1);
                                                        i10 = 2;
                                                        i9 = 3;
                                                        z8 = true;
                                                        i15 = 4;
                                                        pix = toPix(state, cLArray2.getFloat(2));
                                                        pix2 = toPix(state, cLArray2.getFloat(3));
                                                        cLArray = cLArray;
                                                        f8 = f11;
                                                    }
                                                    pix3 = f9;
                                                } else {
                                                    i10 = i17;
                                                    float f12 = cLArray2.getFloat(1);
                                                    CLArray cLArray4 = cLArray;
                                                    f8 = f12;
                                                    cLArray = cLArray4;
                                                    i9 = i16;
                                                    z8 = true;
                                                    strContent2 = strContent2;
                                                    pix = Float.NaN;
                                                    pix2 = Float.NaN;
                                                    f9 = Float.NaN;
                                                    pix3 = Float.NaN;
                                                    i15 = 4;
                                                }
                                                chainReferenceHorizontalChain.addChainElement(strContent2, f8, pix, pix2, f9, pix3);
                                            } else {
                                                cLArray = cLArray;
                                                i15 = i15;
                                                i9 = i16;
                                                i10 = i17;
                                                z8 = true;
                                            }
                                        } else {
                                            cLArray = cLArray;
                                            i15 = i15;
                                            i9 = i16;
                                            i10 = i17;
                                            z8 = true;
                                            chainReferenceHorizontalChain.add(cLElement2.content());
                                        }
                                        i19++;
                                        cLArray = cLArray;
                                        i17 = i10;
                                        i15 = i15;
                                        i16 = i9;
                                        i11 = 0;
                                        i14 = 6;
                                    }
                                    break;
                                }
                            }
                            PrintStream printStream = System.err;
                            StringBuilder sbW = ai.onnxruntime.a.w(str2, " contains should be an array \"");
                            sbW.append(cLElement.content());
                            sbW.append("\"");
                            printStream.println(sbW.toString());
                            return;
                        case 7:
                            CLElement cLElement3 = cLObject.get(str3);
                            if (cLElement3 instanceof CLArray) {
                                CLArray cLArray5 = (CLArray) cLElement3;
                                if (cLArray5.size() > 1) {
                                    strContent = cLArray5.getString(i11);
                                    chainReferenceHorizontalChain.bias(cLArray5.getFloat(1));
                                } else {
                                    strContent = cLElement3.content();
                                }
                            } else {
                                strContent = cLElement3.content();
                            }
                            strContent.getClass();
                            if (strContent.equals("packed")) {
                                chainReferenceHorizontalChain.style(State$Chain.PACKED);
                            } else if (!strContent.equals("spread_inside")) {
                                chainReferenceHorizontalChain.style(State$Chain.SPREAD);
                            } else {
                                chainReferenceHorizontalChain.style(State$Chain.SPREAD_INSIDE);
                            }
                            break;
                    }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long parseColorString(String str) {
        if (!str.startsWith("#")) {
            return -1L;
        }
        String strSubstring = str.substring(1);
        if (strSubstring.length() == 6) {
            strSubstring = "FF".concat(strSubstring);
        }
        return Long.parseLong(strSubstring, 16);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:106:0x0190  */
    /* JADX WARN: Code duplicated, block: B:128:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:167:0x0266  */
    /* JADX WARN: Code duplicated, block: B:20:0x0085  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:82:0x012d  */
    /* JADX WARN: Failed to find 'out' block for switch in B:53:0x00d0. Please report as an issue. */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    public static void parseConstraint(State state, ConstraintSetParser$LayoutVariables constraintSetParser$LayoutVariables, CLObject cLObject, ConstraintReference constraintReference, String str) throws CLParsingException {
        boolean z8;
        char c;
        boolean z9;
        boolean z10;
        ?? r16;
        boolean z11;
        boolean zIsRtl = state.isRtl();
        boolean z12 = !zIsRtl;
        CLArray arrayOrNull = cLObject.getArrayOrNull(str);
        if (arrayOrNull == null || arrayOrNull.size() <= 1) {
            String stringOrNull = cLObject.getStringOrNull(str);
            if (stringOrNull != null) {
                ConstraintReference constraintReferenceConstraints = stringOrNull.equals("parent") ? state.constraints(State.PARENT) : state.constraints(stringOrNull);
                str.getClass();
                switch (str) {
                    case "baseline":
                        state.baselineNeededFor(constraintReference.getKey());
                        state.baselineNeededFor(constraintReferenceConstraints.getKey());
                        constraintReference.baselineToBaseline(constraintReferenceConstraints);
                        break;
                    case "bottom":
                        constraintReference.bottomToBottom(constraintReferenceConstraints);
                        break;
                    case "end":
                        if (zIsRtl) {
                            constraintReference.leftToLeft(constraintReferenceConstraints);
                            break;
                        } else {
                            constraintReference.rightToRight(constraintReferenceConstraints);
                            break;
                        }
                        break;
                    case "top":
                        constraintReference.topToTop(constraintReferenceConstraints);
                        break;
                    case "start":
                        if (zIsRtl) {
                            constraintReference.rightToRight(constraintReferenceConstraints);
                            break;
                        } else {
                            constraintReference.leftToLeft(constraintReferenceConstraints);
                            break;
                        }
                        break;
                }
            }
            return;
        }
        String string = arrayOrNull.getString(0);
        String stringOrNull2 = arrayOrNull.getStringOrNull(1);
        float pix = arrayOrNull.size() > 2 ? toPix(state, constraintSetParser$LayoutVariables.get(arrayOrNull.getOrNull(2))) : 0.0f;
        float pix2 = arrayOrNull.size() > 3 ? toPix(state, constraintSetParser$LayoutVariables.get(arrayOrNull.getOrNull(3))) : 0.0f;
        ConstraintReference constraintReferenceConstraints2 = string.equals("parent") ? state.constraints(State.PARENT) : state.constraints(string);
        str.getClass();
        float f8 = pix;
        switch (str) {
            case "baseline":
                z8 = true;
                c = 2;
                stringOrNull2.getClass();
                switch (stringOrNull2) {
                    case "baseline":
                        state.baselineNeededFor(constraintReference.getKey());
                        state.baselineNeededFor(constraintReferenceConstraints2.getKey());
                        constraintReference.baselineToBaseline(constraintReferenceConstraints2);
                        break;
                    case "bottom":
                        state.baselineNeededFor(constraintReference.getKey());
                        constraintReference.baselineToBottom(constraintReferenceConstraints2);
                        break;
                    case "top":
                        state.baselineNeededFor(constraintReference.getKey());
                        constraintReference.baselineToTop(constraintReferenceConstraints2);
                        break;
                }
                z9 = z8;
                z10 = false;
                break;
            case "circular":
                z8 = true;
                c = 2;
                constraintReference.circularConstraint(constraintReferenceConstraints2, constraintSetParser$LayoutVariables.get(arrayOrNull.get(1)), arrayOrNull.size() > 2 ? toPix(state, constraintSetParser$LayoutVariables.get(arrayOrNull.getOrNull(2))) : 0.0f);
                z9 = z8;
                z10 = false;
                break;
            case "bottom":
                stringOrNull2.getClass();
                switch (stringOrNull2) {
                    case "baseline":
                        state.baselineNeededFor(constraintReferenceConstraints2.getKey());
                        constraintReference.bottomToBaseline(constraintReferenceConstraints2);
                        break;
                    case "bottom":
                        constraintReference.bottomToBottom(constraintReferenceConstraints2);
                        break;
                    case "top":
                        constraintReference.bottomToTop(constraintReferenceConstraints2);
                        break;
                }
                z8 = true;
                c = 2;
                z9 = z8;
                z10 = false;
                break;
            case "end":
                z9 = zIsRtl;
                z8 = true;
                c = 2;
                z10 = true;
                break;
            case "top":
                stringOrNull2.getClass();
                switch (stringOrNull2) {
                    case "baseline":
                        state.baselineNeededFor(constraintReferenceConstraints2.getKey());
                        constraintReference.topToBaseline(constraintReferenceConstraints2);
                        break;
                    case "bottom":
                        constraintReference.topToBottom(constraintReferenceConstraints2);
                        break;
                    case "top":
                        constraintReference.topToTop(constraintReferenceConstraints2);
                        break;
                }
                z8 = true;
                c = 2;
                z9 = z8;
                z10 = false;
                break;
            case "left":
                z9 = true;
                z8 = true;
                c = 2;
                z10 = true;
                break;
            case "right":
                z9 = false;
                z8 = true;
                c = 2;
                z10 = true;
                break;
            case "start":
                z9 = z12;
                z8 = true;
                c = 2;
                z10 = true;
                break;
            default:
                z8 = true;
                c = 2;
                z9 = z8;
                z10 = false;
                break;
        }
        if (z10) {
            stringOrNull2.getClass();
            switch (stringOrNull2.hashCode()) {
                case 100571:
                    if (!stringOrNull2.equals("end")) {
                        r16 = -1;
                    } else {
                        r16 = 0;
                    }
                    break;
                case 3317767:
                    if (!stringOrNull2.equals("left")) {
                        r16 = -1;
                    } else {
                        r16 = z8;
                    }
                    break;
                case 108511772:
                    if (!stringOrNull2.equals("right")) {
                        r16 = -1;
                    } else {
                        r16 = c;
                    }
                    break;
                case 109757538:
                    if (!stringOrNull2.equals("start")) {
                        r16 = -1;
                    } else {
                        r16 = 3;
                    }
                    break;
                default:
                    r16 = -1;
                    break;
            }
            switch (r16) {
                case 0:
                    z11 = zIsRtl;
                    break;
                case 1:
                default:
                    z11 = z8;
                    break;
                case 2:
                    z11 = false;
                    break;
                case 3:
                    z11 = z12;
                    break;
            }
            if (z9) {
                if (z11) {
                    constraintReference.leftToLeft(constraintReferenceConstraints2);
                } else {
                    constraintReference.leftToRight(constraintReferenceConstraints2);
                }
            } else if (z11) {
                constraintReference.rightToLeft(constraintReferenceConstraints2);
            } else {
                constraintReference.rightToRight(constraintReferenceConstraints2);
            }
        }
        constraintReference.margin(Float.valueOf(f8)).marginGone(Float.valueOf(pix2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void parseConstraintSets(CoreMotionScene coreMotionScene, CLObject cLObject) throws CLParsingException {
        ArrayList<String> arrayListNames = cLObject.names();
        if (arrayListNames == null) {
            return;
        }
        int size = arrayListNames.size();
        int i9 = 0;
        while (i9 < size) {
            String str = arrayListNames.get(i9);
            i9++;
            String str2 = str;
            CLObject object = cLObject.getObject(str2);
            String stringOrNull = object.getStringOrNull("Extends");
            if (stringOrNull == null || stringOrNull.isEmpty()) {
                coreMotionScene.setConstraintSetContent(str2, object.toJSON());
            } else {
                String constraintSet = coreMotionScene.getConstraintSet(stringOrNull);
                if (constraintSet != null) {
                    CLObject cLObject2 = CLParser.parse(constraintSet);
                    ArrayList<String> arrayListNames2 = object.names();
                    if (arrayListNames2 != null) {
                        int size2 = arrayListNames2.size();
                        int i10 = 0;
                        while (i10 < size2) {
                            String str3 = arrayListNames2.get(i10);
                            i10++;
                            String str4 = str3;
                            CLElement cLElement = object.get(str4);
                            if (cLElement instanceof CLObject) {
                                override(cLObject2, str4, (CLObject) cLElement);
                            }
                        }
                        coreMotionScene.setConstraintSetContent(str2, cLObject2.toJSON());
                    }
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void parseCustomProperties(CLObject cLObject, ConstraintReference constraintReference, String str) throws CLParsingException {
        ArrayList<String> arrayListNames;
        CLObject objectOrNull = cLObject.getObjectOrNull(str);
        if (objectOrNull == null || (arrayListNames = objectOrNull.names()) == null) {
            return;
        }
        int size = arrayListNames.size();
        int i9 = 0;
        while (i9 < size) {
            String str2 = arrayListNames.get(i9);
            i9++;
            String str3 = str2;
            CLElement cLElement = objectOrNull.get(str3);
            if (cLElement instanceof CLNumber) {
                constraintReference.addCustomFloat(str3, cLElement.getFloat());
            } else if (cLElement instanceof CLString) {
                long colorString = parseColorString(cLElement.content());
                if (colorString != -1) {
                    constraintReference.addCustomColor(str3, (int) colorString);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void parseDesignElementsJSON(String str, ArrayList<ConstraintSetParser$DesignElement> arrayList) throws CLParsingException {
        CLObject cLObject = CLParser.parse(str);
        ArrayList<String> arrayListNames = cLObject.names();
        if (arrayListNames != null && arrayListNames.size() > 0) {
            String str2 = arrayListNames.get(0);
            CLElement cLElement = cLObject.get(str2);
            str2.getClass();
            if (str2.equals("Design") && (cLElement instanceof CLObject)) {
                CLObject cLObject2 = (CLObject) cLElement;
                ArrayList<String> arrayListNames2 = cLObject2.names();
                for (int i9 = 0; i9 < arrayListNames2.size(); i9++) {
                    String str3 = arrayListNames2.get(i9);
                    CLObject cLObject3 = (CLObject) cLObject2.get(str3);
                    System.out.printf(ai.onnxruntime.a.m("element found ", str3, ""), new Object[0]);
                    String stringOrNull = cLObject3.getStringOrNull("type");
                    if (stringOrNull != null) {
                        HashMap map = new HashMap();
                        int size = cLObject3.size();
                        for (int i10 = 0; i10 < size; i10++) {
                            CLKey cLKey = (CLKey) cLObject3.get(i9);
                            String strContent = cLKey.content();
                            String strContent2 = cLKey.getValue().content();
                            if (strContent2 != null) {
                                map.put(strContent, strContent2);
                            }
                        }
                        arrayList.add(new ConstraintSetParser$DesignElement(str2, stringOrNull, map));
                    }
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Dimension parseDimension(CLObject cLObject, String str, State state, CorePixelDp corePixelDp) throws CLParsingException {
        CLElement cLElement = cLObject.get(str);
        Dimension dimensionCreateFixed = Dimension.createFixed(0);
        if (cLElement instanceof CLString) {
            return parseDimensionMode(cLElement.content());
        }
        if (cLElement instanceof CLNumber) {
            return Dimension.createFixed(state.convertDimension(Float.valueOf(corePixelDp.toPixels(cLObject.getFloat(str)))));
        }
        if (cLElement instanceof CLObject) {
            CLObject cLObject2 = (CLObject) cLElement;
            String stringOrNull = cLObject2.getStringOrNull("value");
            if (stringOrNull != null) {
                dimensionCreateFixed = parseDimensionMode(stringOrNull);
            }
            CLElement orNull = cLObject2.getOrNull("min");
            if (orNull != null) {
                if (orNull instanceof CLNumber) {
                    dimensionCreateFixed.min(state.convertDimension(Float.valueOf(corePixelDp.toPixels(((CLNumber) orNull).getFloat()))));
                } else if (orNull instanceof CLString) {
                    dimensionCreateFixed.min(Dimension.WRAP_DIMENSION);
                }
            }
            CLElement orNull2 = cLObject2.getOrNull("max");
            if (orNull2 != null) {
                if (orNull2 instanceof CLNumber) {
                    dimensionCreateFixed.max(state.convertDimension(Float.valueOf(corePixelDp.toPixels(((CLNumber) orNull2).getFloat()))));
                    return dimensionCreateFixed;
                }
                if (orNull2 instanceof CLString) {
                    dimensionCreateFixed.max(Dimension.WRAP_DIMENSION);
                }
            }
        }
        return dimensionCreateFixed;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Dimension parseDimensionMode(String str) {
        Dimension dimensionCreateFixed = Dimension.createFixed(0);
        str.getClass();
        switch (str) {
            case "preferWrap":
                return Dimension.createSuggested(Dimension.WRAP_DIMENSION);
            case "parent":
                return Dimension.createParent();
            case "spread":
                return Dimension.createSuggested(Dimension.SPREAD_DIMENSION);
            case "wrap":
                return Dimension.createWrap();
            default:
                if (str.endsWith("%")) {
                    return Dimension.createPercent(0, Float.parseFloat(str.substring(0, str.indexOf(37))) / 100.0f).suggested(0);
                }
                return str.contains(":") ? Dimension.createRatio(str).suggested(Dimension.SPREAD_DIMENSION) : dimensionCreateFixed;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:10:0x0040  */
    /* JADX WARN: Code duplicated, block: B:111:0x0228  */
    /* JADX WARN: Code duplicated, block: B:131:0x0294  */
    /* JADX WARN: Code duplicated, block: B:141:0x02f4  */
    /* JADX WARN: Code duplicated, block: B:153:0x0337  */
    /* JADX WARN: Code duplicated, block: B:181:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:197:0x0408  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static void parseFlowType(String str, State state, String str2, ConstraintSetParser$LayoutVariables constraintSetParser$LayoutVariables, CLObject cLObject) throws CLParsingException {
        int i9;
        int i10;
        int i11;
        String strContent;
        String string;
        String string2;
        Float fValueOf;
        Float fValueOf2;
        Float fValueOf3;
        int i12;
        String strContent2;
        String string3;
        String string4;
        float f8;
        float f9;
        float f10;
        float f11;
        Float fValueOf4;
        Float fValueOf5;
        Float fValueOf6;
        float f12;
        float pix;
        float pix2;
        float f13;
        float f14 = 0.5f;
        Float fValueOf7 = Float.valueOf(0.5f);
        int i13 = 0;
        int i14 = 1;
        FlowReference flow = state.getFlow(str2, str.charAt(0) == 'v');
        ArrayList<String> arrayListNames = cLObject.names();
        int size = arrayListNames.size();
        int i15 = 0;
        while (i15 < size) {
            String str3 = arrayListNames.get(i15);
            i15++;
            String str4 = str3;
            str4.getClass();
            int i16 = 3;
            float f15 = f14;
            int i17 = 2;
            switch (str4.hashCode()) {
                case -1254185091:
                    if (!str4.equals("hAlign")) {
                        i9 = -1;
                    } else {
                        i9 = i13;
                    }
                    break;
                case -1237307863:
                    if (!str4.equals("hStyle")) {
                        i9 = -1;
                    } else {
                        i9 = i14;
                    }
                    break;
                case -1198076529:
                    if (!str4.equals("hFlowBias")) {
                        i9 = -1;
                    } else {
                        i9 = 2;
                    }
                    break;
                case -853376977:
                    if (!str4.equals("vAlign")) {
                        i9 = -1;
                    } else {
                        i9 = 3;
                    }
                    break;
                case -836499749:
                    if (!str4.equals("vStyle")) {
                        i9 = -1;
                    } else {
                        i9 = 4;
                    }
                    break;
                case -806339567:
                    if (!str4.equals("padding")) {
                        i9 = -1;
                    } else {
                        i9 = 5;
                    }
                    break;
                case -732635235:
                    if (!str4.equals("vFlowBias")) {
                        i9 = -1;
                    } else {
                        i9 = 6;
                    }
                    break;
                case -567445985:
                    if (!str4.equals("contains")) {
                        i9 = -1;
                    } else {
                        i9 = 7;
                    }
                    break;
                case -488900360:
                    if (!str4.equals("maxElement")) {
                        i9 = -1;
                    } else {
                        i9 = 8;
                    }
                    break;
                case 3169614:
                    if (!str4.equals("hGap")) {
                        i9 = -1;
                    } else {
                        i9 = 9;
                    }
                    break;
                case 3575610:
                    if (!str4.equals("type")) {
                        i9 = -1;
                    } else {
                        i9 = 10;
                    }
                    break;
                case 3586688:
                    if (!str4.equals("vGap")) {
                        i9 = -1;
                    } else {
                        i9 = 11;
                    }
                    break;
                case 3657802:
                    if (!str4.equals("wrap")) {
                        i9 = -1;
                    } else {
                        i9 = 12;
                    }
                    break;
                default:
                    i9 = -1;
                    break;
            }
            switch (i9) {
                case 0:
                    String strContent3 = cLObject.get(str4).content();
                    strContent3.getClass();
                    if (strContent3.equals("end")) {
                        i10 = 0;
                        i11 = 1;
                        flow.setHorizontalAlign(1);
                    } else {
                        if (strContent3.equals("start")) {
                            i10 = 0;
                            flow.setHorizontalAlign(0);
                        } else {
                            flow.setHorizontalAlign(2);
                            i10 = 0;
                        }
                        i11 = 1;
                    }
                    i13 = i10;
                    i14 = i11;
                    f14 = f15;
                    break;
                case 1:
                    CLElement cLElement = cLObject.get(str4);
                    if (cLElement instanceof CLArray) {
                        CLArray cLArray = (CLArray) cLElement;
                        if (cLArray.size() > 1) {
                            string = cLArray.getString(0);
                            strContent = cLArray.getString(1);
                            string2 = cLArray.size() > 2 ? cLArray.getString(2) : "";
                        } else {
                            strContent = cLElement.content();
                            string = "";
                            string2 = string;
                        }
                    } else {
                        strContent = cLElement.content();
                        string = "";
                        string2 = string;
                    }
                    if (!strContent.equals("")) {
                        flow.setHorizontalStyle(State$Chain.getValueByString(strContent));
                    }
                    if (!string.equals("")) {
                        flow.setFirstHorizontalStyle(State$Chain.getValueByString(string));
                    }
                    if (!string2.equals("")) {
                        flow.setLastHorizontalStyle(State$Chain.getValueByString(string2));
                    }
                    i10 = 0;
                    i11 = 1;
                    i13 = i10;
                    i14 = i11;
                    f14 = f15;
                    break;
                case 2:
                    int i18 = i14;
                    CLElement cLElement2 = cLObject.get(str4);
                    if (cLElement2 instanceof CLArray) {
                        CLArray cLArray2 = (CLArray) cLElement2;
                        if (cLArray2.size() > i18) {
                            fValueOf2 = Float.valueOf(cLArray2.getFloat(0));
                            fValueOf = Float.valueOf(cLArray2.getFloat(i18));
                            fValueOf3 = cLArray2.size() > 2 ? Float.valueOf(cLArray2.getFloat(2)) : fValueOf7;
                        } else {
                            fValueOf = Float.valueOf(cLElement2.getFloat());
                            fValueOf2 = fValueOf7;
                            fValueOf3 = fValueOf2;
                        }
                    } else {
                        fValueOf = Float.valueOf(cLElement2.getFloat());
                        fValueOf2 = fValueOf7;
                        fValueOf3 = fValueOf2;
                    }
                    flow.horizontalBias(fValueOf.floatValue());
                    if (fValueOf2.floatValue() != f15) {
                        flow.setFirstHorizontalBias(fValueOf2.floatValue());
                    }
                    if (fValueOf3.floatValue() != f15) {
                        flow.setLastHorizontalBias(fValueOf3.floatValue());
                    }
                    i10 = 0;
                    i11 = 1;
                    i13 = i10;
                    i14 = i11;
                    f14 = f15;
                    break;
                case 3:
                    String strContent4 = cLObject.get(str4).content();
                    strContent4.getClass();
                    switch (strContent4) {
                        case "baseline":
                            i12 = 1;
                            flow.setVerticalAlign(3);
                            break;
                        case "bottom":
                            i12 = 1;
                            flow.setVerticalAlign(1);
                            break;
                        case "top":
                            flow.setVerticalAlign(0);
                            i12 = 1;
                            break;
                        default:
                            flow.setVerticalAlign(2);
                            i12 = 1;
                            break;
                    }
                    i11 = i12;
                    i10 = 0;
                    i13 = i10;
                    i14 = i11;
                    f14 = f15;
                    break;
                case 4:
                    CLElement cLElement3 = cLObject.get(str4);
                    if (cLElement3 instanceof CLArray) {
                        CLArray cLArray3 = (CLArray) cLElement3;
                        if (cLArray3.size() > 1) {
                            string3 = cLArray3.getString(0);
                            strContent2 = cLArray3.getString(1);
                            string4 = cLArray3.size() > 2 ? cLArray3.getString(2) : "";
                        } else {
                            strContent2 = cLElement3.content();
                            string3 = "";
                            string4 = string3;
                        }
                    } else {
                        strContent2 = cLElement3.content();
                        string3 = "";
                        string4 = string3;
                    }
                    if (!strContent2.equals("")) {
                        flow.setVerticalStyle(State$Chain.getValueByString(strContent2));
                    }
                    if (!string3.equals("")) {
                        flow.setFirstVerticalStyle(State$Chain.getValueByString(string3));
                    }
                    if (!string4.equals("")) {
                        flow.setLastVerticalStyle(State$Chain.getValueByString(string4));
                    }
                    i10 = 0;
                    i11 = 1;
                    i13 = i10;
                    i14 = i11;
                    f14 = f15;
                    break;
                case 5:
                    CLElement cLElement4 = cLObject.get(str4);
                    if (cLElement4 instanceof CLArray) {
                        CLArray cLArray4 = (CLArray) cLElement4;
                        if (cLArray4.size() > 1) {
                            f8 = cLArray4.getInt(0);
                            f11 = cLArray4.getInt(1);
                            if (cLArray4.size() > 2) {
                                f10 = cLArray4.getInt(2);
                                try {
                                    f9 = ((CLArray) cLElement4).getInt(3);
                                } catch (ArrayIndexOutOfBoundsException unused) {
                                    f9 = 0.0f;
                                }
                            } else {
                                f10 = f8;
                                f9 = f11;
                            }
                        } else {
                            f8 = cLElement4.getInt();
                            f9 = f8;
                            f10 = f9;
                            f11 = f10;
                        }
                    } else {
                        f8 = cLElement4.getInt();
                        f9 = f8;
                        f10 = f9;
                        f11 = f10;
                    }
                    flow.setPaddingLeft(Math.round(toPix(state, f8)));
                    flow.setPaddingTop(Math.round(toPix(state, f11)));
                    flow.setPaddingRight(Math.round(toPix(state, f10)));
                    flow.setPaddingBottom(Math.round(toPix(state, f9)));
                    i10 = 0;
                    i11 = 1;
                    i13 = i10;
                    i14 = i11;
                    f14 = f15;
                    break;
                case 6:
                    CLElement cLElement5 = cLObject.get(str4);
                    if (cLElement5 instanceof CLArray) {
                        CLArray cLArray5 = (CLArray) cLElement5;
                        if (cLArray5.size() > 1) {
                            fValueOf5 = Float.valueOf(cLArray5.getFloat(0));
                            fValueOf4 = Float.valueOf(cLArray5.getFloat(1));
                            fValueOf6 = cLArray5.size() > 2 ? Float.valueOf(cLArray5.getFloat(2)) : fValueOf7;
                        } else {
                            fValueOf4 = Float.valueOf(cLElement5.getFloat());
                            fValueOf5 = fValueOf7;
                            fValueOf6 = fValueOf5;
                        }
                    } else {
                        fValueOf4 = Float.valueOf(cLElement5.getFloat());
                        fValueOf5 = fValueOf7;
                        fValueOf6 = fValueOf5;
                    }
                    try {
                        flow.verticalBias(fValueOf4.floatValue());
                        if (fValueOf5.floatValue() != f15) {
                            flow.setFirstVerticalBias(fValueOf5.floatValue());
                        }
                        if (fValueOf6.floatValue() != f15) {
                            flow.setLastVerticalBias(fValueOf6.floatValue());
                        }
                    } catch (NumberFormatException unused2) {
                    }
                    i10 = 0;
                    i11 = 1;
                    i13 = i10;
                    i14 = i11;
                    f14 = f15;
                    break;
                case 7:
                    CLElement cLElement6 = cLObject.get(str4);
                    if (cLElement6 instanceof CLArray) {
                        CLArray cLArray6 = (CLArray) cLElement6;
                        if (cLArray6.size() >= i14) {
                            int i19 = i13;
                            while (i19 < cLArray6.size()) {
                                CLElement cLElement7 = cLArray6.get(i19);
                                if (cLElement7 instanceof CLArray) {
                                    CLArray cLArray7 = (CLArray) cLElement7;
                                    if (cLArray7.size() > 0) {
                                        String strContent5 = cLArray7.get(i13).content();
                                        int size2 = cLArray7.size();
                                        if (size2 != i17) {
                                            if (size2 == i16) {
                                                f13 = cLArray7.getFloat(1);
                                                pix = toPix(state, cLArray7.getFloat(2));
                                                pix2 = pix;
                                            } else if (size2 != 4) {
                                                f12 = Float.NaN;
                                                pix = Float.NaN;
                                            } else {
                                                f13 = cLArray7.getFloat(1);
                                                pix2 = toPix(state, cLArray7.getFloat(i17));
                                                pix = toPix(state, cLArray7.getFloat(3));
                                            }
                                            f12 = f13;
                                            flow.addFlowElement(strContent5, f12, pix2, pix);
                                        } else {
                                            f12 = cLArray7.getFloat(1);
                                            pix = Float.NaN;
                                        }
                                        pix2 = pix;
                                        flow.addFlowElement(strContent5, f12, pix2, pix);
                                    }
                                } else {
                                    flow.add(cLElement7.content());
                                }
                                i19++;
                                i17 = 2;
                                i13 = 0;
                                i14 = 1;
                                i16 = 3;
                            }
                            i11 = i14;
                            i10 = i13;
                            i13 = i10;
                            i14 = i11;
                            f14 = f15;
                            break;
                        }
                    }
                    PrintStream printStream = System.err;
                    StringBuilder sbW = ai.onnxruntime.a.w(str2, " contains should be an array \"");
                    sbW.append(cLElement6.content());
                    sbW.append("\"");
                    printStream.println(sbW.toString());
                    break;
                case 8:
                    flow.setMaxElementsWrap(cLObject.get(str4).getInt());
                    i11 = i14;
                    i10 = i13;
                    i13 = i10;
                    i14 = i11;
                    f14 = f15;
                    break;
                case 9:
                    flow.setHorizontalGap(cLObject.get(str4).getInt());
                    i11 = i14;
                    i10 = i13;
                    i13 = i10;
                    i14 = i11;
                    f14 = f15;
                    break;
                case 10:
                    if (cLObject.get(str4).content().equals("hFlow")) {
                        flow.setOrientation(i13);
                    } else {
                        flow.setOrientation(i14);
                    }
                    i11 = i14;
                    i10 = i13;
                    i13 = i10;
                    i14 = i11;
                    f14 = f15;
                    break;
                case 11:
                    flow.setVerticalGap(cLObject.get(str4).getInt());
                    i11 = i14;
                    i10 = i13;
                    i13 = i10;
                    i14 = i11;
                    f14 = f15;
                    break;
                case 12:
                    flow.setWrapMode(State$Wrap.getValueByString(cLObject.get(str4).content()));
                    i11 = i14;
                    i10 = i13;
                    i13 = i10;
                    i14 = i11;
                    f14 = f15;
                    break;
                default:
                    applyAttribute(state, constraintSetParser$LayoutVariables, state.constraints(str2), cLObject, str4);
                    i11 = i14;
                    i10 = i13;
                    i13 = i10;
                    i14 = i11;
                    f14 = f15;
                    break;
            }
            return;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void parseGenerate(State state, ConstraintSetParser$LayoutVariables constraintSetParser$LayoutVariables, CLObject cLObject) throws CLParsingException {
        ArrayList<String> arrayListNames = cLObject.names();
        if (arrayListNames == null) {
            return;
        }
        int size = arrayListNames.size();
        int i9 = 0;
        while (i9 < size) {
            String str = arrayListNames.get(i9);
            i9++;
            String str2 = str;
            CLElement cLElement = cLObject.get(str2);
            ArrayList<String> list = constraintSetParser$LayoutVariables.getList(str2);
            if (list != null && (cLElement instanceof CLObject)) {
                int size2 = list.size();
                int i10 = 0;
                while (i10 < size2) {
                    String str3 = list.get(i10);
                    i10++;
                    parseWidget(state, constraintSetParser$LayoutVariables, str3, (CLObject) cLElement);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:118:0x01ed  */
    private static void parseGridType(String str, State state, String str2, ConstraintSetParser$LayoutVariables constraintSetParser$LayoutVariables, CLObject cLObject) throws CLParsingException {
        float f8;
        float f9;
        float f10;
        float f11;
        int i9;
        GridReference grid = state.getGrid(str2, str);
        ArrayList<String> arrayListNames = cLObject.names();
        int size = arrayListNames.size();
        int i10 = 0;
        while (i10 < size) {
            String str3 = arrayListNames.get(i10);
            i10++;
            String str4 = str3;
            str4.getClass();
            switch (str4) {
                case "orientation":
                    grid.setOrientation(cLObject.get(str4).getInt());
                    break;
                case "padding":
                    CLElement cLElement = cLObject.get(str4);
                    if (cLElement instanceof CLArray) {
                        CLArray cLArray = (CLArray) cLElement;
                        if (cLArray.size() > 1) {
                            f8 = cLArray.getInt(0);
                            f11 = cLArray.getInt(1);
                            if (cLArray.size() > 2) {
                                f10 = cLArray.getInt(2);
                                try {
                                    f9 = ((CLArray) cLElement).getInt(3);
                                } catch (ArrayIndexOutOfBoundsException unused) {
                                    f9 = 0.0f;
                                }
                            } else {
                                f9 = f11;
                                f10 = f8;
                            }
                        } else {
                            f8 = cLElement.getInt();
                            f9 = f8;
                            f10 = f9;
                            f11 = f10;
                        }
                    } else {
                        f8 = cLElement.getInt();
                        f9 = f8;
                        f10 = f9;
                        f11 = f10;
                    }
                    grid.setPaddingStart(Math.round(toPix(state, f8)));
                    grid.setPaddingTop(Math.round(toPix(state, f11)));
                    grid.setPaddingEnd(Math.round(toPix(state, f10)));
                    grid.setPaddingBottom(Math.round(toPix(state, f9)));
                    break;
                case "contains":
                    CLArray arrayOrNull = cLObject.getArrayOrNull(str4);
                    if (arrayOrNull != null) {
                        for (int i11 = 0; i11 < arrayOrNull.size(); i11++) {
                            grid.add(state.constraints(arrayOrNull.get(i11).content()));
                        }
                        break;
                    } else {
                        break;
                    }
                    break;
                case "hGap":
                    grid.setHorizontalGaps(toPix(state, cLObject.get(str4).getFloat()));
                    break;
                case "rows":
                    int i12 = cLObject.get(str4).getInt();
                    if (i12 > 0) {
                        grid.setRowsSet(i12);
                        break;
                    } else {
                        break;
                    }
                    break;
                case "vGap":
                    grid.setVerticalGaps(toPix(state, cLObject.get(str4).getFloat()));
                    break;
                case "flags":
                    String strContent = "";
                    try {
                        CLElement cLElement2 = cLObject.get(str4);
                        if (cLElement2 instanceof CLNumber) {
                            i9 = cLElement2.getInt();
                        } else {
                            strContent = cLElement2.content();
                            i9 = 0;
                        }
                    } catch (Exception e) {
                        System.err.println("Error parsing grid flags " + e);
                    }
                    if (strContent != null && !strContent.isEmpty()) {
                        grid.setFlags(strContent);
                        break;
                    } else {
                        grid.setFlags(i9);
                        break;
                    }
                    break;
                case "skips":
                    String strContent2 = cLObject.get(str4).content();
                    if (strContent2 == null || !strContent2.contains(":")) {
                        break;
                    } else {
                        grid.setSkips(strContent2);
                        break;
                    }
                    break;
                case "spans":
                    String strContent3 = cLObject.get(str4).content();
                    if (strContent3 == null || !strContent3.contains(":")) {
                        break;
                    } else {
                        grid.setSpans(strContent3);
                        break;
                    }
                    break;
                case "rowWeights":
                    String strContent4 = cLObject.get(str4).content();
                    if (strContent4 == null || !strContent4.contains(",")) {
                        break;
                    } else {
                        grid.setRowWeights(strContent4);
                        break;
                    }
                    break;
                case "columns":
                    int i13 = cLObject.get(str4).getInt();
                    if (i13 > 0) {
                        grid.setColumnsSet(i13);
                        break;
                    } else {
                        break;
                    }
                    break;
                case "columnWeights":
                    String strContent5 = cLObject.get(str4).content();
                    if (strContent5 == null || !strContent5.contains(",")) {
                        break;
                    } else {
                        grid.setColumnWeights(strContent5);
                        break;
                    }
                    break;
                default:
                    applyAttribute(state, constraintSetParser$LayoutVariables, state.constraints(str2), cLObject, str4);
                    break;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void parseGuideline(int i9, State state, CLArray cLArray) throws CLParsingException {
        CLObject cLObject;
        String stringOrNull;
        CLElement cLElement = cLArray.get(1);
        if ((cLElement instanceof CLObject) && (stringOrNull = (cLObject = (CLObject) cLElement).getStringOrNull("id")) != null) {
            parseGuidelineParams(i9, state, stringOrNull, cLObject);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void parseGuidelineParams(int i9, State state, String str, CLObject cLObject) throws CLParsingException {
        float pix;
        ArrayList<String> arrayListNames = cLObject.names();
        if (arrayListNames == null) {
            return;
        }
        ConstraintReference constraintReferenceConstraints = state.constraints(str);
        if (i9 == 0) {
            state.horizontalGuideline(str);
        } else {
            state.verticalGuideline(str);
        }
        boolean z8 = !state.isRtl() || i9 == 0;
        GuidelineReference guidelineReference = (GuidelineReference) constraintReferenceConstraints.getFacade();
        int size = arrayListNames.size();
        float pix2 = 0.0f;
        boolean z9 = false;
        boolean z10 = true;
        int i10 = 0;
        while (i10 < size) {
            String str2 = arrayListNames.get(i10);
            i10++;
            String str3 = str2;
            str3.getClass();
            switch (str3) {
                case "percent":
                    CLArray arrayOrNull = cLObject.getArrayOrNull(str3);
                    if (arrayOrNull != null) {
                        if (arrayOrNull.size() > 1) {
                            String string = arrayOrNull.getString(0);
                            float f8 = arrayOrNull.getFloat(1);
                            string.getClass();
                            switch (string) {
                                case "end":
                                    z10 = !z8;
                                    pix2 = f8;
                                    break;
                                case "left":
                                    pix2 = f8;
                                    z9 = true;
                                    z10 = true;
                                    break;
                                case "right":
                                    pix2 = f8;
                                    z10 = false;
                                    break;
                                case "start":
                                    z10 = z8;
                                    pix2 = f8;
                                    break;
                                default:
                                    pix2 = f8;
                                    break;
                            }
                        }
                        z9 = true;
                        break;
                    } else {
                        pix2 = cLObject.getFloat(str3);
                        z9 = true;
                        z10 = true;
                        break;
                    }
                    break;
                case "end":
                    pix = toPix(state, cLObject.getFloat(str3));
                    z10 = !z8;
                    pix2 = pix;
                    break;
                case "left":
                    pix2 = toPix(state, cLObject.getFloat(str3));
                    z10 = true;
                    break;
                case "right":
                    pix2 = toPix(state, cLObject.getFloat(str3));
                    z10 = false;
                    break;
                case "start":
                    pix = toPix(state, cLObject.getFloat(str3));
                    z10 = z8;
                    pix2 = pix;
                    break;
                default:
                    break;
            }
        }
        if (z9) {
            if (z10) {
                guidelineReference.percent(pix2);
                return;
            } else {
                guidelineReference.percent(1.0f - pix2);
                return;
            }
        }
        if (z10) {
            guidelineReference.start(Float.valueOf(pix2));
        } else {
            guidelineReference.end(Float.valueOf(pix2));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void parseHeader(CoreMotionScene coreMotionScene, CLObject cLObject) {
        String stringOrNull = cLObject.getStringOrNull("export");
        if (stringOrNull != null) {
            coreMotionScene.setDebugName(stringOrNull);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void parseHelpers(State state, ConstraintSetParser$LayoutVariables constraintSetParser$LayoutVariables, CLArray cLArray) throws CLParsingException {
        for (int i9 = 0; i9 < cLArray.size(); i9++) {
            CLElement cLElement = cLArray.get(i9);
            if (cLElement instanceof CLArray) {
                CLArray cLArray2 = (CLArray) cLElement;
                if (cLArray2.size() > 1) {
                    String string = cLArray2.getString(0);
                    string.getClass();
                    switch (string) {
                        case "vGuideline":
                            parseGuideline(1, state, cLArray2);
                            break;
                        case "hChain":
                            parseChain(0, state, constraintSetParser$LayoutVariables, cLArray2);
                            break;
                        case "vChain":
                            parseChain(1, state, constraintSetParser$LayoutVariables, cLArray2);
                            break;
                        case "hGuideline":
                            parseGuideline(0, state, cLArray2);
                            break;
                    }
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void parseJSON(String str, Transition transition, int i9) {
        CLObject objectOrNull;
        try {
            CLObject cLObject = CLParser.parse(str);
            ArrayList<String> arrayListNames = cLObject.names();
            if (arrayListNames == null) {
                return;
            }
            int size = arrayListNames.size();
            int i10 = 0;
            while (i10 < size) {
                String str2 = arrayListNames.get(i10);
                i10++;
                String str3 = str2;
                CLElement cLElement = cLObject.get(str3);
                if ((cLElement instanceof CLObject) && (objectOrNull = ((CLObject) cLElement).getObjectOrNull("custom")) != null) {
                    ArrayList<String> arrayListNames2 = objectOrNull.names();
                    int size2 = arrayListNames2.size();
                    int i11 = 0;
                    while (i11 < size2) {
                        String str4 = arrayListNames2.get(i11);
                        i11++;
                        String str5 = str4;
                        CLElement cLElement2 = objectOrNull.get(str5);
                        if (cLElement2 instanceof CLNumber) {
                            transition.addCustomFloat(i9, str3, str5, cLElement2.getFloat());
                        } else if (cLElement2 instanceof CLString) {
                            long colorString = parseColorString(cLElement2.content());
                            if (colorString != -1) {
                                transition.addCustomColor(i9, str3, str5, (int) colorString);
                            }
                        }
                    }
                }
            }
        } catch (CLParsingException e) {
            System.err.println("Error parsing JSON " + e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void parseMotionProperties(CLElement cLElement, ConstraintReference constraintReference) throws CLParsingException {
        if (cLElement instanceof CLObject) {
            CLObject cLObject = (CLObject) cLElement;
            TypedBundle typedBundle = new TypedBundle();
            ArrayList<String> arrayListNames = cLObject.names();
            if (arrayListNames == null) {
                return;
            }
            int size = arrayListNames.size();
            int i9 = 0;
            while (i9 < size) {
                String str = arrayListNames.get(i9);
                i9++;
                String str2 = str;
                str2.getClass();
                switch (str2) {
                    case "stagger":
                        typedBundle.add(600, cLObject.getFloat(str2));
                        break;
                    case "easing":
                        typedBundle.add(TypedValues$MotionType.TYPE_EASING, cLObject.getString(str2));
                        break;
                    case "quantize":
                        CLElement cLElement2 = cLObject.get(str2);
                        if (cLElement2 instanceof CLArray) {
                            CLArray cLArray = (CLArray) cLElement2;
                            int size2 = cLArray.size();
                            if (size2 > 0) {
                                typedBundle.add(TypedValues$MotionType.TYPE_QUANTIZE_MOTIONSTEPS, cLArray.getInt(0));
                                if (size2 > 1) {
                                    typedBundle.add(TypedValues$MotionType.TYPE_QUANTIZE_INTERPOLATOR_TYPE, cLArray.getString(1));
                                    if (size2 > 2) {
                                        typedBundle.add(TypedValues$MotionType.TYPE_QUANTIZE_MOTION_PHASE, cLArray.getFloat(2));
                                    }
                                }
                            }
                            break;
                        } else {
                            typedBundle.add(TypedValues$MotionType.TYPE_QUANTIZE_MOTIONSTEPS, cLObject.getInt(str2));
                            break;
                        }
                        break;
                    case "pathArc":
                        String string = cLObject.getString(str2);
                        int iIndexOf = indexOf(string, "none", "startVertical", "startHorizontal", "flip", "below", "above");
                        if (iIndexOf == -1) {
                            System.err.println(cLObject.getLine() + " pathArc = '" + string + "'");
                            break;
                        } else {
                            typedBundle.add(TypedValues$MotionType.TYPE_PATHMOTION_ARC, iIndexOf);
                            break;
                        }
                        break;
                    case "relativeTo":
                        typedBundle.add(TypedValues$MotionType.TYPE_ANIMATE_RELATIVE_TO, cLObject.getString(str2));
                        break;
                }
            }
            constraintReference.mMotionProperties = typedBundle;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void parseMotionSceneJSON(CoreMotionScene coreMotionScene, String str) {
        try {
            CLObject cLObject = CLParser.parse(str);
            ArrayList<String> arrayListNames = cLObject.names();
            if (arrayListNames == null) {
                return;
            }
            int size = arrayListNames.size();
            int i9 = 0;
            while (i9 < size) {
                String str2 = arrayListNames.get(i9);
                i9++;
                String str3 = str2;
                CLElement cLElement = cLObject.get(str3);
                if (cLElement instanceof CLObject) {
                    CLObject cLObject2 = (CLObject) cLElement;
                    int iHashCode = str3.hashCode();
                    if (iHashCode != -2137403731) {
                        if (iHashCode != -241441378) {
                            if (iHashCode == 1101852654 && str3.equals("ConstraintSets")) {
                                parseConstraintSets(coreMotionScene, cLObject2);
                            }
                        } else if (str3.equals(TypedValues$TransitionType.NAME)) {
                            parseTransitions(coreMotionScene, cLObject2);
                        }
                    } else if (str3.equals("Header")) {
                        parseHeader(coreMotionScene, cLObject2);
                    }
                }
            }
        } catch (CLParsingException e) {
            System.err.println("Error parsing JSON " + e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void parseTransitions(CoreMotionScene coreMotionScene, CLObject cLObject) {
        ArrayList<String> arrayListNames = cLObject.names();
        if (arrayListNames == null) {
            return;
        }
        int size = arrayListNames.size();
        int i9 = 0;
        while (i9 < size) {
            String str = arrayListNames.get(i9);
            i9++;
            String str2 = str;
            coreMotionScene.setTransitionContent(str2, cLObject.getObject(str2).toJSON());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void parseVariables(State state, ConstraintSetParser$LayoutVariables constraintSetParser$LayoutVariables, CLObject cLObject) throws CLParsingException {
        ArrayList<String> arrayListNames = cLObject.names();
        if (arrayListNames == null) {
            return;
        }
        int size = arrayListNames.size();
        int i9 = 0;
        while (i9 < size) {
            String str = arrayListNames.get(i9);
            i9++;
            String str2 = str;
            CLElement cLElement = cLObject.get(str2);
            if (cLElement instanceof CLNumber) {
                constraintSetParser$LayoutVariables.put(str2, cLElement.getInt());
            } else if (cLElement instanceof CLObject) {
                CLObject cLObject2 = (CLObject) cLElement;
                if (cLObject2.has(TypedValues$TransitionType.S_FROM) && cLObject2.has(TypedValues$TransitionType.S_TO)) {
                    constraintSetParser$LayoutVariables.put(str2, constraintSetParser$LayoutVariables.get(cLObject2.get(TypedValues$TransitionType.S_FROM)), constraintSetParser$LayoutVariables.get(cLObject2.get(TypedValues$TransitionType.S_TO)), 1.0f, cLObject2.getStringOrNull("prefix"), cLObject2.getStringOrNull("postfix"));
                } else if (cLObject2.has(TypedValues$TransitionType.S_FROM) && cLObject2.has("step")) {
                    constraintSetParser$LayoutVariables.put(str2, constraintSetParser$LayoutVariables.get(cLObject2.get(TypedValues$TransitionType.S_FROM)), constraintSetParser$LayoutVariables.get(cLObject2.get("step")));
                } else if (cLObject2.has("ids")) {
                    CLArray array = cLObject2.getArray("ids");
                    ArrayList<String> arrayList = new ArrayList<>();
                    for (int i10 = 0; i10 < array.size(); i10++) {
                        arrayList.add(array.getString(i10));
                    }
                    constraintSetParser$LayoutVariables.put(str2, arrayList);
                } else if (cLObject2.has("tag")) {
                    constraintSetParser$LayoutVariables.put(str2, state.getIdsForTag(cLObject2.getString("tag")));
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void parseWidget(State state, ConstraintSetParser$LayoutVariables constraintSetParser$LayoutVariables, ConstraintReference constraintReference, CLObject cLObject) throws CLParsingException {
        if (constraintReference.getWidth() == null) {
            constraintReference.setWidth(Dimension.createWrap());
        }
        if (constraintReference.getHeight() == null) {
            constraintReference.setHeight(Dimension.createWrap());
        }
        ArrayList<String> arrayListNames = cLObject.names();
        if (arrayListNames == null) {
            return;
        }
        int size = arrayListNames.size();
        int i9 = 0;
        while (i9 < size) {
            String str = arrayListNames.get(i9);
            i9++;
            applyAttribute(state, constraintSetParser$LayoutVariables, constraintReference, cLObject, str);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static void populateState(@NonNull CLObject cLObject, @NonNull State state, @NonNull ConstraintSetParser$LayoutVariables constraintSetParser$LayoutVariables) throws CLParsingException {
        ArrayList<String> arrayListNames = cLObject.names();
        if (arrayListNames == null) {
            return;
        }
        int size = arrayListNames.size();
        int i9 = 0;
        while (i9 < size) {
            String str = arrayListNames.get(i9);
            i9++;
            String str2 = str;
            CLElement cLElement = cLObject.get(str2);
            str2.getClass();
            switch (str2) {
                case "Helpers":
                    if (cLElement instanceof CLArray) {
                        parseHelpers(state, constraintSetParser$LayoutVariables, (CLArray) cLElement);
                        break;
                    } else {
                        break;
                    }
                    break;
                case "Generate":
                    if (cLElement instanceof CLObject) {
                        parseGenerate(state, constraintSetParser$LayoutVariables, (CLObject) cLElement);
                        break;
                    } else {
                        break;
                    }
                    break;
                case "Variables":
                    if (cLElement instanceof CLObject) {
                        parseVariables(state, constraintSetParser$LayoutVariables, (CLObject) cLElement);
                        break;
                    } else {
                        break;
                    }
                    break;
                default:
                    if (cLElement instanceof CLObject) {
                        CLObject cLObject2 = (CLObject) cLElement;
                        String strLookForType = lookForType(cLObject2);
                        if (strLookForType != null) {
                            switch (strLookForType) {
                                case "vGuideline":
                                    parseGuidelineParams(1, state, str2, cLObject2);
                                    break;
                                case "column":
                                case "row":
                                case "grid":
                                    parseGridType(strLookForType, state, str2, constraintSetParser$LayoutVariables, cLObject2);
                                    break;
                                case "hChain":
                                case "vChain":
                                    parseChainType(strLookForType, state, str2, constraintSetParser$LayoutVariables, cLObject2);
                                    break;
                                case "barrier":
                                    parseBarrier(state, str2, cLObject2);
                                    break;
                                case "hFlow":
                                case "vFlow":
                                    parseFlowType(strLookForType, state, str2, constraintSetParser$LayoutVariables, cLObject2);
                                    break;
                                case "hGuideline":
                                    parseGuidelineParams(0, state, str2, cLObject2);
                                    break;
                            }
                        } else {
                            parseWidget(state, constraintSetParser$LayoutVariables, str2, cLObject2);
                            break;
                        }
                    } else {
                        if (cLElement instanceof CLNumber) {
                            constraintSetParser$LayoutVariables.put(str2, cLElement.getInt());
                        }
                        break;
                    }
                    break;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static float toPix(State state, float f8) {
        return state.getDpToPixel().toPixels(f8);
    }

    public static void parseWidget(State state, ConstraintSetParser$LayoutVariables constraintSetParser$LayoutVariables, String str, CLObject cLObject) throws CLParsingException {
        parseWidget(state, constraintSetParser$LayoutVariables, state.constraints(str), cLObject);
    }

    public static void parseJSON(String str, State state, ConstraintSetParser$LayoutVariables constraintSetParser$LayoutVariables) {
        try {
            populateState(CLParser.parse(str), state, constraintSetParser$LayoutVariables);
        } catch (CLParsingException e) {
            System.err.println("Error parsing JSON " + e);
        }
    }
}

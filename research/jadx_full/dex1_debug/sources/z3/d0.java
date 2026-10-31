package z3;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources$Theme;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.TypedValue;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f6209a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public n.p f6210b;
    public int[][] c;
    public n.p[] d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:28:0x0069  */
    public final void a(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources$Theme resources$Theme) throws XmlPullParserException, IOException {
        c0 c0Var;
        int depth = xmlResourceParser.getDepth() + 1;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1) {
                return;
            }
            int depth2 = xmlResourceParser.getDepth();
            if (depth2 < depth && next == 3) {
                return;
            }
            if (next == 2 && depth2 <= depth && xmlResourceParser.getName().equals("item")) {
                Resources resources = context.getResources();
                int[] iArr = a3.a.H;
                TypedArray typedArrayObtainAttributes = resources$Theme == null ? resources.obtainAttributes(attributeSet, iArr) : resources$Theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
                TypedValue typedValuePeekValue = typedArrayObtainAttributes.peekValue(0);
                if (typedValuePeekValue != null) {
                    int i9 = typedValuePeekValue.type;
                    if (i9 == 5) {
                        c0Var = new c0(2, TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArrayObtainAttributes.getResources().getDisplayMetrics()));
                    } else if (i9 == 6) {
                        c0Var = new c0(1, typedValuePeekValue.getFraction(1.0f, 1.0f));
                    } else {
                        c0Var = null;
                    }
                } else {
                    c0Var = null;
                }
                typedArrayObtainAttributes.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr2 = new int[attributeCount];
                int i10 = 0;
                for (int i11 = 0; i11 < attributeCount; i11++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i11);
                    if (attributeNameResource != 2130904672) {
                        int i12 = i10 + 1;
                        if (!attributeSet.getAttributeBooleanValue(i11, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr2[i10] = attributeNameResource;
                        i10 = i12;
                    }
                }
                int[] iArrTrimStateSet = StateSet.trimStateSet(iArr2, i10);
                n.p pVar = new n.p(19);
                pVar.c = c0Var;
                int i13 = this.f6209a;
                if (i13 == 0 || iArrTrimStateSet.length == 0) {
                    this.f6210b = pVar;
                }
                int[][] iArr3 = this.c;
                if (i13 >= iArr3.length) {
                    int i14 = i13 + 10;
                    int[][] iArr4 = new int[i14][];
                    System.arraycopy(iArr3, 0, iArr4, 0, i13);
                    this.c = iArr4;
                    n.p[] pVarArr = new n.p[i14];
                    System.arraycopy(this.d, 0, pVarArr, 0, i13);
                    this.d = pVarArr;
                }
                int[][] iArr5 = this.c;
                int i15 = this.f6209a;
                iArr5[i15] = iArrTrimStateSet;
                this.d[i15] = pVar;
                this.f6209a = i15 + 1;
            }
        }
    }
}

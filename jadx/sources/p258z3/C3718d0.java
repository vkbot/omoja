package p258z3;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.TypedValue;
import com.example.navistart.R;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import p004a3.AbstractC0007a;
import p141n.C2455p;

/* JADX INFO: renamed from: z3.d0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3718d0 {

    /* JADX INFO: renamed from: a */
    public int f11015a;

    /* JADX INFO: renamed from: b */
    public C2455p f11016b;

    /* JADX INFO: renamed from: c */
    public int[][] f11017c;

    /* JADX INFO: renamed from: d */
    public C2455p[] f11018d;

    /* JADX WARN: Code duplicated, block: B:28:0x0069  */
    /* JADX INFO: renamed from: a */
    public final void m5929a(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        C3716c0 c3716c0;
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
                int[] iArr = AbstractC0007a.f16H;
                TypedArray typedArrayObtainAttributes = theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
                TypedValue typedValuePeekValue = typedArrayObtainAttributes.peekValue(0);
                if (typedValuePeekValue != null) {
                    int i10 = typedValuePeekValue.type;
                    if (i10 == 5) {
                        c3716c0 = new C3716c0(2, TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArrayObtainAttributes.getResources().getDisplayMetrics()));
                    } else if (i10 == 6) {
                        c3716c0 = new C3716c0(1, typedValuePeekValue.getFraction(1.0f, 1.0f));
                    } else {
                        c3716c0 = null;
                    }
                } else {
                    c3716c0 = null;
                }
                typedArrayObtainAttributes.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr2 = new int[attributeCount];
                int i11 = 0;
                for (int i12 = 0; i12 < attributeCount; i12++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i12);
                    if (attributeNameResource != R.attr.widthChange) {
                        int i13 = i11 + 1;
                        if (!attributeSet.getAttributeBooleanValue(i12, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr2[i11] = attributeNameResource;
                        i11 = i13;
                    }
                }
                int[] iArrTrimStateSet = StateSet.trimStateSet(iArr2, i11);
                C2455p c2455p = new C2455p(19);
                c2455p.f6648c = c3716c0;
                int i14 = this.f11015a;
                if (i14 == 0 || iArrTrimStateSet.length == 0) {
                    this.f11016b = c2455p;
                }
                int[][] iArr3 = this.f11017c;
                if (i14 >= iArr3.length) {
                    int i15 = i14 + 10;
                    int[][] iArr4 = new int[i15][];
                    System.arraycopy(iArr3, 0, iArr4, 0, i14);
                    this.f11017c = iArr4;
                    C2455p[] c2455pArr = new C2455p[i15];
                    System.arraycopy(this.f11018d, 0, c2455pArr, 0, i14);
                    this.f11018d = c2455pArr;
                }
                int[][] iArr5 = this.f11017c;
                int i16 = this.f11015a;
                iArr5[i16] = iArrTrimStateSet;
                this.f11018d[i16] = c2455p;
                this.f11015a = i16 + 1;
            }
        }
    }
}

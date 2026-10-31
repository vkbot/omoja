package p258z3;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.StateSet;
import com.example.navistart.R;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import p004a3.AbstractC0007a;

/* JADX INFO: renamed from: z3.a0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3712a0 {

    /* JADX INFO: renamed from: a */
    public int f10998a;

    /* JADX INFO: renamed from: b */
    public InterfaceC3717d f10999b;

    /* JADX INFO: renamed from: c */
    public int[][] f11000c = new int[10][];

    /* JADX INFO: renamed from: d */
    public InterfaceC3717d[] f11001d = new InterfaceC3717d[10];

    /* JADX INFO: renamed from: b */
    public static C3712a0 m5921b(InterfaceC3717d interfaceC3717d) {
        C3712a0 c3712a0 = new C3712a0();
        c3712a0.m5922a(StateSet.WILD_CARD, interfaceC3717d);
        return c3712a0;
    }

    /* JADX INFO: renamed from: a */
    public final void m5922a(int[] iArr, InterfaceC3717d interfaceC3717d) {
        int i10 = this.f10998a;
        if (i10 == 0 || iArr.length == 0) {
            this.f10999b = interfaceC3717d;
        }
        int[][] iArr2 = this.f11000c;
        if (i10 >= iArr2.length) {
            int i11 = i10 + 10;
            int[][] iArr3 = new int[i11][];
            System.arraycopy(iArr2, 0, iArr3, 0, i10);
            this.f11000c = iArr3;
            InterfaceC3717d[] interfaceC3717dArr = new InterfaceC3717d[i11];
            System.arraycopy(this.f11001d, 0, interfaceC3717dArr, 0, i10);
            this.f11001d = interfaceC3717dArr;
        }
        int[][] iArr4 = this.f11000c;
        int i12 = this.f10998a;
        iArr4[i12] = iArr;
        this.f11001d[i12] = interfaceC3717d;
        this.f10998a = i12 + 1;
    }

    /* JADX INFO: renamed from: c */
    public final InterfaceC3717d m5923c(int[] iArr) {
        int i10;
        int[][] iArr2 = this.f11000c;
        int i11 = 0;
        while (true) {
            i10 = -1;
            if (i11 >= this.f10998a) {
                i11 = -1;
                break;
            }
            if (StateSet.stateSetMatches(iArr2[i11], iArr)) {
                break;
            }
            i11++;
        }
        if (i11 < 0) {
            int[] iArr3 = StateSet.WILD_CARD;
            int[][] iArr4 = this.f11000c;
            for (int i12 = 0; i12 < this.f10998a; i12++) {
                if (StateSet.stateSetMatches(iArr4[i12], iArr3)) {
                    i10 = i12;
                    break;
                }
            }
            i11 = i10;
        }
        return i11 < 0 ? this.f10999b : this.f11001d[i11];
    }

    /* JADX INFO: renamed from: d */
    public final void m5924d(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
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
                int[] iArr = AbstractC0007a.f13E;
                TypedArray typedArrayObtainAttributes = theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
                InterfaceC3717d interfaceC3717dM5960d = C3729o.m5960d(typedArrayObtainAttributes, 5, new C3711a(0.0f));
                typedArrayObtainAttributes.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr2 = new int[attributeCount];
                int i10 = 0;
                for (int i11 = 0; i11 < attributeCount; i11++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i11);
                    if (attributeNameResource != R.attr.cornerSize) {
                        int i12 = i10 + 1;
                        if (!attributeSet.getAttributeBooleanValue(i11, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr2[i10] = attributeNameResource;
                        i10 = i12;
                    }
                }
                m5922a(StateSet.trimStateSet(iArr2, i10), interfaceC3717dM5960d);
            }
        }
    }
}

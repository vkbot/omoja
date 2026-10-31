package z3;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources$Theme;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.StateSet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f6197a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public d f6198b;
    public int[][] c = new int[10][];
    public d[] d = new d[10];

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static a0 b(d dVar) {
        a0 a0Var = new a0();
        a0Var.a(StateSet.WILD_CARD, dVar);
        return a0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(int[] iArr, d dVar) {
        int i9 = this.f6197a;
        if (i9 == 0 || iArr.length == 0) {
            this.f6198b = dVar;
        }
        int[][] iArr2 = this.c;
        if (i9 >= iArr2.length) {
            int i10 = i9 + 10;
            int[][] iArr3 = new int[i10][];
            System.arraycopy(iArr2, 0, iArr3, 0, i9);
            this.c = iArr3;
            d[] dVarArr = new d[i10];
            System.arraycopy(this.d, 0, dVarArr, 0, i9);
            this.d = dVarArr;
        }
        int[][] iArr4 = this.c;
        int i11 = this.f6197a;
        iArr4[i11] = iArr;
        this.d[i11] = dVar;
        this.f6197a = i11 + 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final d c(int[] iArr) {
        int i9;
        int[][] iArr2 = this.c;
        int i10 = 0;
        while (true) {
            i9 = -1;
            if (i10 >= this.f6197a) {
                i10 = -1;
                break;
            }
            if (StateSet.stateSetMatches(iArr2[i10], iArr)) {
                break;
            }
            i10++;
        }
        if (i10 < 0) {
            int[] iArr3 = StateSet.WILD_CARD;
            int[][] iArr4 = this.c;
            for (int i11 = 0; i11 < this.f6197a; i11++) {
                if (StateSet.stateSetMatches(iArr4[i11], iArr3)) {
                    i9 = i11;
                    break;
                }
            }
            i10 = i9;
        }
        return i10 < 0 ? this.f6198b : this.d[i10];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources$Theme resources$Theme) throws XmlPullParserException, IOException {
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
                int[] iArr = a3.a.E;
                TypedArray typedArrayObtainAttributes = resources$Theme == null ? resources.obtainAttributes(attributeSet, iArr) : resources$Theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
                d dVarD = o.d(typedArrayObtainAttributes, 5, new a(0.0f));
                typedArrayObtainAttributes.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr2 = new int[attributeCount];
                int i9 = 0;
                for (int i10 = 0; i10 < attributeCount; i10++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i10);
                    if (attributeNameResource != 2130903427) {
                        int i11 = i9 + 1;
                        if (!attributeSet.getAttributeBooleanValue(i10, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr2[i9] = attributeNameResource;
                        i9 = i11;
                    }
                }
                a(StateSet.trimStateSet(iArr2, i9), dVarD);
            }
        }
    }
}

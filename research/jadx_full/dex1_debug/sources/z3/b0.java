package z3;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources$NotFoundException;
import android.content.res.Resources$Theme;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.Xml;
import java.io.IOException;
import java.util.Objects;
import m0.e1;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f6201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final o f6202b;
    public final int[][] c;
    public final o[] d;
    public final a0 e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final a0 f6203f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final a0 f6204g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final a0 f6205h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b0(e1 e1Var) {
        this.f6201a = e1Var.f3402b;
        this.f6202b = (o) e1Var.c;
        this.c = (int[][]) e1Var.d;
        this.d = (o[]) e1Var.e;
        this.e = (a0) e1Var.f3403f;
        this.f6203f = (a0) e1Var.f3404g;
        this.f6204g = (a0) e1Var.f3405h;
        this.f6205h = (a0) e1Var.f3406i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(e1 e1Var, Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources$Theme resources$Theme) throws XmlPullParserException, IOException {
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
                int[] iArr = a3.a.w;
                TypedArray typedArrayObtainAttributes = resources$Theme == null ? resources.obtainAttributes(attributeSet, iArr) : resources$Theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
                o oVarA = o.a(context, typedArrayObtainAttributes.getResourceId(0, 0), typedArrayObtainAttributes.getResourceId(1, 0)).a();
                typedArrayObtainAttributes.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr2 = new int[attributeCount];
                int i9 = 0;
                for (int i10 = 0; i10 < attributeCount; i10++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i10);
                    if (attributeNameResource != 2130904236 && attributeNameResource != 2130904247) {
                        int i11 = i9 + 1;
                        if (!attributeSet.getAttributeBooleanValue(i10, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr2[i9] = attributeNameResource;
                        i9 = i11;
                    }
                }
                e1Var.a(StateSet.trimStateSet(iArr2, i9), oVarA);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static b0 b(Context context, TypedArray typedArray, int i9) {
        int next;
        int resourceId = typedArray.getResourceId(i9, 0);
        if (resourceId == 0 || !Objects.equals(context.getResources().getResourceTypeName(resourceId), "xml")) {
            return null;
        }
        e1 e1Var = new e1();
        e1Var.b();
        try {
            XmlResourceParser xml = context.getResources().getXml(resourceId);
            try {
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                if (xml.getName().equals("selector")) {
                    a(e1Var, context, xml, attributeSetAsAttributeSet, context.getTheme());
                }
                xml.close();
                if (e1Var.f3402b == 0) {
                    return null;
                }
                return new b0(e1Var);
            } catch (Throwable th) {
                if (xml != null) {
                    try {
                        xml.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Resources$NotFoundException | IOException | XmlPullParserException unused) {
            e1Var.b();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final o c() {
        o oVar = this.f6202b;
        a0 a0Var = this.f6205h;
        a0 a0Var2 = this.f6204g;
        a0 a0Var3 = this.f6203f;
        a0 a0Var4 = this.e;
        if (a0Var4 == null && a0Var3 == null && a0Var2 == null && a0Var == null) {
            return oVar;
        }
        n nVarG = oVar.g();
        if (a0Var4 != null) {
            nVarG.e = a0Var4.f6198b;
        }
        if (a0Var3 != null) {
            nVarG.f6250f = a0Var3.f6198b;
        }
        if (a0Var2 != null) {
            nVarG.f6252h = a0Var2.f6198b;
        }
        if (a0Var != null) {
            nVarG.f6251g = a0Var.f6198b;
        }
        return nVarG.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean d() {
        a0 a0Var;
        a0 a0Var2;
        a0 a0Var3;
        a0 a0Var4;
        return this.f6201a > 1 || ((a0Var = this.e) != null && a0Var.f6197a > 1) || (((a0Var2 = this.f6203f) != null && a0Var2.f6197a > 1) || (((a0Var3 = this.f6204g) != null && a0Var3.f6197a > 1) || ((a0Var4 = this.f6205h) != null && a0Var4.f6197a > 1)));
    }
}

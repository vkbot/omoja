package p258z3;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.Xml;
import com.example.navistart.R;
import java.io.IOException;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParserException;
import p004a3.AbstractC0007a;
import p132m0.C2284e1;

/* JADX INFO: renamed from: z3.b0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3714b0 {

    /* JADX INFO: renamed from: a */
    public final int f11004a;

    /* JADX INFO: renamed from: b */
    public final C3729o f11005b;

    /* JADX INFO: renamed from: c */
    public final int[][] f11006c;

    /* JADX INFO: renamed from: d */
    public final C3729o[] f11007d;

    /* JADX INFO: renamed from: e */
    public final C3712a0 f11008e;

    /* JADX INFO: renamed from: f */
    public final C3712a0 f11009f;

    /* JADX INFO: renamed from: g */
    public final C3712a0 f11010g;

    /* JADX INFO: renamed from: h */
    public final C3712a0 f11011h;

    public C3714b0(C2284e1 c2284e1) {
        this.f11004a = c2284e1.f6041b;
        this.f11005b = (C3729o) c2284e1.f6042c;
        this.f11006c = (int[][]) c2284e1.f6043d;
        this.f11007d = (C3729o[]) c2284e1.f6044e;
        this.f11008e = (C3712a0) c2284e1.f6045f;
        this.f11009f = (C3712a0) c2284e1.f6046g;
        this.f11010g = (C3712a0) c2284e1.f6047h;
        this.f11011h = (C3712a0) c2284e1.f6048i;
    }

    /* JADX INFO: renamed from: a */
    public static void m5925a(C2284e1 c2284e1, Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
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
                int[] iArr = AbstractC0007a.f44w;
                TypedArray typedArrayObtainAttributes = theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
                C3729o c3729oM5956a = C3729o.m5957a(context, typedArrayObtainAttributes.getResourceId(0, 0), typedArrayObtainAttributes.getResourceId(1, 0)).m5956a();
                typedArrayObtainAttributes.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr2 = new int[attributeCount];
                int i10 = 0;
                for (int i11 = 0; i11 < attributeCount; i11++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i11);
                    if (attributeNameResource != R.attr.shapeAppearance && attributeNameResource != R.attr.shapeAppearanceOverlay) {
                        int i12 = i10 + 1;
                        if (!attributeSet.getAttributeBooleanValue(i11, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr2[i10] = attributeNameResource;
                        i10 = i12;
                    }
                }
                c2284e1.m3683a(StateSet.trimStateSet(iArr2, i10), c3729oM5956a);
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public static C3714b0 m5926b(Context context, TypedArray typedArray, int i10) {
        int next;
        int resourceId = typedArray.getResourceId(i10, 0);
        if (resourceId == 0 || !Objects.equals(context.getResources().getResourceTypeName(resourceId), "xml")) {
            return null;
        }
        C2284e1 c2284e1 = new C2284e1();
        c2284e1.m3684b();
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
                    m5925a(c2284e1, context, xml, attributeSetAsAttributeSet, context.getTheme());
                }
                xml.close();
                if (c2284e1.f6041b == 0) {
                    return null;
                }
                return new C3714b0(c2284e1);
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
        } catch (Resources.NotFoundException | IOException | XmlPullParserException unused) {
            c2284e1.m3684b();
        }
    }

    /* JADX INFO: renamed from: c */
    public final C3729o m5927c() {
        C3729o c3729o = this.f11005b;
        C3712a0 c3712a0 = this.f11011h;
        C3712a0 c3712a1 = this.f11010g;
        C3712a0 c3712a2 = this.f11009f;
        C3712a0 c3712a3 = this.f11008e;
        if (c3712a3 == null && c3712a2 == null && c3712a1 == null && c3712a0 == null) {
            return c3729o;
        }
        C3728n c3728nM5963g = c3729o.m5963g();
        if (c3712a3 != null) {
            c3728nM5963g.f11077e = c3712a3.f10999b;
        }
        if (c3712a2 != null) {
            c3728nM5963g.f11078f = c3712a2.f10999b;
        }
        if (c3712a1 != null) {
            c3728nM5963g.f11080h = c3712a1.f10999b;
        }
        if (c3712a0 != null) {
            c3728nM5963g.f11079g = c3712a0.f10999b;
        }
        return c3728nM5963g.m5956a();
    }

    /* JADX INFO: renamed from: d */
    public final boolean m5928d() {
        C3712a0 c3712a0;
        C3712a0 c3712a1;
        C3712a0 c3712a2;
        C3712a0 c3712a3;
        return this.f11004a > 1 || ((c3712a0 = this.f11008e) != null && c3712a0.f10998a > 1) || (((c3712a1 = this.f11009f) != null && c3712a1.f10998a > 1) || (((c3712a2 = this.f11010g) != null && c3712a2.f10998a > 1) || ((c3712a3 = this.f11011h) != null && c3712a3.f10998a > 1)));
    }
}

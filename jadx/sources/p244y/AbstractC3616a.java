package p244y;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.collection.SimpleArrayMap;
import com.bumptech.glide.EnumC1035h;
import java.util.Map;
import p015b0.C0858a;
import p015b0.C0859b;
import p025c0.AbstractC0938g;
import p025c0.AbstractC0947p;
import p025c0.C0934c;
import p077h.C1645g;
import p077h.C1646h;
import p077h.InterfaceC1643e;
import p077h.InterfaceC1650l;
import p097j.C1901m;
import p099j1.C1929i;
import p142n0.C2467b;
import p172q.AbstractC3015f;
import p172q.C3019i;
import p172q.C3025o;
import p172q.C3030t;
import p205u.C3270b;
import p205u.C3271c;

/* JADX INFO: renamed from: y.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3616a implements Cloneable {

    /* JADX INFO: renamed from: b */
    public int f10703b;

    /* JADX INFO: renamed from: e */
    public int f10706e;

    /* JADX INFO: renamed from: f */
    public int f10707f;

    /* JADX INFO: renamed from: k */
    public boolean f10712k;

    /* JADX INFO: renamed from: o */
    public boolean f10716o;

    /* JADX INFO: renamed from: p */
    public boolean f10717p;

    /* JADX INFO: renamed from: r */
    public boolean f10719r;

    /* JADX INFO: renamed from: c */
    public C1901m f10704c = C1901m.f4972d;

    /* JADX INFO: renamed from: d */
    public EnumC1035h f10705d = EnumC1035h.f1093d;

    /* JADX INFO: renamed from: g */
    public boolean f10708g = true;

    /* JADX INFO: renamed from: h */
    public int f10709h = -1;

    /* JADX INFO: renamed from: i */
    public int f10710i = -1;

    /* JADX INFO: renamed from: j */
    public InterfaceC1643e f10711j = C0858a.f537b;

    /* JADX INFO: renamed from: l */
    public C1646h f10713l = new C1646h();

    /* JADX INFO: renamed from: m */
    public C0934c f10714m = new C0934c();

    /* JADX INFO: renamed from: n */
    public Class f10715n = Object.class;

    /* JADX INFO: renamed from: q */
    public boolean f10718q = true;

    /* JADX INFO: renamed from: g */
    public static boolean m5761g(int i10, int i11) {
        return (i10 & i11) != 0;
    }

    /* JADX INFO: renamed from: a */
    public AbstractC3616a mo1307a(AbstractC3616a abstractC3616a) {
        if (this.f10717p) {
            return clone().mo1307a(abstractC3616a);
        }
        int i10 = abstractC3616a.f10703b;
        if (m5761g(abstractC3616a.f10703b, 1048576)) {
            this.f10719r = abstractC3616a.f10719r;
        }
        if (m5761g(abstractC3616a.f10703b, 4)) {
            this.f10704c = abstractC3616a.f10704c;
        }
        if (m5761g(abstractC3616a.f10703b, 8)) {
            this.f10705d = abstractC3616a.f10705d;
        }
        if (m5761g(abstractC3616a.f10703b, 16)) {
            this.f10706e = 0;
            this.f10703b &= -33;
        }
        if (m5761g(abstractC3616a.f10703b, 32)) {
            this.f10706e = abstractC3616a.f10706e;
            this.f10703b &= -17;
        }
        if (m5761g(abstractC3616a.f10703b, 64)) {
            this.f10707f = 0;
            this.f10703b &= -129;
        }
        if (m5761g(abstractC3616a.f10703b, 128)) {
            this.f10707f = abstractC3616a.f10707f;
            this.f10703b &= -65;
        }
        if (m5761g(abstractC3616a.f10703b, 256)) {
            this.f10708g = abstractC3616a.f10708g;
        }
        if (m5761g(abstractC3616a.f10703b, 512)) {
            this.f10710i = abstractC3616a.f10710i;
            this.f10709h = abstractC3616a.f10709h;
        }
        if (m5761g(abstractC3616a.f10703b, 1024)) {
            this.f10711j = abstractC3616a.f10711j;
        }
        if (m5761g(abstractC3616a.f10703b, 4096)) {
            this.f10715n = abstractC3616a.f10715n;
        }
        if (m5761g(abstractC3616a.f10703b, 8192)) {
            this.f10703b &= -16385;
        }
        if (m5761g(abstractC3616a.f10703b, 16384)) {
            this.f10703b &= -8193;
        }
        if (m5761g(abstractC3616a.f10703b, 131072)) {
            this.f10712k = abstractC3616a.f10712k;
        }
        if (m5761g(abstractC3616a.f10703b, 2048)) {
            this.f10714m.putAll((Map) abstractC3616a.f10714m);
            this.f10718q = abstractC3616a.f10718q;
        }
        this.f10703b |= abstractC3616a.f10703b;
        this.f10713l.f4182b.putAll((SimpleArrayMap) abstractC3616a.f10713l.f4182b);
        m5770l();
        return this;
    }

    @Override // 
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public AbstractC3616a clone() {
        try {
            AbstractC3616a abstractC3616a = (AbstractC3616a) super.clone();
            C1646h c1646h = new C1646h();
            abstractC3616a.f10713l = c1646h;
            c1646h.f4182b.putAll((SimpleArrayMap) this.f10713l.f4182b);
            C0934c c0934c = new C0934c();
            abstractC3616a.f10714m = c0934c;
            c0934c.putAll((Map) this.f10714m);
            abstractC3616a.f10716o = false;
            abstractC3616a.f10717p = false;
            return abstractC3616a;
        } catch (CloneNotSupportedException e) {
            C2467b.m3833w(e);
            return null;
        }
    }

    /* JADX INFO: renamed from: c */
    public final AbstractC3616a m5762c(Class cls) {
        if (this.f10717p) {
            return clone().m5762c(cls);
        }
        this.f10715n = cls;
        this.f10703b |= 4096;
        m5770l();
        return this;
    }

    /* JADX INFO: renamed from: d */
    public final AbstractC3616a m5763d(C1901m c1901m) {
        if (this.f10717p) {
            return clone().m5763d(c1901m);
        }
        this.f10704c = c1901m;
        this.f10703b |= 4;
        m5770l();
        return this;
    }

    /* JADX INFO: renamed from: e */
    public final AbstractC3616a m5764e(int i10) {
        if (this.f10717p) {
            return clone().m5764e(i10);
        }
        this.f10706e = i10;
        this.f10703b = (this.f10703b | 32) & (-17);
        m5770l();
        return this;
    }

    public boolean equals(Object obj) {
        if (obj instanceof AbstractC3616a) {
            return m5765f((AbstractC3616a) obj);
        }
        return false;
    }

    /* JADX INFO: renamed from: f */
    public final boolean m5765f(AbstractC3616a abstractC3616a) {
        abstractC3616a.getClass();
        if (Float.compare(1.0f, 1.0f) != 0 || this.f10706e != abstractC3616a.f10706e) {
            return false;
        }
        char[] cArr = AbstractC0947p.f810a;
        return this.f10707f == abstractC3616a.f10707f && this.f10708g == abstractC3616a.f10708g && this.f10709h == abstractC3616a.f10709h && this.f10710i == abstractC3616a.f10710i && this.f10712k == abstractC3616a.f10712k && this.f10704c.equals(abstractC3616a.f10704c) && this.f10705d == abstractC3616a.f10705d && this.f10713l.equals(abstractC3616a.f10713l) && this.f10714m.equals(abstractC3616a.f10714m) && this.f10715n.equals(abstractC3616a.f10715n) && this.f10711j.equals(abstractC3616a.f10711j);
    }

    /* JADX INFO: renamed from: h */
    public final AbstractC3616a m5766h(C3025o c3025o, AbstractC3015f abstractC3015f) {
        if (this.f10717p) {
            return clone().m5766h(c3025o, abstractC3015f);
        }
        m5771m(C3025o.f8486g, c3025o);
        return m5774p(abstractC3015f, false);
    }

    public int hashCode() {
        char[] cArr = AbstractC0947p.f810a;
        return AbstractC0947p.m1091h(AbstractC0947p.m1091h(AbstractC0947p.m1091h(AbstractC0947p.m1091h(AbstractC0947p.m1091h(AbstractC0947p.m1091h(AbstractC0947p.m1091h(AbstractC0947p.m1090g(0, AbstractC0947p.m1090g(0, AbstractC0947p.m1090g(1, AbstractC0947p.m1090g(this.f10712k ? 1 : 0, AbstractC0947p.m1090g(this.f10710i, AbstractC0947p.m1090g(this.f10709h, AbstractC0947p.m1090g(this.f10708g ? 1 : 0, AbstractC0947p.m1091h(AbstractC0947p.m1090g(0, AbstractC0947p.m1091h(AbstractC0947p.m1090g(this.f10707f, AbstractC0947p.m1091h(AbstractC0947p.m1090g(this.f10706e, AbstractC0947p.m1090g(Float.floatToIntBits(1.0f), 17)), null)), null)), null)))))))), this.f10704c), this.f10705d), this.f10713l), this.f10714m), this.f10715n), this.f10711j), null);
    }

    /* JADX INFO: renamed from: i */
    public final AbstractC3616a m5767i(int i10, int i11) {
        if (this.f10717p) {
            return clone().m5767i(i10, i11);
        }
        this.f10710i = i10;
        this.f10709h = i11;
        this.f10703b |= 512;
        m5770l();
        return this;
    }

    /* JADX INFO: renamed from: j */
    public final AbstractC3616a m5768j(int i10) {
        if (this.f10717p) {
            return clone().m5768j(i10);
        }
        this.f10707f = i10;
        this.f10703b = (this.f10703b | 128) & (-65);
        m5770l();
        return this;
    }

    /* JADX INFO: renamed from: k */
    public final AbstractC3616a m5769k() {
        if (this.f10717p) {
            return clone().m5769k();
        }
        this.f10705d = EnumC1035h.f1094e;
        this.f10703b |= 8;
        m5770l();
        return this;
    }

    /* JADX INFO: renamed from: l */
    public final void m5770l() {
        if (this.f10716o) {
            C1929i.m3030l("You cannot modify locked T, consider clone()");
        }
    }

    /* JADX INFO: renamed from: m */
    public final AbstractC3616a m5771m(C1645g c1645g, Object obj) {
        if (this.f10717p) {
            return clone().m5771m(c1645g, obj);
        }
        AbstractC0938g.m1071b(c1645g);
        this.f10713l.f4182b.put(c1645g, obj);
        m5770l();
        return this;
    }

    /* JADX INFO: renamed from: n */
    public final AbstractC3616a m5772n(C0859b c0859b) {
        if (this.f10717p) {
            return clone().m5772n(c0859b);
        }
        this.f10711j = c0859b;
        this.f10703b |= 1024;
        m5770l();
        return this;
    }

    /* JADX INFO: renamed from: o */
    public final AbstractC3616a m5773o() {
        if (this.f10717p) {
            return clone().m5773o();
        }
        this.f10708g = false;
        this.f10703b |= 256;
        m5770l();
        return this;
    }

    /* JADX INFO: renamed from: p */
    public final AbstractC3616a m5774p(InterfaceC1650l interfaceC1650l, boolean z9) {
        if (this.f10717p) {
            return clone().m5774p(interfaceC1650l, z9);
        }
        C3030t c3030t = new C3030t(interfaceC1650l, z9);
        m5775q(Bitmap.class, interfaceC1650l, z9);
        m5775q(Drawable.class, c3030t, z9);
        m5775q(BitmapDrawable.class, c3030t, z9);
        m5775q(C3270b.class, new C3271c(interfaceC1650l), z9);
        m5770l();
        return this;
    }

    /* JADX INFO: renamed from: q */
    public final AbstractC3616a m5775q(Class cls, InterfaceC1650l interfaceC1650l, boolean z9) {
        if (this.f10717p) {
            return clone().m5775q(cls, interfaceC1650l, z9);
        }
        AbstractC0938g.m1071b(interfaceC1650l);
        this.f10714m.put(cls, interfaceC1650l);
        int i10 = this.f10703b;
        this.f10703b = 67584 | i10;
        this.f10718q = false;
        if (z9) {
            this.f10703b = i10 | 198656;
            this.f10712k = true;
        }
        m5770l();
        return this;
    }

    /* JADX INFO: renamed from: r */
    public final AbstractC3616a m5776r(C3019i c3019i) {
        C3025o c3025o = C3025o.f8483d;
        if (this.f10717p) {
            return clone().m5776r(c3019i);
        }
        m5771m(C3025o.f8486g, c3025o);
        return m5774p(c3019i, true);
    }

    /* JADX INFO: renamed from: s */
    public final AbstractC3616a m5777s() {
        if (this.f10717p) {
            return clone().m5777s();
        }
        this.f10719r = true;
        this.f10703b |= 1048576;
        m5770l();
        return this;
    }
}

package p246y1;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import java.util.Observable;
import p226w1.AbstractC3512i;

/* JADX INFO: renamed from: y1.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3638b extends Observable {

    /* JADX INFO: renamed from: f */
    public static final /* synthetic */ int f10807f = 0;

    /* JADX INFO: renamed from: a */
    public final Paint f10808a;

    /* JADX INFO: renamed from: b */
    public final float f10809b;

    /* JADX INFO: renamed from: c */
    public AbstractC3512i f10810c;

    /* JADX INFO: renamed from: d */
    public float f10811d;

    /* JADX INFO: renamed from: e */
    public int f10812e;

    public AbstractC3638b(Context context) {
        Paint paint = new Paint(1);
        this.f10808a = paint;
        this.f10809b = context.getResources().getDisplayMetrics().density;
        this.f10812e = -14575885;
        paint.setColor(-14575885);
    }

    /* JADX INFO: renamed from: a */
    public abstract void mo5821a(Canvas canvas);

    /* JADX INFO: renamed from: b */
    public float mo5822b() {
        return m5824d();
    }

    /* JADX INFO: renamed from: c */
    public final float m5823c() {
        AbstractC3512i abstractC3512i = this.f10810c;
        if (abstractC3512i == null) {
            return 0.0f;
        }
        abstractC3512i.getClass();
        return abstractC3512i.getSize() / 2.0f;
    }

    /* JADX INFO: renamed from: d */
    public final float m5824d() {
        AbstractC3512i abstractC3512i = this.f10810c;
        if (abstractC3512i == null) {
            return 0.0f;
        }
        abstractC3512i.getClass();
        return abstractC3512i.getSize() / 2.0f;
    }

    /* JADX INFO: renamed from: e */
    public float mo5825e() {
        AbstractC3512i abstractC3512i = this.f10810c;
        if (abstractC3512i == null) {
            return 0.0f;
        }
        abstractC3512i.getClass();
        return abstractC3512i.getPadding();
    }

    /* JADX INFO: renamed from: f */
    public final float m5826f() {
        AbstractC3512i abstractC3512i = this.f10810c;
        if (abstractC3512i != null) {
            return abstractC3512i.getSize() - (abstractC3512i.getPadding() * 2.0f);
        }
        return 0.0f;
    }

    /* JADX INFO: renamed from: g */
    public final void m5827g(int i10) {
        this.f10812e = i10;
        if (this.f10810c != null) {
            mo5829i();
        }
        setChanged();
        notifyObservers(null);
    }

    /* JADX INFO: renamed from: h */
    public final void m5828h(float f8) {
        this.f10811d = f8;
        if (this.f10810c != null) {
            mo5829i();
        }
        setChanged();
        notifyObservers(null);
    }

    /* JADX INFO: renamed from: i */
    public abstract void mo5829i();
}

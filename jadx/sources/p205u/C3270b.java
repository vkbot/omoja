package p205u;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import java.util.ArrayList;
import org.apache.commons.net.nntp.NNTP;
import p025c0.AbstractC0938g;
import p099j1.C1929i;
import p182r3.C3094a;

/* JADX INFO: renamed from: u.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3270b extends Drawable implements InterfaceC3273e, Animatable, Animatable2Compat {

    /* JADX INFO: renamed from: b */
    public final C3094a f9570b;

    /* JADX INFO: renamed from: c */
    public boolean f9571c;

    /* JADX INFO: renamed from: d */
    public boolean f9572d;

    /* JADX INFO: renamed from: e */
    public boolean f9573e;

    /* JADX INFO: renamed from: g */
    public int f9575g;

    /* JADX INFO: renamed from: i */
    public boolean f9577i;

    /* JADX INFO: renamed from: j */
    public Paint f9578j;

    /* JADX INFO: renamed from: k */
    public Rect f9579k;

    /* JADX INFO: renamed from: l */
    public ArrayList f9580l;

    /* JADX INFO: renamed from: f */
    public boolean f9574f = true;

    /* JADX INFO: renamed from: h */
    public final int f9576h = -1;

    public C3270b(C3094a c3094a) {
        this.f9570b = c3094a;
    }

    /* JADX INFO: renamed from: a */
    public final void m5211a() {
        AbstractC0938g.m1070a("You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.", !this.f9573e);
        C3274f c3274f = (C3274f) this.f9570b.f8794b;
        if (c3274f.f9589a.f4004l.f3980c == 1) {
            invalidateSelf();
            return;
        }
        if (this.f9571c) {
            return;
        }
        this.f9571c = true;
        ArrayList arrayList = c3274f.f9591c;
        if (c3274f.f9598j) {
            C1929i.m3030l("Cannot subscribe to a cleared frame loader");
            return;
        }
        if (arrayList.contains(this)) {
            C1929i.m3030l("Cannot subscribe twice in a row");
            return;
        }
        boolean zIsEmpty = arrayList.isEmpty();
        arrayList.add(this);
        if (zIsEmpty && !c3274f.f9594f) {
            c3274f.f9594f = true;
            c3274f.f9598j = false;
            c3274f.m5212a();
        }
        invalidateSelf();
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public final void clearAnimationCallbacks() {
        ArrayList arrayList = this.f9580l;
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.f9573e) {
            return;
        }
        if (this.f9577i) {
            int intrinsicWidth = getIntrinsicWidth();
            int intrinsicHeight = getIntrinsicHeight();
            Rect bounds = getBounds();
            if (this.f9579k == null) {
                this.f9579k = new Rect();
            }
            Gravity.apply(NNTP.DEFAULT_PORT, intrinsicWidth, intrinsicHeight, bounds, this.f9579k);
            this.f9577i = false;
        }
        C3274f c3274f = (C3274f) this.f9570b.f8794b;
        C3272d c3272d = c3274f.f9597i;
        Bitmap bitmap = c3272d != null ? c3272d.f9588h : c3274f.f9600l;
        if (this.f9579k == null) {
            this.f9579k = new Rect();
        }
        Rect rect = this.f9579k;
        if (this.f9578j == null) {
            this.f9578j = new Paint(2);
        }
        canvas.drawBitmap(bitmap, (Rect) null, rect, this.f9578j);
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f9570b;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return ((C3274f) this.f9570b.f8794b).f9604p;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return ((C3274f) this.f9570b.f8794b).f9603o;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.f9571c;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f9577i = true;
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public final void registerAnimationCallback(Animatable2Compat.AnimationCallback animationCallback) {
        if (animationCallback == null) {
            return;
        }
        if (this.f9580l == null) {
            this.f9580l = new ArrayList();
        }
        this.f9580l.add(animationCallback);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i10) {
        if (this.f9578j == null) {
            this.f9578j = new Paint(2);
        }
        this.f9578j.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.f9578j == null) {
            this.f9578j = new Paint(2);
        }
        this.f9578j.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z9, boolean z10) {
        AbstractC0938g.m1070a("Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.", !this.f9573e);
        this.f9574f = z9;
        if (!z9) {
            this.f9571c = false;
            C3274f c3274f = (C3274f) this.f9570b.f8794b;
            ArrayList arrayList = c3274f.f9591c;
            arrayList.remove(this);
            if (arrayList.isEmpty()) {
                c3274f.f9594f = false;
            }
        } else if (this.f9572d) {
            m5211a();
        }
        return super.setVisible(z9, z10);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        this.f9572d = true;
        this.f9575g = 0;
        if (this.f9574f) {
            m5211a();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.f9572d = false;
        this.f9571c = false;
        C3274f c3274f = (C3274f) this.f9570b.f8794b;
        ArrayList arrayList = c3274f.f9591c;
        arrayList.remove(this);
        if (arrayList.isEmpty()) {
            c3274f.f9594f = false;
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public final boolean unregisterAnimationCallback(Animatable2Compat.AnimationCallback animationCallback) {
        ArrayList arrayList = this.f9580l;
        if (arrayList == null || animationCallback == null) {
            return false;
        }
        return arrayList.remove(animationCallback);
    }
}

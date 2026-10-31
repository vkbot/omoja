package u;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable$ConstantState;
import android.view.Gravity;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat$AnimationCallback;
import j1.i;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b extends Drawable implements e, Animatable, Animatable2Compat {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final r3.a f5423b;
    public boolean c;
    public boolean d;
    public boolean e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5425g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f5427i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Paint f5428j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Rect f5429k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ArrayList f5430l;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f5424f = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f5426h = -1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(r3.a aVar) {
        this.f5423b = aVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        c0.g.a("You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.", !this.e);
        f fVar = (f) this.f5423b.f4939b;
        if (fVar.f5436a.f2323l.c == 1) {
            invalidateSelf();
            return;
        }
        if (this.c) {
            return;
        }
        this.c = true;
        ArrayList arrayList = fVar.c;
        if (fVar.f5442j) {
            i.l("Cannot subscribe to a cleared frame loader");
            return;
        }
        if (arrayList.contains(this)) {
            i.l("Cannot subscribe twice in a row");
            return;
        }
        boolean zIsEmpty = arrayList.isEmpty();
        arrayList.add(this);
        if (zIsEmpty && !fVar.f5438f) {
            fVar.f5438f = true;
            fVar.f5442j = false;
            fVar.a();
        }
        invalidateSelf();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public final void clearAnimationCallbacks() {
        ArrayList arrayList = this.f5430l;
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.e) {
            return;
        }
        if (this.f5427i) {
            int intrinsicWidth = getIntrinsicWidth();
            int intrinsicHeight = getIntrinsicHeight();
            Rect bounds = getBounds();
            if (this.f5429k == null) {
                this.f5429k = new Rect();
            }
            Gravity.apply(119, intrinsicWidth, intrinsicHeight, bounds, this.f5429k);
            this.f5427i = false;
        }
        f fVar = (f) this.f5423b.f4939b;
        d dVar = fVar.f5441i;
        Bitmap bitmap = dVar != null ? dVar.f5435h : fVar.f5444l;
        if (this.f5429k == null) {
            this.f5429k = new Rect();
        }
        Rect rect = this.f5429k;
        if (this.f5428j == null) {
            this.f5428j = new Paint(2);
        }
        canvas.drawBitmap(bitmap, (Rect) null, rect, this.f5428j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final Drawable$ConstantState getConstantState() {
        return this.f5423b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return ((f) this.f5423b.f4939b).f5448p;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return ((f) this.f5423b.f4939b).f5447o;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f5427i = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public final void registerAnimationCallback(Animatable2Compat$AnimationCallback animatable2Compat$AnimationCallback) {
        if (animatable2Compat$AnimationCallback == null) {
            return;
        }
        if (this.f5430l == null) {
            this.f5430l = new ArrayList();
        }
        this.f5430l.add(animatable2Compat$AnimationCallback);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i9) {
        if (this.f5428j == null) {
            this.f5428j = new Paint(2);
        }
        this.f5428j.setAlpha(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.f5428j == null) {
            this.f5428j = new Paint(2);
        }
        this.f5428j.setColorFilter(colorFilter);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z8, boolean z9) {
        c0.g.a("Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.", !this.e);
        this.f5424f = z8;
        if (!z8) {
            this.c = false;
            f fVar = (f) this.f5423b.f4939b;
            ArrayList arrayList = fVar.c;
            arrayList.remove(this);
            if (arrayList.isEmpty()) {
                fVar.f5438f = false;
            }
        } else if (this.d) {
            a();
        }
        return super.setVisible(z8, z9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Animatable
    public final void start() {
        this.d = true;
        this.f5425g = 0;
        if (this.f5424f) {
            a();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.d = false;
        this.c = false;
        f fVar = (f) this.f5423b.f4939b;
        ArrayList arrayList = fVar.c;
        arrayList.remove(this);
        if (arrayList.isEmpty()) {
            fVar.f5438f = false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public final boolean unregisterAnimationCallback(Animatable2Compat$AnimationCallback animatable2Compat$AnimationCallback) {
        ArrayList arrayList = this.f5430l;
        if (arrayList == null || animatable2Compat$AnimationCallback == null) {
            return false;
        }
        return arrayList.remove(animatable2Compat$AnimationCallback);
    }
}

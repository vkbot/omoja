package z1;

import android.R$attr;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff$Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.animation.Animation;
import android.widget.TextView;
import com.github.clans.fab.FloatingActionButton;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k extends TextView {
    public static final PorterDuffXfermode t = new PorterDuffXfermode(PorterDuff$Mode.CLEAR);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6175b;
    public int c;
    public int d;
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Drawable f6176f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f6177g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f6178h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f6179i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f6180j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f6181k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f6182l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f6183m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public FloatingActionButton f6184n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Animation f6185o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Animation f6186p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f6187q;
    public boolean r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public GestureDetector f6188s;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setBackgroundCompat(Drawable drawable) {
        setBackground(drawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setShadow(FloatingActionButton floatingActionButton) {
        this.e = floatingActionButton.getShadowColor();
        this.f6175b = floatingActionButton.getShadowRadius();
        this.c = floatingActionButton.getShadowXOffset();
        this.d = floatingActionButton.getShadowYOffset();
        this.f6177g = floatingActionButton.f();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final RippleDrawable a() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R$attr.state_pressed}, b(this.f6181k));
        stateListDrawable.addState(new int[0], b(this.f6180j));
        RippleDrawable rippleDrawable = new RippleDrawable(new ColorStateList(new int[][]{new int[0]}, new int[]{this.f6182l}), stateListDrawable, null);
        setOutlineProvider(new a(1));
        setClipToOutline(true);
        this.f6176f = rippleDrawable;
        return rippleDrawable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ShapeDrawable b(int i9) {
        float f8 = this.f6183m;
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{f8, f8, f8, f8, f8, f8, f8, f8}, null, null));
        shapeDrawable.getPaint().setColor(i9);
        return shapeDrawable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        if (this.f6187q) {
            this.f6176f = getBackground();
        }
        Drawable drawable = this.f6176f;
        if (drawable instanceof StateListDrawable) {
            ((StateListDrawable) drawable).setState(new int[]{R$attr.state_pressed});
        } else if (drawable instanceof RippleDrawable) {
            RippleDrawable rippleDrawable = (RippleDrawable) drawable;
            rippleDrawable.setState(new int[]{R$attr.state_enabled, R$attr.state_pressed});
            rippleDrawable.setHotspot(getMeasuredWidth() / 2, getMeasuredHeight() / 2);
            rippleDrawable.setVisible(true, true);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d() {
        if (this.f6187q) {
            this.f6176f = getBackground();
        }
        Drawable drawable = this.f6176f;
        if (drawable instanceof StateListDrawable) {
            ((StateListDrawable) drawable).setState(new int[0]);
        } else if (drawable instanceof RippleDrawable) {
            RippleDrawable rippleDrawable = (RippleDrawable) drawable;
            rippleDrawable.setState(new int[0]);
            rippleDrawable.setHotspot(getMeasuredWidth() / 2, getMeasuredHeight() / 2);
            rippleDrawable.setVisible(true, true);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e() {
        LayerDrawable layerDrawable;
        if (this.f6177g) {
            layerDrawable = new LayerDrawable(new Drawable[]{new j(this), a()});
            layerDrawable.setLayerInset(1, Math.abs(this.c) + this.f6175b, Math.abs(this.d) + this.f6175b, Math.abs(this.c) + this.f6175b, Math.abs(this.d) + this.f6175b);
        } else {
            layerDrawable = new LayerDrawable(new Drawable[]{a()});
        }
        setBackgroundCompat(layerDrawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i9, int i10) {
        int iAbs;
        super.onMeasure(i9, i10);
        if (this.f6178h == 0) {
            this.f6178h = getMeasuredWidth();
        }
        int measuredWidth = getMeasuredWidth();
        int iAbs2 = 0;
        if (this.f6177g) {
            iAbs = Math.abs(this.c) + this.f6175b;
        } else {
            iAbs = 0;
        }
        int i11 = iAbs + measuredWidth;
        if (this.f6179i == 0) {
            this.f6179i = getMeasuredHeight();
        }
        int measuredHeight = getMeasuredHeight();
        if (this.f6177g) {
            iAbs2 = Math.abs(this.d) + this.f6175b;
        }
        setMeasuredDimension(i11, measuredHeight + iAbs2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        FloatingActionButton floatingActionButton = this.f6184n;
        if (floatingActionButton == null || floatingActionButton.getOnClickListener() == null || !this.f6184n.isEnabled()) {
            return super.onTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 1 || action == 3) {
            d();
            this.f6184n.i();
        }
        this.f6188s.onTouchEvent(motionEvent);
        return super.onTouchEvent(motionEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCornerRadius(int i9) {
        this.f6183m = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFab(FloatingActionButton floatingActionButton) {
        this.f6184n = floatingActionButton;
        setShadow(floatingActionButton);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHandleVisibilityChanges(boolean z8) {
        this.r = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHideAnimation(Animation animation) {
        this.f6186p = animation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setShowAnimation(Animation animation) {
        this.f6185o = animation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setShowShadow(boolean z8) {
        this.f6177g = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setUsingStyle(boolean z8) {
        this.f6187q = z8;
    }
}

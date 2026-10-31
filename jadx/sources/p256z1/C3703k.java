package p256z1;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
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

/* JADX INFO: renamed from: z1.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3703k extends TextView {

    /* JADX INFO: renamed from: t */
    public static final PorterDuffXfermode f10969t = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);

    /* JADX INFO: renamed from: b */
    public int f10970b;

    /* JADX INFO: renamed from: c */
    public int f10971c;

    /* JADX INFO: renamed from: d */
    public int f10972d;

    /* JADX INFO: renamed from: e */
    public int f10973e;

    /* JADX INFO: renamed from: f */
    public Drawable f10974f;

    /* JADX INFO: renamed from: g */
    public boolean f10975g;

    /* JADX INFO: renamed from: h */
    public int f10976h;

    /* JADX INFO: renamed from: i */
    public int f10977i;

    /* JADX INFO: renamed from: j */
    public int f10978j;

    /* JADX INFO: renamed from: k */
    public int f10979k;

    /* JADX INFO: renamed from: l */
    public int f10980l;

    /* JADX INFO: renamed from: m */
    public int f10981m;

    /* JADX INFO: renamed from: n */
    public FloatingActionButton f10982n;

    /* JADX INFO: renamed from: o */
    public Animation f10983o;

    /* JADX INFO: renamed from: p */
    public Animation f10984p;

    /* JADX INFO: renamed from: q */
    public boolean f10985q;

    /* JADX INFO: renamed from: r */
    public boolean f10986r;

    /* JADX INFO: renamed from: s */
    public GestureDetector f10987s;

    private void setBackgroundCompat(Drawable drawable) {
        setBackground(drawable);
    }

    private void setShadow(FloatingActionButton floatingActionButton) {
        this.f10973e = floatingActionButton.getShadowColor();
        this.f10970b = floatingActionButton.getShadowRadius();
        this.f10971c = floatingActionButton.getShadowXOffset();
        this.f10972d = floatingActionButton.getShadowYOffset();
        this.f10975g = floatingActionButton.m1686f();
    }

    /* JADX INFO: renamed from: a */
    public final RippleDrawable m5914a() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, m5915b(this.f10979k));
        stateListDrawable.addState(new int[0], m5915b(this.f10978j));
        RippleDrawable rippleDrawable = new RippleDrawable(new ColorStateList(new int[][]{new int[0]}, new int[]{this.f10980l}), stateListDrawable, null);
        setOutlineProvider(new C3693a(1));
        setClipToOutline(true);
        this.f10974f = rippleDrawable;
        return rippleDrawable;
    }

    /* JADX INFO: renamed from: b */
    public final ShapeDrawable m5915b(int i10) {
        float f8 = this.f10981m;
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{f8, f8, f8, f8, f8, f8, f8, f8}, null, null));
        shapeDrawable.getPaint().setColor(i10);
        return shapeDrawable;
    }

    /* JADX INFO: renamed from: c */
    public final void m5916c() {
        if (this.f10985q) {
            this.f10974f = getBackground();
        }
        Drawable drawable = this.f10974f;
        if (drawable instanceof StateListDrawable) {
            ((StateListDrawable) drawable).setState(new int[]{R.attr.state_pressed});
        } else if (drawable instanceof RippleDrawable) {
            RippleDrawable rippleDrawable = (RippleDrawable) drawable;
            rippleDrawable.setState(new int[]{R.attr.state_enabled, R.attr.state_pressed});
            rippleDrawable.setHotspot(getMeasuredWidth() / 2, getMeasuredHeight() / 2);
            rippleDrawable.setVisible(true, true);
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m5917d() {
        if (this.f10985q) {
            this.f10974f = getBackground();
        }
        Drawable drawable = this.f10974f;
        if (drawable instanceof StateListDrawable) {
            ((StateListDrawable) drawable).setState(new int[0]);
        } else if (drawable instanceof RippleDrawable) {
            RippleDrawable rippleDrawable = (RippleDrawable) drawable;
            rippleDrawable.setState(new int[0]);
            rippleDrawable.setHotspot(getMeasuredWidth() / 2, getMeasuredHeight() / 2);
            rippleDrawable.setVisible(true, true);
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m5918e() {
        LayerDrawable layerDrawable;
        if (this.f10975g) {
            layerDrawable = new LayerDrawable(new Drawable[]{new C3702j(this), m5914a()});
            layerDrawable.setLayerInset(1, Math.abs(this.f10971c) + this.f10970b, Math.abs(this.f10972d) + this.f10970b, Math.abs(this.f10971c) + this.f10970b, Math.abs(this.f10972d) + this.f10970b);
        } else {
            layerDrawable = new LayerDrawable(new Drawable[]{m5914a()});
        }
        setBackgroundCompat(layerDrawable);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i10, int i11) {
        int iAbs;
        super.onMeasure(i10, i11);
        if (this.f10976h == 0) {
            this.f10976h = getMeasuredWidth();
        }
        int measuredWidth = getMeasuredWidth();
        int iAbs2 = 0;
        if (this.f10975g) {
            iAbs = Math.abs(this.f10971c) + this.f10970b;
        } else {
            iAbs = 0;
        }
        int i12 = iAbs + measuredWidth;
        if (this.f10977i == 0) {
            this.f10977i = getMeasuredHeight();
        }
        int measuredHeight = getMeasuredHeight();
        if (this.f10975g) {
            iAbs2 = Math.abs(this.f10972d) + this.f10970b;
        }
        setMeasuredDimension(i12, measuredHeight + iAbs2);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        FloatingActionButton floatingActionButton = this.f10982n;
        if (floatingActionButton == null || floatingActionButton.getOnClickListener() == null || !this.f10982n.isEnabled()) {
            return super.onTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 1 || action == 3) {
            m5917d();
            this.f10982n.m1689i();
        }
        this.f10987s.onTouchEvent(motionEvent);
        return super.onTouchEvent(motionEvent);
    }

    public void setCornerRadius(int i10) {
        this.f10981m = i10;
    }

    public void setFab(FloatingActionButton floatingActionButton) {
        this.f10982n = floatingActionButton;
        setShadow(floatingActionButton);
    }

    public void setHandleVisibilityChanges(boolean z9) {
        this.f10986r = z9;
    }

    public void setHideAnimation(Animation animation) {
        this.f10984p = animation;
    }

    public void setShowAnimation(Animation animation) {
        this.f10983o = animation;
    }

    public void setShowShadow(boolean z9) {
        this.f10975g = z9;
    }

    public void setUsingStyle(boolean z9) {
        this.f10985q = z9;
    }
}

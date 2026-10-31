package p041d4;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.tabs.TabLayout;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.jvm.internal.ByteCompanionObject;
import p030c5.C0990e;
import p047e0.AbstractC1387m;
import p192s3.AbstractC3203q;

/* JADX INFO: renamed from: d4.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1274h extends LinearLayout {

    /* JADX INFO: renamed from: e */
    public static final /* synthetic */ int f3048e = 0;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3049b = 1;

    /* JADX INFO: renamed from: c */
    public Object f3050c;

    /* JADX INFO: renamed from: d */
    public View f3051d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1274h(TabLayout tabLayout, Context context) {
        super(context);
        this.f3051d = tabLayout;
        setWillNotDraw(false);
    }

    /* JADX INFO: renamed from: a */
    public void m2273a(int i10) {
        TabLayout tabLayout = (TabLayout) this.f3051d;
        if (tabLayout.f2456W == 0 || (tabLayout.getTabSelectedIndicator().getBounds().left == -1 && tabLayout.getTabSelectedIndicator().getBounds().right == -1)) {
            View childAt = getChildAt(i10);
            C0990e c0990e = tabLayout.f2444K;
            Drawable drawable = tabLayout.f2472p;
            c0990e.getClass();
            RectF rectFM1134p = C0990e.m1134p(tabLayout, childAt);
            drawable.setBounds((int) rectFM1134p.left, drawable.getBounds().top, (int) rectFM1134p.right, drawable.getBounds().bottom);
            tabLayout.f2458b = i10;
        }
    }

    /* JADX INFO: renamed from: b */
    public void m2274b(int i10) {
        TabLayout tabLayout = (TabLayout) this.f3051d;
        Rect bounds = tabLayout.f2472p.getBounds();
        tabLayout.f2472p.setBounds(bounds.left, 0, bounds.right, i10);
        requestLayout();
    }

    /* JADX INFO: renamed from: c */
    public void m2275c(View view, View view2, float f8) {
        TabLayout tabLayout = (TabLayout) this.f3051d;
        if (view == null || view.getWidth() <= 0) {
            Drawable drawable = tabLayout.f2472p;
            drawable.setBounds(-1, drawable.getBounds().top, -1, tabLayout.f2472p.getBounds().bottom);
        } else {
            tabLayout.f2444K.mo1153u(tabLayout, view, view2, f8, tabLayout.f2472p);
        }
        postInvalidateOnAnimation();
    }

    /* JADX INFO: renamed from: d */
    public void m2276d(int i10, int i11, boolean z9) {
        TabLayout tabLayout = (TabLayout) this.f3051d;
        if (tabLayout.f2458b == i10) {
            return;
        }
        View childAt = getChildAt(tabLayout.getSelectedTabPosition());
        View childAt2 = getChildAt(i10);
        if (childAt2 == null) {
            m2273a(tabLayout.getSelectedTabPosition());
            return;
        }
        tabLayout.f2458b = i10;
        C1273g c1273g = new C1273g(this, childAt, childAt2);
        if (!z9) {
            ((ValueAnimator) this.f3050c).removeAllUpdateListeners();
            ((ValueAnimator) this.f3050c).addUpdateListener(c1273g);
            return;
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        this.f3050c = valueAnimator;
        valueAnimator.setInterpolator(tabLayout.f2445L);
        valueAnimator.setDuration(i11);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        valueAnimator.addUpdateListener(c1273g);
        valueAnimator.start();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int height;
        switch (this.f3049b) {
            case 0:
                TabLayout tabLayout = (TabLayout) this.f3051d;
                int iHeight = tabLayout.f2472p.getBounds().height();
                if (iHeight < 0) {
                    iHeight = tabLayout.f2472p.getIntrinsicHeight();
                }
                int i10 = tabLayout.f2437D;
                if (i10 == 0) {
                    height = getHeight() - iHeight;
                    iHeight = getHeight();
                } else if (i10 != 1) {
                    height = 0;
                    if (i10 != 2) {
                        iHeight = i10 != 3 ? 0 : getHeight();
                    }
                } else {
                    height = (getHeight() - iHeight) / 2;
                    iHeight = (getHeight() + iHeight) / 2;
                }
                if (tabLayout.f2472p.getBounds().width() > 0) {
                    Rect bounds = tabLayout.f2472p.getBounds();
                    tabLayout.f2472p.setBounds(bounds.left, height, bounds.right, iHeight);
                    tabLayout.f2472p.draw(canvas);
                }
                super.draw(canvas);
                break;
            default:
                super.draw(canvas);
                break;
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onDraw(Canvas canvas) {
        switch (this.f3049b) {
            case 1:
                super.onDraw(canvas);
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat(AbstractC1387m.m2421h(new byte[]{-75, 40, -27, -54, -11}, new byte[]{-3, 96, -33, -89, -104, 60, -48, -93}), Locale.getDefault());
                SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE, -4, -60, -38, 76, -100, -71, 74}, new byte[]{27, -104, -2, -105, 1, -90, -64, 51}), Locale.getDefault());
                Date date = new Date();
                ((TextView) this.f3050c).setText(simpleDateFormat.format(date));
                ((TextView) this.f3051d).setText(simpleDateFormat2.format(date));
                postInvalidateDelayed(10000L);
                break;
            default:
                super.onDraw(canvas);
                break;
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z9, int i10, int i11, int i12, int i13) {
        switch (this.f3049b) {
            case 0:
                TabLayout tabLayout = (TabLayout) this.f3051d;
                super.onLayout(z9, i10, i11, i12, i13);
                ValueAnimator valueAnimator = (ValueAnimator) this.f3050c;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    m2276d(tabLayout.getSelectedTabPosition(), -1, false);
                } else {
                    if (tabLayout.f2458b == -1) {
                        tabLayout.f2458b = tabLayout.getSelectedTabPosition();
                    }
                    m2273a(tabLayout.f2458b);
                }
                break;
            default:
                super.onLayout(z9, i10, i11, i12, i13);
                break;
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        switch (this.f3049b) {
            case 0:
                TabLayout tabLayout = (TabLayout) this.f3051d;
                super.onMeasure(i10, i11);
                if (View.MeasureSpec.getMode(i10) == 1073741824) {
                    boolean z9 = true;
                    if (tabLayout.f2435B == 1 || tabLayout.f2438E == 2) {
                        int childCount = getChildCount();
                        int iMax = 0;
                        for (int i12 = 0; i12 < childCount; i12++) {
                            View childAt = getChildAt(i12);
                            if (childAt.getVisibility() == 0) {
                                iMax = Math.max(iMax, childAt.getMeasuredWidth());
                            }
                        }
                        if (iMax > 0) {
                            if (iMax * childCount <= getMeasuredWidth() - (((int) AbstractC3203q.m5138a(16, getContext())) * 2)) {
                                boolean z10 = false;
                                for (int i13 = 0; i13 < childCount; i13++) {
                                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i13).getLayoutParams();
                                    if (layoutParams.width != iMax || layoutParams.weight != 0.0f) {
                                        layoutParams.width = iMax;
                                        layoutParams.weight = 0.0f;
                                        z10 = true;
                                    }
                                }
                                z9 = z10;
                            } else {
                                tabLayout.f2435B = 0;
                                tabLayout.m1845p(false);
                            }
                            if (z9) {
                                super.onMeasure(i10, i11);
                            }
                            break;
                        }
                    }
                }
                break;
            default:
                super.onMeasure(i10, i11);
                break;
        }
    }

    public /* synthetic */ C1274h(Context context) {
        super(context);
    }
}

package d4;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.View$MeasureSpec;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.TextView;
import com.google.android.material.tabs.TabLayout;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.jvm.internal.ByteCompanionObject;
import s3.q;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h extends LinearLayout {
    public static final /* synthetic */ int e = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1742b = 1;
    public Object c;
    public View d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(TabLayout tabLayout, Context context) {
        super(context);
        this.d = tabLayout;
        setWillNotDraw(false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void a(int i9) {
        TabLayout tabLayout = (TabLayout) this.d;
        if (tabLayout.W == 0 || (tabLayout.getTabSelectedIndicator().getBounds().left == -1 && tabLayout.getTabSelectedIndicator().getBounds().right == -1)) {
            View childAt = getChildAt(i9);
            c5.e eVar = tabLayout.K;
            Drawable drawable = tabLayout.f1371p;
            eVar.getClass();
            RectF rectFP = c5.e.p(tabLayout, childAt);
            drawable.setBounds((int) rectFP.left, drawable.getBounds().top, (int) rectFP.right, drawable.getBounds().bottom);
            tabLayout.f1360b = i9;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void b(int i9) {
        TabLayout tabLayout = (TabLayout) this.d;
        Rect bounds = tabLayout.f1371p.getBounds();
        tabLayout.f1371p.setBounds(bounds.left, 0, bounds.right, i9);
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void c(View view, View view2, float f8) {
        TabLayout tabLayout = (TabLayout) this.d;
        if (view == null || view.getWidth() <= 0) {
            Drawable drawable = tabLayout.f1371p;
            drawable.setBounds(-1, drawable.getBounds().top, -1, tabLayout.f1371p.getBounds().bottom);
        } else {
            tabLayout.K.u(tabLayout, view, view2, f8, tabLayout.f1371p);
        }
        postInvalidateOnAnimation();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void d(int i9, int i10, boolean z8) {
        TabLayout tabLayout = (TabLayout) this.d;
        if (tabLayout.f1360b == i9) {
            return;
        }
        View childAt = getChildAt(tabLayout.getSelectedTabPosition());
        View childAt2 = getChildAt(i9);
        if (childAt2 == null) {
            a(tabLayout.getSelectedTabPosition());
            return;
        }
        tabLayout.f1360b = i9;
        g gVar = new g(this, childAt, childAt2);
        if (!z8) {
            ((ValueAnimator) this.c).removeAllUpdateListeners();
            ((ValueAnimator) this.c).addUpdateListener(gVar);
            return;
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        this.c = valueAnimator;
        valueAnimator.setInterpolator(tabLayout.L);
        valueAnimator.setDuration(i10);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        valueAnimator.addUpdateListener(gVar);
        valueAnimator.start();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void draw(Canvas canvas) {
        int height;
        switch (this.f1742b) {
            case 0:
                TabLayout tabLayout = (TabLayout) this.d;
                int iHeight = tabLayout.f1371p.getBounds().height();
                if (iHeight < 0) {
                    iHeight = tabLayout.f1371p.getIntrinsicHeight();
                }
                int i9 = tabLayout.D;
                if (i9 == 0) {
                    height = getHeight() - iHeight;
                    iHeight = getHeight();
                } else if (i9 != 1) {
                    height = 0;
                    if (i9 != 2) {
                        iHeight = i9 != 3 ? 0 : getHeight();
                    }
                } else {
                    height = (getHeight() - iHeight) / 2;
                    iHeight = (getHeight() + iHeight) / 2;
                }
                if (tabLayout.f1371p.getBounds().width() > 0) {
                    Rect bounds = tabLayout.f1371p.getBounds();
                    tabLayout.f1371p.setBounds(bounds.left, height, bounds.right, iHeight);
                    tabLayout.f1371p.draw(canvas);
                }
                super.draw(canvas);
                break;
            default:
                super.draw(canvas);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.LinearLayout, android.view.View
    public void onDraw(Canvas canvas) {
        switch (this.f1742b) {
            case 1:
                super.onDraw(canvas);
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat(e0.m.h(new byte[]{-75, 40, -27, -54, -11}, new byte[]{-3, 96, -33, -89, -104, 60, -48, -93}), Locale.getDefault());
                SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(e0.m.h(new byte[]{ByteCompanionObject.MAX_VALUE, -4, -60, -38, 76, -100, -71, 74}, new byte[]{27, -104, -2, -105, 1, -90, -64, 51}), Locale.getDefault());
                Date date = new Date();
                ((TextView) this.c).setText(simpleDateFormat.format(date));
                ((TextView) this.d).setText(simpleDateFormat2.format(date));
                postInvalidateDelayed(10000L);
                break;
            default:
                super.onDraw(canvas);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z8, int i9, int i10, int i11, int i12) {
        switch (this.f1742b) {
            case 0:
                TabLayout tabLayout = (TabLayout) this.d;
                super.onLayout(z8, i9, i10, i11, i12);
                ValueAnimator valueAnimator = (ValueAnimator) this.c;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    d(tabLayout.getSelectedTabPosition(), -1, false);
                } else {
                    if (tabLayout.f1360b == -1) {
                        tabLayout.f1360b = tabLayout.getSelectedTabPosition();
                    }
                    a(tabLayout.f1360b);
                }
                break;
            default:
                super.onLayout(z8, i9, i10, i11, i12);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i9, int i10) {
        switch (this.f1742b) {
            case 0:
                TabLayout tabLayout = (TabLayout) this.d;
                super.onMeasure(i9, i10);
                if (View$MeasureSpec.getMode(i9) == 1073741824) {
                    boolean z8 = true;
                    if (tabLayout.B == 1 || tabLayout.E == 2) {
                        int childCount = getChildCount();
                        int iMax = 0;
                        for (int i11 = 0; i11 < childCount; i11++) {
                            View childAt = getChildAt(i11);
                            if (childAt.getVisibility() == 0) {
                                iMax = Math.max(iMax, childAt.getMeasuredWidth());
                            }
                        }
                        if (iMax > 0) {
                            if (iMax * childCount <= getMeasuredWidth() - (((int) q.a(16, getContext())) * 2)) {
                                boolean z9 = false;
                                for (int i12 = 0; i12 < childCount; i12++) {
                                    LinearLayout$LayoutParams linearLayout$LayoutParams = (LinearLayout$LayoutParams) getChildAt(i12).getLayoutParams();
                                    if (linearLayout$LayoutParams.width != iMax || linearLayout$LayoutParams.weight != 0.0f) {
                                        linearLayout$LayoutParams.width = iMax;
                                        linearLayout$LayoutParams.weight = 0.0f;
                                        z9 = true;
                                    }
                                }
                                z8 = z9;
                            } else {
                                tabLayout.B = 0;
                                tabLayout.p(false);
                            }
                            if (z8) {
                                super.onMeasure(i9, i10);
                            }
                            break;
                        }
                    }
                }
                break;
            default:
                super.onMeasure(i9, i10);
                break;
        }
    }

    public /* synthetic */ h(Context context) {
        super(context);
    }
}

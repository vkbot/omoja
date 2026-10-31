package p032c7;

import android.content.res.ColorStateList;
import android.os.Handler;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.AllWidgetServices;
import com.example.navistart.ModernMainActivity;
import com.example.navistart.R;
import com.example.navistart.home.WebLauncherActivity;
import com.example.navistart.punto;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import p016b1.C0862c;
import p043d6.C1302a;
import p043d6.C1308g;
import p047e0.AbstractC1387m;
import p047e0.EnumC1362h;
import p047e0.RunnableC1350e2;
import p062f5.RunnableC1556j;
import p078h0.C1652b;
import p098j0.C1917c;
import p132m0.C2283e0;
import p190s1.C3166q0;
import p190s1.RunnableC3138c0;
import p198t1.C3223a;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: c7.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1001e implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f971b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ boolean f972c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f973d;

    public /* synthetic */ RunnableC1001e(boolean z9, CountDownLatch countDownLatch) {
        this.f971b = 6;
        this.f972c = z9;
        this.f973d = countDownLatch;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList;
        ArrayList arrayList2;
        int i10 = 1;
        switch (this.f971b) {
            case 0:
                ((C1003g) this.f973d).f979c.m1209d(this.f972c);
                return;
            case 1:
                ((C1302a) this.f973d).f3108a.m1209d(this.f972c);
                return;
            case 2:
                C0862c c0862c = (C0862c) this.f973d;
                boolean z9 = this.f972c;
                C1308g c1308g = (C1308g) c0862c.f545b;
                c1308g.f3121f = z9;
                if (c1308g.f3118c) {
                    Handler handler = c1308g.f3119d;
                    handler.removeCallbacksAndMessages(null);
                    if (c1308g.f3121f) {
                        handler.postDelayed(c1308g.f3120e, 300000L);
                        return;
                    }
                    return;
                }
                return;
            case 3:
                AllWidgetServices allWidgetServices = (AllWidgetServices) this.f973d;
                boolean z10 = this.f972c;
                AllWidgetServices allWidgetServices2 = AllWidgetServices.f1208g;
                allWidgetServices.m1388e(EnumC1362h.f3253h, z10);
                return;
            case 4:
                ModernMainActivity modernMainActivity = (ModernMainActivity) this.f973d;
                boolean z11 = this.f972c;
                String str = ModernMainActivity.f1436B1;
                TextView textView = (TextView) modernMainActivity.findViewById(R.id.modern_install_service_status);
                View viewFindViewById = modernMainActivity.findViewById(R.id.modern_install_service_indicator);
                if (textView == null || viewFindViewById == null) {
                    return;
                }
                textView.setText(z11 ? R.string.modern_service_running : R.string.modern_service_stopped);
                int color = ContextCompat.getColor(modernMainActivity, z11 ? R.color.modern_success : R.color.modern_text_secondary);
                textView.setTextColor(color);
                viewFindViewById.setBackgroundTintList(ColorStateList.valueOf(color));
                return;
            case 5:
                punto puntoVar = (punto) this.f973d;
                boolean z12 = this.f972c;
                ImageView imageView = puntoVar.f1886o;
                if (z12) {
                    imageView.setImageResource(R.drawable.connected);
                    puntoVar.f1886o.clearAnimation();
                    puntoVar.f1880i.setVisibility(8);
                    return;
                }
                imageView.setImageResource(R.drawable.disconnected);
                puntoVar.f1880i.setVisibility(0);
                AlphaAnimation alphaAnimation = new AlphaAnimation(0.2f, 1.0f);
                alphaAnimation.setDuration(500L);
                alphaAnimation.setRepeatMode(2);
                alphaAnimation.setRepeatCount(-1);
                puntoVar.f1886o.startAnimation(alphaAnimation);
                return;
            case 6:
                boolean z13 = this.f972c;
                CountDownLatch countDownLatch = (CountDownLatch) this.f973d;
                try {
                    synchronized (C1652b.f4210s) {
                        try {
                            if (C1652b.f4197f == null) {
                                C1652b.f4197f = new C1652b(C1652b.m2739h(), z13);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                    C1652b.f4212u = false;
                    countDownLatch.countDown();
                    return;
                } catch (Throwable th2) {
                    C1652b.f4212u = false;
                    countDownLatch.countDown();
                    throw th2;
                }
            case 7:
                C2283e0 c2283e0 = (C2283e0) this.f973d;
                boolean z14 = this.f972c;
                RecyclerView recyclerView = c2283e0.f6026l;
                if (recyclerView == null) {
                    return;
                }
                recyclerView.requestLayout();
                if (c2283e0.f6026l.getParent() instanceof View) {
                    ((View) c2283e0.f6026l.getParent()).requestLayout();
                }
                if (!z14 || (arrayList = c2283e0.f6028n) == null || arrayList.size() <= 0) {
                    return;
                }
                c2283e0.f6026l.scrollToPosition(c2283e0.f6028n.size() - 1);
                return;
            case 8:
                C3166q0 c3166q0 = (C3166q0) this.f973d;
                boolean z15 = this.f972c;
                try {
                    arrayList2 = new C1917c(c3166q0.getContext().getApplicationContext()).m2990e();
                    break;
                } catch (RuntimeException unused) {
                    arrayList2 = new ArrayList();
                }
                c3166q0.f9182r.post(new RunnableC1350e2(c3166q0, arrayList2, z15, 6));
                return;
            case 9:
                WebLauncherActivity webLauncherActivity = (WebLauncherActivity) this.f973d;
                if (!this.f972c) {
                    String str2 = WebLauncherActivity.f1739l;
                    AbstractC3656k.m5878x(webLauncherActivity, AbstractC1387m.m2421h(new byte[]{47, 109, 64, -55, -9, -70, 39, -38, 75, 32, 32, -84, 108, -69, 26, -37, 126, 33, 28, 92, 7, -43, 117, -120, 47, 74, 65, -4, 6, -32, 117, -120, 46, 124, -80, -84, 101, -70, 47, -38, 78, 33, 16, -84, 103, -69, 25, -38, 66, 33, 19, -83, 89, 75, 116, -80, 47, 64, 65, -4, 6, -23, 116, -78, 47, 77, 64, -58, 6, -24}, new byte[]{-1, -16, -112, 124, -41, 107, -92, 10}));
                    return;
                } else {
                    C3166q0 c3166q1 = webLauncherActivity.f1748i;
                    if (c3166q1 != null) {
                        c3166q1.f9176l.execute(new RunnableC3138c0(c3166q1, i10));
                    }
                    AbstractC3656k.m5878x(webLauncherActivity, AbstractC1387m.m2421h(new byte[]{-34, -63, -116, 75, 24, 77, 73, -82, 46, -79, -40, 41, 118, 35, 36, 55, -33, -29, -115, 120, 25, 113, 73, -89, -34, -35, -116, 71, 24, 65, 73, -84, -34, -43, -116, 68}, new byte[]{14, 96, 92, -7, -56, -13, -103, 23}));
                    return;
                }
            default:
                C3223a c3223a = (C3223a) this.f973d;
                boolean z16 = this.f972c;
                LinearLayout linearLayout = c3223a.f9428c;
                if (!z16) {
                    linearLayout.animate().alpha(0.0f).translationY(50.0f).setDuration(600).withEndAction(new RunnableC1556j(18, c3223a)).start();
                    return;
                }
                linearLayout.setAlpha(0.0f);
                linearLayout.setTranslationY(50.0f);
                linearLayout.setVisibility(0);
                linearLayout.animate().alpha(1.0f).translationY(0.0f).setDuration(600).start();
                return;
        }
    }

    public /* synthetic */ RunnableC1001e(Object obj, boolean z9, int i10) {
        this.f971b = i10;
        this.f973d = obj;
        this.f972c = z9;
    }
}

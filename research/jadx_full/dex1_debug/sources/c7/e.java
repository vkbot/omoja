package c7;

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
import com.example.navistart.home.WebLauncherActivity;
import com.example.navistart.punto;
import e0.e2;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import m0.e0;
import s1.c0;
import s1.q0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f513b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e(boolean z8, CountDownLatch countDownLatch) {
        this.f513b = 6;
        this.c = z8;
        this.d = countDownLatch;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList;
        ArrayList arrayList2;
        switch (this.f513b) {
            case 0:
                ((g) this.d).c.d(this.c);
                return;
            case 1:
                ((d6.a) this.d).f1777a.d(this.c);
                return;
            case 2:
                b1.c cVar = (b1.c) this.d;
                boolean z8 = this.c;
                d6.g gVar = (d6.g) cVar.f232b;
                gVar.f1787f = z8;
                if (gVar.c) {
                    Handler handler = gVar.d;
                    handler.removeCallbacksAndMessages(null);
                    if (gVar.f1787f) {
                        handler.postDelayed(gVar.e, 300000L);
                        return;
                    }
                    return;
                }
                return;
            case 3:
                AllWidgetServices allWidgetServices = (AllWidgetServices) this.d;
                boolean z9 = this.c;
                AllWidgetServices allWidgetServices2 = AllWidgetServices.f631g;
                allWidgetServices.e(e0.h.f1851h, z9);
                return;
            case 4:
                ModernMainActivity modernMainActivity = (ModernMainActivity) this.d;
                boolean z10 = this.c;
                String str = ModernMainActivity.B1;
                TextView textView = (TextView) modernMainActivity.findViewById(2131297048);
                View viewFindViewById = modernMainActivity.findViewById(2131297047);
                if (textView == null || viewFindViewById == null) {
                    return;
                }
                textView.setText(z10 ? 2131952333 : 2131952334);
                int color = ContextCompat.getColor(modernMainActivity, z10 ? 2131035006 : 2131035010);
                textView.setTextColor(color);
                viewFindViewById.setBackgroundTintList(ColorStateList.valueOf(color));
                return;
            case 5:
                punto puntoVar = (punto) this.d;
                boolean z11 = this.c;
                ImageView imageView = puntoVar.f1015o;
                if (z11) {
                    imageView.setImageResource(2131165385);
                    puntoVar.f1015o.clearAnimation();
                    puntoVar.f1009i.setVisibility(8);
                    return;
                }
                imageView.setImageResource(2131165416);
                puntoVar.f1009i.setVisibility(0);
                AlphaAnimation alphaAnimation = new AlphaAnimation(0.2f, 1.0f);
                alphaAnimation.setDuration(500L);
                alphaAnimation.setRepeatMode(2);
                alphaAnimation.setRepeatCount(-1);
                puntoVar.f1015o.startAnimation(alphaAnimation);
                return;
            case 6:
                boolean z12 = this.c;
                CountDownLatch countDownLatch = (CountDownLatch) this.d;
                try {
                    synchronized (h0.b.f2432s) {
                        try {
                            if (h0.b.f2420f == null) {
                                h0.b.f2420f = new h0.b(h0.b.h(), z12);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                    h0.b.f2433u = false;
                    countDownLatch.countDown();
                    return;
                } catch (Throwable th2) {
                    h0.b.f2433u = false;
                    countDownLatch.countDown();
                    throw th2;
                }
            case 7:
                e0 e0Var = (e0) this.d;
                boolean z13 = this.c;
                RecyclerView recyclerView = e0Var.f3390l;
                if (recyclerView == null) {
                    return;
                }
                recyclerView.requestLayout();
                if (e0Var.f3390l.getParent() instanceof View) {
                    ((View) e0Var.f3390l.getParent()).requestLayout();
                }
                if (!z13 || (arrayList = e0Var.f3392n) == null || arrayList.size() <= 0) {
                    return;
                }
                e0Var.f3390l.scrollToPosition(e0Var.f3392n.size() - 1);
                return;
            case 8:
                q0 q0Var = (q0) this.d;
                boolean z14 = this.c;
                try {
                    arrayList2 = new j0.c(q0Var.getContext().getApplicationContext()).e();
                    break;
                } catch (RuntimeException unused) {
                    arrayList2 = new ArrayList();
                }
                q0Var.r.post(new e2(q0Var, arrayList2, z14, 6));
                return;
            case 9:
                WebLauncherActivity webLauncherActivity = (WebLauncherActivity) this.d;
                if (!this.c) {
                    String str2 = WebLauncherActivity.f910l;
                    y5.k.x(webLauncherActivity, e0.m.h(new byte[]{47, 109, 64, -55, -9, -70, 39, -38, 75, 32, 32, -84, 108, -69, 26, -37, 126, 33, 28, 92, 7, -43, 117, -120, 47, 74, 65, -4, 6, -32, 117, -120, 46, 124, -80, -84, 101, -70, 47, -38, 78, 33, 16, -84, 103, -69, 25, -38, 66, 33, 19, -83, 89, 75, 116, -80, 47, 64, 65, -4, 6, -23, 116, -78, 47, 77, 64, -58, 6, -24}, new byte[]{-1, -16, -112, 124, -41, 107, -92, 10}));
                    return;
                } else {
                    q0 q0Var2 = webLauncherActivity.f916i;
                    if (q0Var2 != null) {
                        q0Var2.f5177l.execute(new c0(q0Var2, 1));
                    }
                    y5.k.x(webLauncherActivity, e0.m.h(new byte[]{-34, -63, -116, 75, 24, 77, 73, -82, 46, -79, -40, 41, 118, 35, 36, 55, -33, -29, -115, 120, 25, 113, 73, -89, -34, -35, -116, 71, 24, 65, 73, -84, -34, -43, -116, 68}, new byte[]{14, 96, 92, -7, -56, -13, -103, 23}));
                    return;
                }
            default:
                t1.a aVar = (t1.a) this.d;
                boolean z15 = this.c;
                LinearLayout linearLayout = aVar.c;
                if (!z15) {
                    linearLayout.animate().alpha(0.0f).translationY(50.0f).setDuration(600).withEndAction(new f5.j(18, aVar)).start();
                    return;
                }
                linearLayout.setAlpha(0.0f);
                linearLayout.setTranslationY(50.0f);
                linearLayout.setVisibility(0);
                linearLayout.animate().alpha(1.0f).translationY(0.0f).setDuration(600).start();
                return;
        }
    }

    public /* synthetic */ e(Object obj, boolean z8, int i9) {
        this.f513b = i9;
        this.d = obj;
        this.c = z8;
    }
}

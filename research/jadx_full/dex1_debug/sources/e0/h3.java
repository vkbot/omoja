package e0;

import android.view.View;
import android.view.View$OnClickListener;
import com.example.navistart.MainActivity;
import com.example.navistart.VibVodActivity;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class h3 implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1859b;
    public final /* synthetic */ VibVodActivity c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ h3(VibVodActivity vibVodActivity, int i9) {
        this.f1859b = i9;
        this.c = vibVodActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int i9 = this.f1859b;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        VibVodActivity vibVodActivity = this.c;
        switch (i9) {
            case 0:
                Boolean bool = VibVodActivity.f885g;
                vibVodActivity.finish();
                return;
            case 1:
                Boolean bool2 = vibVodActivity.f887f;
                d0.d(vibVodActivity);
                if (MainActivity.w() && bool2.booleanValue()) {
                    throw null;
                }
                if (MainActivity.v(vibVodActivity) && bool2.booleanValue()) {
                    throw null;
                }
                vibVodActivity.s(1);
                if (vibVodActivity.t().booleanValue()) {
                    h0.b.a();
                    h0.b.d().carsetvod(1);
                    h0.b.a().e().e = 1;
                }
                vibVodActivity.f886b.schedule(new g3(vibVodActivity, 1), 300L, timeUnit);
                return;
            case 2:
                Boolean bool3 = vibVodActivity.f887f;
                d0.d(vibVodActivity);
                if (MainActivity.w() && bool3.booleanValue()) {
                    throw null;
                }
                if (MainActivity.v(vibVodActivity) && bool3.booleanValue()) {
                    throw null;
                }
                vibVodActivity.s(2);
                if (vibVodActivity.t().booleanValue()) {
                    h0.b.a();
                    h0.b.d().carsetvod(2);
                    h0.b.a().e().e = 2;
                }
                vibVodActivity.f886b.schedule(new g3(vibVodActivity, 1), 300L, timeUnit);
                return;
            default:
                Boolean bool4 = vibVodActivity.f887f;
                d0.d(vibVodActivity);
                if (MainActivity.w() && bool4.booleanValue()) {
                    throw null;
                }
                if (MainActivity.v(vibVodActivity) && bool4.booleanValue()) {
                    throw null;
                }
                vibVodActivity.s(3);
                if (vibVodActivity.t().booleanValue()) {
                    h0.b.a();
                    h0.b.d().carsetvod(3);
                    h0.b.a().e().e = 3;
                }
                vibVodActivity.f886b.schedule(new g3(vibVodActivity, 1), 300L, timeUnit);
                return;
        }
    }
}

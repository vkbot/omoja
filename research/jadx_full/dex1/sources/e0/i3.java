package e0;

import android.view.View;
import android.view.View$OnLongClickListener;
import com.example.navistart.VibVodActivity;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class i3 implements View$OnLongClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1865b;
    public final /* synthetic */ VibVodActivity c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ i3(VibVodActivity vibVodActivity, int i9) {
        this.f1865b = i9;
        this.c = vibVodActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnLongClickListener
    public final boolean onLongClick(View view) {
        int i9 = this.f1865b;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        VibVodActivity vibVodActivity = this.c;
        switch (i9) {
            case 0:
                Boolean bool = VibVodActivity.f885g;
                vibVodActivity.u(1, Boolean.TRUE);
                vibVodActivity.f886b.schedule(new g3(vibVodActivity, 3), 500L, timeUnit);
                if (vibVodActivity.t().booleanValue()) {
                    h0.b.a();
                    h0.b.d().carsavvod(1);
                }
                break;
            case 1:
                Boolean bool2 = VibVodActivity.f885g;
                vibVodActivity.u(2, Boolean.TRUE);
                vibVodActivity.f886b.schedule(new g3(vibVodActivity, 2), 500L, timeUnit);
                if (vibVodActivity.t().booleanValue()) {
                    h0.b.a();
                    h0.b.d().carsavvod(2);
                }
                break;
            default:
                Boolean bool3 = VibVodActivity.f885g;
                vibVodActivity.u(3, Boolean.TRUE);
                vibVodActivity.f886b.schedule(new g3(vibVodActivity, 4), 500L, timeUnit);
                if (vibVodActivity.t().booleanValue()) {
                    h0.b.a();
                    h0.b.d().carsavvod(3);
                }
                break;
        }
        return true;
    }
}

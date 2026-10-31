package p256z1;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.example.navistart.R;
import com.github.clans.fab.FloatingActionButton;

/* JADX INFO: renamed from: z1.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3694b extends GestureDetector.SimpleOnGestureListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f10932a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ View f10933b;

    public /* synthetic */ C3694b(int i10, View view) {
        this.f10932a = i10;
        this.f10933b = view;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onDown(MotionEvent motionEvent) {
        switch (this.f10932a) {
            case 0:
                FloatingActionButton floatingActionButton = (FloatingActionButton) this.f10933b;
                C3703k c3703k = (C3703k) floatingActionButton.getTag(R.id.fab_label);
                if (c3703k != null) {
                    c3703k.m5916c();
                }
                floatingActionButton.m1688h();
                break;
            default:
                C3703k c3703k2 = (C3703k) this.f10933b;
                c3703k2.m5916c();
                FloatingActionButton floatingActionButton2 = c3703k2.f10982n;
                if (floatingActionButton2 != null) {
                    floatingActionButton2.m1688h();
                }
                break;
        }
        return super.onDown(motionEvent);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        switch (this.f10932a) {
            case 0:
                FloatingActionButton floatingActionButton = (FloatingActionButton) this.f10933b;
                C3703k c3703k = (C3703k) floatingActionButton.getTag(R.id.fab_label);
                if (c3703k != null) {
                    c3703k.m5917d();
                }
                floatingActionButton.m1689i();
                break;
            default:
                C3703k c3703k2 = (C3703k) this.f10933b;
                c3703k2.m5917d();
                FloatingActionButton floatingActionButton2 = c3703k2.f10982n;
                if (floatingActionButton2 != null) {
                    floatingActionButton2.m1689i();
                }
                break;
        }
        return super.onSingleTapUp(motionEvent);
    }
}

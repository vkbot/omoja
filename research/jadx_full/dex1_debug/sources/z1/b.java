package z1;

import android.view.GestureDetector$SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import com.github.clans.fab.FloatingActionButton;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b extends GestureDetector$SimpleOnGestureListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6152a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f6153b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(int i9, View view) {
        this.f6152a = i9;
        this.f6153b = view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.GestureDetector$SimpleOnGestureListener, android.view.GestureDetector$OnGestureListener
    public final boolean onDown(MotionEvent motionEvent) {
        switch (this.f6152a) {
            case 0:
                FloatingActionButton floatingActionButton = (FloatingActionButton) this.f6153b;
                k kVar = (k) floatingActionButton.getTag(2131296762);
                if (kVar != null) {
                    kVar.c();
                }
                floatingActionButton.h();
                break;
            default:
                k kVar2 = (k) this.f6153b;
                kVar2.c();
                FloatingActionButton floatingActionButton2 = kVar2.f6184n;
                if (floatingActionButton2 != null) {
                    floatingActionButton2.h();
                }
                break;
        }
        return super.onDown(motionEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.GestureDetector$SimpleOnGestureListener, android.view.GestureDetector$OnGestureListener
    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        switch (this.f6152a) {
            case 0:
                FloatingActionButton floatingActionButton = (FloatingActionButton) this.f6153b;
                k kVar = (k) floatingActionButton.getTag(2131296762);
                if (kVar != null) {
                    kVar.d();
                }
                floatingActionButton.i();
                break;
            default:
                k kVar2 = (k) this.f6153b;
                kVar2.d();
                FloatingActionButton floatingActionButton2 = kVar2.f6184n;
                if (floatingActionButton2 != null) {
                    floatingActionButton2.i();
                }
                break;
        }
        return super.onSingleTapUp(motionEvent);
    }
}

package s1;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l0 extends o0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public j0 f5123b;
    public View c;
    public TextView d;
    public TextView e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public b f5124f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f5125g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ImageView f5126h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public TextView f5127i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ImageView f5128j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextView f5129k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public TextView f5130l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public TextView f5131m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ImageView f5132n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public TextView f5133o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public TextView f5134p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final View[] f5135q;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public l0(Context context) {
        super(context);
        this.f5135q = new View[3];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f5124f == null || !this.f5125g) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return this.e == null || motionEvent.getX() < ((float) this.e.getLeft()) || motionEvent.getY() < ((float) this.e.getTop());
    }
}

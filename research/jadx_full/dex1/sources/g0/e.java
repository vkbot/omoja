package g0;

import android.view.ViewPropertyAnimator;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import ru.transfer.MessageData;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TextView f2334b;
    public TextView c;
    public ImageView d;
    public Button e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public LinearLayout f2335f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public MessageData f2336g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ViewPropertyAnimator f2337h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public d f2338i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MessageData getMsg() {
        return this.f2336g;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewPropertyAnimator viewPropertyAnimator = this.f2337h;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            this.f2337h = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMessageBubbleViewListener(d dVar) {
        this.f2338i = dVar;
    }
}

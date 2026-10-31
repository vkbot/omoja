package p067g0;

import android.view.ViewPropertyAnimator;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import ru.transfer.MessageData;

/* JADX INFO: renamed from: g0.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1603e extends LinearLayout {

    /* JADX INFO: renamed from: b */
    public TextView f4022b;

    /* JADX INFO: renamed from: c */
    public TextView f4023c;

    /* JADX INFO: renamed from: d */
    public ImageView f4024d;

    /* JADX INFO: renamed from: e */
    public Button f4025e;

    /* JADX INFO: renamed from: f */
    public LinearLayout f4026f;

    /* JADX INFO: renamed from: g */
    public MessageData f4027g;

    /* JADX INFO: renamed from: h */
    public ViewPropertyAnimator f4028h;

    /* JADX INFO: renamed from: i */
    public InterfaceC1602d f4029i;

    public MessageData getMsg() {
        return this.f4027g;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewPropertyAnimator viewPropertyAnimator = this.f4028h;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            this.f4028h = null;
        }
    }

    public void setMessageBubbleViewListener(InterfaceC1602d interfaceC1602d) {
        this.f4029i = interfaceC1602d;
    }
}

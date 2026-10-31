package s3;

import android.widget.ImageButton;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class r extends ImageButton {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5299b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(int i9, boolean z8) {
        super.setVisibility(i9);
        if (z8) {
            this.f5299b = i9;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getUserSetVisibility() {
        return this.f5299b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i9) {
        a(i9, true);
    }
}

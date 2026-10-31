package androidx.fragment.app;

import android.content.res.Configuration;
import androidx.core.app.MultiWindowModeChangedInfo;
import androidx.core.app.PictureInPictureModeChangedInfo;
import androidx.core.util.Consumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class i implements Consumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f189b;
    public final /* synthetic */ FragmentManager c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ i(FragmentManager fragmentManager, int i9) {
        this.f189b = i9;
        this.c = fragmentManager;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.util.Consumer
    public final void accept(Object obj) {
        switch (this.f189b) {
            case 0:
                FragmentManager.e(this.c, (Configuration) obj);
                break;
            case 1:
                FragmentManager.a(this.c, (Integer) obj);
                break;
            case 2:
                FragmentManager.d(this.c, (MultiWindowModeChangedInfo) obj);
                break;
            default:
                FragmentManager.c(this.c, (PictureInPictureModeChangedInfo) obj);
                break;
        }
    }
}

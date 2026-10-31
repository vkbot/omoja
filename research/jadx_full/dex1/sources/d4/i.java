package d4;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import com.google.android.material.tabs.TabLayout;
import m0.d0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public d0 f1743a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Drawable f1744b;
    public CharSequence c;
    public CharSequence d;
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public View f1745f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public TabLayout f1746g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public l f1747h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(CharSequence charSequence) {
        if (TextUtils.isEmpty(this.d) && !TextUtils.isEmpty(charSequence)) {
            this.f1747h.setContentDescription(charSequence);
        }
        this.c = charSequence;
        l lVar = this.f1747h;
        if (lVar != null) {
            lVar.e();
        }
    }
}

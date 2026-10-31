package p041d4;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import com.google.android.material.tabs.TabLayout;
import p132m0.EnumC2278d0;

/* JADX INFO: renamed from: d4.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1275i {

    /* JADX INFO: renamed from: a */
    public EnumC2278d0 f3052a;

    /* JADX INFO: renamed from: b */
    public Drawable f3053b;

    /* JADX INFO: renamed from: c */
    public CharSequence f3054c;

    /* JADX INFO: renamed from: d */
    public CharSequence f3055d;

    /* JADX INFO: renamed from: e */
    public int f3056e;

    /* JADX INFO: renamed from: f */
    public View f3057f;

    /* JADX INFO: renamed from: g */
    public TabLayout f3058g;

    /* JADX INFO: renamed from: h */
    public C1278l f3059h;

    /* JADX INFO: renamed from: a */
    public final void m2277a(CharSequence charSequence) {
        if (TextUtils.isEmpty(this.f3055d) && !TextUtils.isEmpty(charSequence)) {
            this.f3059h.setContentDescription(charSequence);
        }
        this.f3054c = charSequence;
        C1278l c1278l = this.f3059h;
        if (c1278l != null) {
            c1278l.m2282e();
        }
    }
}

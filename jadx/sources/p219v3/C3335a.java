package p219v3;

import android.R;
import android.content.res.ColorStateList;
import androidx.appcompat.C0148R;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.core.widget.CompoundButtonCompat;
import p134m3.AbstractC2381a;

/* JADX INFO: renamed from: v3.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3335a extends AppCompatRadioButton {

    /* JADX INFO: renamed from: d */
    public static final int[][] f9750d = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* JADX INFO: renamed from: b */
    public ColorStateList f9751b;

    /* JADX INFO: renamed from: c */
    public boolean f9752c;

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f9751b == null) {
            int iM3746a = AbstractC2381a.m3746a(C0148R.attr.colorControlActivated, this);
            int iM3746a2 = AbstractC2381a.m3746a(com.example.navistart.R.attr.colorOnSurface, this);
            int iM3746a3 = AbstractC2381a.m3746a(com.example.navistart.R.attr.colorSurface, this);
            this.f9751b = new ColorStateList(f9750d, new int[]{AbstractC2381a.m3748c(1.0f, iM3746a3, iM3746a), AbstractC2381a.m3748c(0.54f, iM3746a3, iM3746a2), AbstractC2381a.m3748c(0.38f, iM3746a3, iM3746a2), AbstractC2381a.m3748c(0.38f, iM3746a3, iM3746a2)});
        }
        return this.f9751b;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f9752c && CompoundButtonCompat.getButtonTintList(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z9) {
        this.f9752c = z9;
        if (z9) {
            CompoundButtonCompat.setButtonTintList(this, getMaterialThemeColorsTintList());
        } else {
            CompoundButtonCompat.setButtonTintList(this, null);
        }
    }
}

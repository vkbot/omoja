package v3;

import android.R$attr;
import android.content.res.ColorStateList;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.core.widget.CompoundButtonCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a extends AppCompatRadioButton {
    public static final int[][] d = {new int[]{R$attr.state_enabled, R$attr.state_checked}, new int[]{R$attr.state_enabled, -16842912}, new int[]{-16842910, R$attr.state_checked}, new int[]{-16842910, -16842912}};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ColorStateList f5527b;
    public boolean c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f5527b == null) {
            int iA = m3.a.a(androidx.appcompat.R$attr.colorControlActivated, this);
            int iA2 = m3.a.a(2130903337, this);
            int iA3 = m3.a.a(2130903359, this);
            this.f5527b = new ColorStateList(d, new int[]{m3.a.c(1.0f, iA3, iA), m3.a.c(0.54f, iA3, iA2), m3.a.c(0.38f, iA3, iA2), m3.a.c(0.38f, iA3, iA2)});
        }
        return this.f5527b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.c && CompoundButtonCompat.getButtonTintList(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setUseMaterialThemeColors(boolean z8) {
        this.c = z8;
        if (z8) {
            CompoundButtonCompat.setButtonTintList(this, getMaterialThemeColorsTintList());
        } else {
            CompoundButtonCompat.setButtonTintList(this, null);
        }
    }
}

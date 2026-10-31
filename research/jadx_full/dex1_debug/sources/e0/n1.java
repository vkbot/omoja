package e0;

import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;
import com.example.navistart.ModernMainActivity;
import com.example.navistart.PermActivity;
import com.example.navistart.SuperWidgets.WidgetBuilderFragment;
import com.example.navistart.W;
import com.woha.appmanag.ManageAppsActivity;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class n1 implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1905b;
    public final /* synthetic */ ModernMainActivity c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ n1(ModernMainActivity modernMainActivity, int i9) {
        this.f1905b = i9;
        this.c = modernMainActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int i9 = this.f1905b;
        ModernMainActivity modernMainActivity = this.c;
        switch (i9) {
            case 0:
                String str = ModernMainActivity.B1;
                y5.k.u(modernMainActivity, new Intent(modernMainActivity, (Class<?>) PermActivity.class), null);
                break;
            case 1:
                String str2 = ModernMainActivity.B1;
                W.t(modernMainActivity, WidgetBuilderFragment.class, null);
                break;
            case 2:
                String str3 = ModernMainActivity.B1;
                l0.a.t(m0.n0.class, null).show(modernMainActivity.getSupportFragmentManager(), m.h(new byte[]{55, 70, -45, 53, -77, -72, -57, -53, 52, 93, -32, 56, -80, -85, -58, -15, 53, 90, -34, 53, -81, -68}, new byte[]{81, 51, -65, 89, -64, -37, -75, -82}));
                break;
            case 3:
                String str4 = ModernMainActivity.B1;
                l0.a.t(m0.i.class, null).show(modernMainActivity.getSupportFragmentManager(), m.h(new byte[]{-27, -46, -57, 103, -9, -5, 122, 18, -16, -51, -49, 122, -16, -51, 101, 25, -15, -1, -62, 96, -30, -56, 101, 16}, new byte[]{-126, -96, -90, 9, -125, -92, 10, 119}));
                break;
            case 4:
                String str5 = ModernMainActivity.B1;
                l0.a.t(m0.y.class, null).show(modernMainActivity.getSupportFragmentManager(), m.h(new byte[]{16, -108, -78, -119, 23, 6, -22, -15, 18, -110, -91, -119, 19, 8, -18, -3, 31, -112, -97, -78, 14, 6, -27, -11, 20}, new byte[]{115, -11, -64, -42, 103, 103, -119, -102}));
                break;
            default:
                String str6 = ModernMainActivity.B1;
                Intent intent = new Intent(modernMainActivity, (Class<?>) ManageAppsActivity.class);
                intent.putExtra(m.h(new byte[]{-1, 46, -14, 30, 51, 13, 42, 109, -10, 41, -11, 30, 8, 51, 47, 120, -29, 46, -7, 21, 31}, new byte[]{-105, 71, -106, 123, 108, 108, 78, 27}), true);
                modernMainActivity.startActivity(intent);
                break;
        }
    }
}

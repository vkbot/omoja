package h7;

import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;
import com.woha.appmanag.FilePickerActivity;
import com.woha.appmanag.ManageAppsActivity;
import e0.m;
import kotlin.jvm.internal.ByteCompanionObject;
import m0.y;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class c implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2490b;
    public final /* synthetic */ ManageAppsActivity c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(ManageAppsActivity manageAppsActivity, int i9) {
        this.f2490b = i9;
        this.c = manageAppsActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int i9 = this.f2490b;
        ManageAppsActivity manageAppsActivity = this.c;
        switch (i9) {
            case 0:
                String str = ManageAppsActivity.e;
                Intent intent = new Intent(manageAppsActivity, (Class<?>) FilePickerActivity.class);
                intent.putExtra(m.h(new byte[]{123, 40, -51, 58, 25, 111, 107, 69, 120, 47, -46, 54, 41, 100}, new byte[]{29, 65, -95, 95, 70, 10, 19, 49}), m.h(new byte[]{78, 124, 70, 33}, new byte[]{96, 29, 54, 74, -105, 51, -106, 25}));
                intent.putExtra(m.h(new byte[]{-65, 80, 49, 67, -43, -54, 85, -86, -68, 87, 46, 79, -27, -63, 114, -77, -74, 93, 56, 121, -7, -54, 67, -70}, new byte[]{-39, 57, 93, 38, -118, -81, 45, -34}), 1);
                manageAppsActivity.startActivityForResult(intent, 1);
                break;
            case 1:
                String str2 = ManageAppsActivity.e;
                l0.a.t(m0.i.class, null).show(manageAppsActivity.getSupportFragmentManager(), m.h(new byte[]{42, -27, -55, -79, 33, -47, -37, 113, 63, -6, -63, -84, 38, -25, -60, 122, 62, -56, -52, -74, 52, -30, -60, 115}, new byte[]{77, -105, -88, -33, 85, -114, -85, 20}));
                break;
            case 2:
                String str3 = ManageAppsActivity.e;
                l0.a.t(y.class, null).show(manageAppsActivity.getSupportFragmentManager(), m.h(new byte[]{48, 56, 103, -25, -5, 3, -115, -124, 50, 62, 112, -25, -1, 13, -119, -120, 63, 60, 74, -36, -30, 3, -126, ByteCompanionObject.MIN_VALUE, 52}, new byte[]{83, 89, 21, -72, -117, 98, -18, -17}));
                break;
            default:
                String str4 = ManageAppsActivity.e;
                manageAppsActivity.finish();
                break;
        }
    }
}

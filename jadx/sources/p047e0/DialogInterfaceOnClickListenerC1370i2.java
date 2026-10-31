package p047e0;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import com.example.navistart.PermActivity;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: e0.i2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class DialogInterfaceOnClickListenerC1370i2 implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3271b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ PermActivity f3272c;

    public /* synthetic */ DialogInterfaceOnClickListenerC1370i2(PermActivity permActivity, int i10) {
        this.f3271b = i10;
        this.f3272c = permActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        int i11 = this.f3271b;
        PermActivity permActivity = this.f3272c;
        switch (i11) {
            case 0:
                String str = PermActivity.f1507c;
                permActivity.m1524x();
                break;
            default:
                String str2 = PermActivity.f1507c;
                Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{122, -106, 10, -38, 25, -36, 47, 105, 104, -99, 26, -36, 31, -37, 44, 52, 53, -71, 62, -8, 58, -4, 8, 6, 79, -79, 33, -26, 41, -15, 14, 19, 90, -79, 34, -5, 41, -26, 14, 19, 79, -79, 32, -17, 37}, new byte[]{27, -8, 110, -88, 118, -75, 75, 71}));
                intent.setData(Uri.fromParts(AbstractC1387m.m2421h(new byte[]{-103, -54, 24, -24, 73, 53, 57}, new byte[]{-23, -85, 123, -125, 40, 82, 92, 126}), permActivity.getPackageName(), null));
                AbstractC3656k.m5875u(permActivity, intent, null);
                break;
        }
    }
}

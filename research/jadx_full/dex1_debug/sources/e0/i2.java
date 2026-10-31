package e0;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.net.Uri;
import com.example.navistart.PermActivity;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class i2 implements DialogInterface$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1864b;
    public final /* synthetic */ PermActivity c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ i2(PermActivity permActivity, int i9) {
        this.f1864b = i9;
        this.c = permActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.DialogInterface$OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i9) {
        int i10 = this.f1864b;
        PermActivity permActivity = this.c;
        switch (i10) {
            case 0:
                String str = PermActivity.c;
                permActivity.x();
                break;
            default:
                String str2 = PermActivity.c;
                Intent intent = new Intent(m.h(new byte[]{122, -106, 10, -38, 25, -36, 47, 105, 104, -99, 26, -36, 31, -37, 44, 52, 53, -71, 62, -8, 58, -4, 8, 6, 79, -79, 33, -26, 41, -15, 14, 19, 90, -79, 34, -5, 41, -26, 14, 19, 79, -79, 32, -17, 37}, new byte[]{27, -8, 110, -88, 118, -75, 75, 71}));
                intent.setData(Uri.fromParts(m.h(new byte[]{-103, -54, 24, -24, 73, 53, 57}, new byte[]{-23, -85, 123, -125, 40, 82, 92, 126}), permActivity.getPackageName(), null));
                y5.k.u(permActivity, intent, null);
                break;
        }
    }
}

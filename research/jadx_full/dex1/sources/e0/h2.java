package e0;

import android.app.AlertDialog$Builder;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View$OnClickListener;
import androidx.core.app.ActivityCompat;
import androidx.core.view.PointerIconCompat;
import com.example.navistart.PermActivity;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class h2 implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1858b;
    public final /* synthetic */ PermActivity c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ h2(PermActivity permActivity, int i9) {
        this.f1858b = i9;
        this.c = permActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int i9 = this.f1858b;
        PermActivity permActivity = this.c;
        switch (i9) {
            case 0:
                String str = PermActivity.c;
                new AlertDialog$Builder(permActivity).setTitle(permActivity.getResources().getText(2131952020)).setMessage(permActivity.getResources().getText(2131952897)).setNegativeButton(permActivity.getResources().getText(2131952436), (DialogInterface$OnClickListener) null).show();
                break;
            case 1:
                String str2 = PermActivity.c;
                Intent intent = new Intent(m.h(new byte[]{-17, 41, -3, 100, 106, -92, 16, -9, -3, 34, -19, 98, 108, -93, 19, -86, -96, 6, -38, 85, 64, -98, 39, -112, -52, 14, -43, 95, 81, -108, 43, -118, -53, 19, -51, 95, 75, -118, 39}, new byte[]{-114, 71, -103, 22, 5, -51, 116, -39}));
                intent.addFlags(268435456);
                y5.k.u(permActivity, intent, null);
                break;
            case 2:
                String str3 = PermActivity.c;
                Intent intent2 = new Intent(m.h(new byte[]{-28, 66, -12, 108, 76, 38, 51, 47, -10, 73, -28, 106, 74, 33, 48, 114, -85, 126, -43, 79, 118, 10, 4, 85, -38, 101, -41, 80, 108, 29, 18, 94, -57, 109, -60, 74, 102, 29, 14, 94, -54, 124, -60, 87, 110, 6, 13, 64, -47, 101, -33, 80, 112}, new byte[]{-123, 44, -112, 30, 35, 79, 87, 1}));
                intent2.setData(Uri.parse(m.h(new byte[]{-75, -36, -55, 123, 36, -106, -115, 87}, new byte[]{-59, -67, -86, 16, 69, -15, -24, 109}) + permActivity.getPackageName()));
                y5.k.u(permActivity, intent2, null);
                break;
            case 3:
                String str4 = PermActivity.c;
                permActivity.finish();
                break;
            case 4:
                String str5 = PermActivity.c;
                permActivity.y();
                break;
            case 5:
                String str6 = PermActivity.c;
                ActivityCompat.requestPermissions(permActivity, new String[]{m.h(new byte[]{-33, 95, -106, -15, 76, 13, 44, 52, -50, 84, ByteCompanionObject.MIN_VALUE, -18, 74, 23, 59, 115, -47, 95, -36, -63, 111, 49, 13, 78, -15, 126, -90, -53, 124, 39, 7, 84, -16, 116, -79, -41}, new byte[]{-66, 49, -14, -125, 35, 100, 72, 26})}, PointerIconCompat.TYPE_HAND);
                break;
            case 6:
                String str7 = PermActivity.c;
                y5.k.u(permActivity, new Intent(m.h(new byte[]{-97, 115, 76, 56, 91, -10, 17, -114, -115, 120, 92, 62, 93, -15, 18, -45, -48, 124, 75, 62, 93, -16, 27, -114, -77, 92, 102, 11, 115, -38, 42, -17, -88, 88, 122, 6, 117, -58, 42, -16, -69, 79, 101, 3, 103, -52, 60, -17, -80}, new byte[]{-2, 29, 40, 74, 52, -97, 117, -96}), Uri.parse(m.h(new byte[]{-106, -54, -102, -57, 60, -59, -119, 38}, new byte[]{-26, -85, -7, -84, 93, -94, -20, 28}) + permActivity.getPackageName())), null);
                break;
            case 7:
                String str8 = PermActivity.c;
                y5.k.u(permActivity, new Intent(m.h(new byte[]{31, 117, -106, -80, -26, -18, 77, 93, 13, 126, -122, -74, -32, -23, 78, 0, 80, 90, -79, -106, -64, -56, 103, 44, 48, 84, -90, -117, -49, -50, 106, 50, 42, 82, -67, -116, -42, -53, 96, 32, 42, 94, -68, -121, -37, -40, 122, 54, 42, 79, -69, -116, -50, -44}, new byte[]{126, 27, -14, -62, -119, -121, 41, 115})), null);
                break;
            case 8:
                String str9 = PermActivity.c;
                ActivityCompat.requestPermissions(permActivity, new String[]{m.h(new byte[]{70, -24, 55, 23, -104, -116, 55, 94, 87, -29, 33, 8, -98, -106, 32, 25, 72, -24, 125, 36, -76, -90, 22, 35, 116, -39, 17, 36, -76, -82, 20, 34, 104, -45, 29, 33, -88, -87, 28, 51, 102, -46, 26, 42, -71}, new byte[]{39, -122, 83, 101, -9, -27, 83, 112})}, PointerIconCompat.TYPE_CONTEXT_MENU);
                break;
            case 9:
                String str10 = PermActivity.c;
                new AlertDialog$Builder(permActivity).setTitle(permActivity.getResources().getText(2131952020)).setMessage(permActivity.getString(2131952294, permActivity.getPackageName())).setPositiveButton(permActivity.getResources().getText(2131952441), new i2(permActivity, 0)).setNegativeButton(permActivity.getResources().getText(2131952436), (DialogInterface$OnClickListener) null).show();
                break;
            default:
                String str11 = PermActivity.c;
                new AlertDialog$Builder(permActivity).setTitle(permActivity.getResources().getText(2131952020)).setMessage(permActivity.getResources().getText(2131952897)).setNegativeButton(permActivity.getResources().getText(2131952436), (DialogInterface$OnClickListener) null).show();
                break;
        }
    }
}

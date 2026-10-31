package e0;

import android.app.PendingIntent;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import com.example.navistart.InstallResultReceiver;
import com.example.navistart.UpdateActivity;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class w2 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1984b;
    public final /* synthetic */ UpdateActivity c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ w2(UpdateActivity updateActivity, int i9) {
        this.f1984b = i9;
        this.c = updateActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1984b) {
            case 0:
                String str = UpdateActivity.f871l;
                UpdateActivity updateActivity = this.c;
                s sVarJ = m.j(updateActivity);
                String str2 = UpdateActivity.f871l;
                Log.e(str2, m.h(new byte[]{-62, -52, 0, -104, -38, 38, -89, 67, -29, -3, 47, -72, -26, 28, -61, 71, -20, -20, 50, -78, -110, 99}, new byte[]{-96, -87, 102, -9, -88, 67, -121, 2}).concat(sVarJ.a()));
                try {
                    Intent intent = new Intent(m.h(new byte[]{-118, 54, -79, 70, -62, 24, -125, -113, -126, 54, -95, 81, -61, 5, -55, -64, -120, 44, -68, 91, -61, 95, -93, -28, -89, 29, -127, 113}, new byte[]{-21, 88, -43, 52, -83, 113, -25, -95}));
                    intent.setData(Uri.parse(m.h(new byte[]{54, 97, 56, 91, 67, -61, -111, -21}, new byte[]{70, 0, 91, 48, 34, -92, -12, -47}) + updateActivity.getPackageName()));
                    intent.addFlags(268435456);
                    updateActivity.startActivity(intent);
                    Log.e(str2, m.h(new byte[]{-30, 119, -81, 43, 88, 123, 31, 3, -26, 120, -66, 54, 82, 21, 51, 51, -62, 70, -113, 7, 115}, new byte[]{-93, 52, -5, 98, 23, 53, 64, 71}));
                } catch (Exception e) {
                    Log.e(str2, m.h(new byte[]{44, 97, -108, -92, -12, 84, -73, -8, 40, 110, -123, -71, -2, 58, -114, -35, 4, 78, -91, -119}, new byte[]{109, 34, -64, -19, -69, 26, -24, -68}), e);
                    try {
                        Intent intent2 = new Intent(m.h(new byte[]{-37, 92, 33, 39, 16, 117, -91, 83, -45, 92, 49, 48, 17, 104, -17, 28, -39, 70, 44, 58, 17, 50, -108, 51, -13, 124, 22, 1, 62, 80, -115, 34, -22, 115, 6, 30, 62, 91, -124}, new byte[]{-70, 50, 69, 85, ByteCompanionObject.MAX_VALUE, 28, -63, 125}));
                        intent2.setData(Uri.parse(m.h(new byte[]{-39, 75, -36, 78, 22, -67, 44, -20}, new byte[]{-87, 42, -65, 37, 119, -38, 73, -42}) + updateActivity.getPackageName()));
                        intent2.addFlags(268435456);
                        updateActivity.startActivity(intent2);
                        Log.e(str2, m.h(new byte[]{117, 84, 97, -43, 3, -117, 35, 8, 122, 94, 123, -49, 24, -124, 48, 17, 107, 71, 116, -33, 7, -124, 59, 24, 20, 100, 65, -3, 62, -79, 25, 57}, new byte[]{52, 23, 53, -100, 76, -59, 124, 93}));
                    } catch (Exception e6) {
                        Log.e(str2, m.h(new byte[]{-24, -53, 31, 120, 55, -51, -85, 27, -25, -63, 5, 98, 44, -62, -72, 2, -10, -40, 10, 114, 51, -62, -77, 11, -119, -18, 42, 88, 20, -26, -112}, new byte[]{-87, -120, 75, 49, 120, -125, -12, 78}), e6);
                        try {
                            Log.e(str2, m.h(new byte[]{49, -13, 75, -82, -2, 13, 57, 28, 15, -31, 92, -92, -13, 6, 57, 39, 65, -25, 70, -84, -15, 25, 40, 52, 13, -2, 8, -93, -2, 6, 48, 55, 0, -15, 67, -23, -65, 25, 40, 52, 21, -9, 18, -27}, new byte[]{97, -110, 40, -59, -97, 106, 92, 85}).concat(m.j(updateActivity).a()));
                            Intent intent3 = new Intent(updateActivity, (Class<?>) InstallResultReceiver.class);
                            intent3.setAction(updateActivity.getPackageName() + m.h(new byte[]{112, -59, ByteCompanionObject.MIN_VALUE, 29, 22, 17, -67, -18, 23, -40, -106, 5, 17, 2, -92, -1, 12, -45, -106, 4, 28, 26}, new byte[]{94, -106, -59, 81, 80, 78, -24, -96}));
                            intent3.putExtra(m.h(new byte[]{87, -7, -17, 94, 29, -117, 7, 102, 86}, new byte[]{56, -119, -118, 44, 124, -1, 110, 9}), m.h(new byte[]{39, -67, 80, -75, -29, 39, -40, 95, 62}, new byte[]{82, -45, 57, -37, -112, 83, -71, 51}));
                            intent3.putExtra(m.h(new byte[]{-9, -26, 7, 48, 92, -108, -48, 85, -26, -22, 1}, new byte[]{-121, -121, 100, 91, Base64.padSymbol, -13, -75, 27}), updateActivity.getPackageName());
                            updateActivity.getPackageManager().getPackageInstaller().uninstall(updateActivity.getPackageName(), PendingIntent.getBroadcast(updateActivity, updateActivity.getPackageName().hashCode(), intent3, 167772160).getIntentSender());
                            Log.e(str2, m.h(new byte[]{86, 71, 40, -92, -116, ByteCompanionObject.MAX_VALUE, -91, -9, 104, 85, 63, -82, -127, 116, -91, -52, 38, 83, 37, -90, -125, 107, -76, -33, 106, 74, 107, -67, -120, 105, -75, -37, 117, 82, 46, -85}, new byte[]{6, 38, 75, -49, -19, 24, -64, -66}));
                        } catch (Exception e9) {
                            Log.e(str2, m.h(new byte[]{24, -52, 59, -14, 7, 79, 40, -47, 38, -34, 44, -8, 10, 68, 40, -22, 104, -40, 54, -16, 8, 91, 57, -7, 36, -63, 120, -1, 7, 65, 33, -3, 44}, new byte[]{72, -83, 88, -103, 102, 40, 77, -104}), e9);
                        }
                    }
                }
                updateActivity.f875h.setEnabled(true);
                break;
            default:
                this.c.f877j = 0;
                break;
        }
    }
}

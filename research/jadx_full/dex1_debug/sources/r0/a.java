package r0;

import android.app.ActivityOptions;
import android.content.Intent;
import android.hardware.display.DisplayManager;
import android.os.Build$VERSION;
import android.view.Display;
import c5.h;
import com.example.navistart.LounchB;
import e0.d0;
import e0.m;
import java.util.Objects;
import kotlin.io.encoding.Base64;
import y5.k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {
    public static final String c = m.h(new byte[]{37, -42, -90, 9, 91, 10, 96, 43, 60, -54, -91, 19, 109}, new byte[]{72, -93, -54, 125, 50, 85, 1, 72});

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d0 f4927a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LounchB f4928b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(LounchB lounchB) {
        this.f4928b = lounchB;
        this.f4927a = new d0(lounchB);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(int i9, String str) {
        LounchB lounchB = this.f4928b;
        try {
            Intent launchIntentForPackage = lounchB.getPackageManager().getLaunchIntentForPackage(str);
            if (launchIntentForPackage != null) {
                Display[] displays = ((DisplayManager) lounchB.getApplicationContext().getSystemService(m.h(new byte[]{-89, -80, -49, 87, 43, -120, 15}, new byte[]{-61, -39, -68, 39, 71, -23, 118, 120}))).getDisplays();
                if (displays.length > i9) {
                    ActivityOptions activityOptionsB = Build$VERSION.SDK_INT >= 26 ? h.b(ActivityOptions.makeBasic(), displays[i9].getDisplayId()) : null;
                    launchIntentForPackage.addFlags(268435456);
                    Objects.requireNonNull(activityOptionsB, m.h(new byte[]{70, -29, 91, 97, -124, 72, Base64.padSymbol, -77, 106, -14, 65, 102, -124, 82, 110, -15, 108, -77, 65, 125, -121, 74}, new byte[]{9, -109, 47, 8, -21, 38, 78, -109}));
                    k.u(lounchB, launchIntentForPackage, activityOptionsB.toBundle());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

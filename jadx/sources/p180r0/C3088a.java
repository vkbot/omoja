package p180r0;

import android.app.ActivityOptions;
import android.content.Intent;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.view.Display;
import com.example.navistart.LounchB;
import java.util.Objects;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p047e0.C1343d0;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: r0.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3088a {

    /* JADX INFO: renamed from: c */
    public static final String f8773c = AbstractC1387m.m2421h(new byte[]{37, -42, -90, 9, 91, 10, 96, 43, 60, -54, -91, 19, 109}, new byte[]{72, -93, -54, 125, 50, 85, 1, 72});

    /* JADX INFO: renamed from: a */
    public final C1343d0 f8774a;

    /* JADX INFO: renamed from: b */
    public final LounchB f8775b;

    public C3088a(LounchB lounchB) {
        this.f8775b = lounchB;
        this.f8774a = new C1343d0(lounchB);
    }

    /* JADX INFO: renamed from: a */
    public final void m4923a(int i10, String str) {
        LounchB lounchB = this.f8775b;
        try {
            Intent launchIntentForPackage = lounchB.getPackageManager().getLaunchIntentForPackage(str);
            if (launchIntentForPackage != null) {
                Display[] displays = ((DisplayManager) lounchB.getApplicationContext().getSystemService(AbstractC1387m.m2421h(new byte[]{-89, -80, -49, 87, 43, -120, 15}, new byte[]{-61, -39, -68, 39, 71, -23, 118, 120}))).getDisplays();
                if (displays.length > i10) {
                    ActivityOptions launchDisplayId = Build.VERSION.SDK_INT >= 26 ? ActivityOptions.makeBasic().setLaunchDisplayId(displays[i10].getDisplayId()) : null;
                    launchIntentForPackage.addFlags(268435456);
                    Objects.requireNonNull(launchDisplayId, AbstractC1387m.m2421h(new byte[]{70, -29, 91, 97, -124, 72, Base64.padSymbol, -77, 106, -14, 65, 102, -124, 82, 110, -15, 108, -77, 65, 125, -121, 74}, new byte[]{9, -109, 47, 8, -21, 38, 78, -109}));
                    AbstractC3656k.m5875u(lounchB, launchIntentForPackage, launchDisplayId.toBundle());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

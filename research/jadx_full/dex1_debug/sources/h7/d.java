package h7;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import com.google.protobuf.q;
import com.woha.appmanag.ManageAppsActivity;
import e0.m;
import e0.w;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d implements DialogInterface$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2491b;
    public final /* synthetic */ ManageAppsActivity c;
    public final /* synthetic */ g d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(ManageAppsActivity manageAppsActivity, g gVar, int i9) {
        this.f2491b = i9;
        this.c = manageAppsActivity;
        this.d = gVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.DialogInterface$OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i9) {
        int i10 = this.f2491b;
        g gVar = this.d;
        ManageAppsActivity manageAppsActivity = this.c;
        switch (i10) {
            case 0:
                String str = ManageAppsActivity.e;
                String str2 = gVar.f2495b;
                StringBuilder sb = new StringBuilder();
                sb.append(manageAppsActivity.getPackageName());
                Intent intent = new Intent(q.i(new byte[]{-16, 79, 19, -51, ByteCompanionObject.MAX_VALUE, -18, 25, 100, -110, 86, 2, -42, 116, -18, 24, 105, -118}, new byte[]{-34, 26, 93, -124, 49, -67, 77, 37}, sb));
                intent.setPackage(manageAppsActivity.getPackageName());
                intent.putExtra(m.h(new byte[]{-45, -108, -82, 110, 91, 44, -32, 62, -62, -104, -88}, new byte[]{-93, -11, -51, 5, 58, 75, -123, 112}), str2);
                manageAppsActivity.getPackageManager().getPackageInstaller().uninstall(str2, PendingIntent.getBroadcast(manageAppsActivity, str2.hashCode(), intent, 167772160).getIntentSender());
                w.c(-1, null).schedule(new e(manageAppsActivity, 0), 2000L, TimeUnit.MILLISECONDS);
                break;
            default:
                String str3 = ManageAppsActivity.e;
                manageAppsActivity.t(gVar.f2495b);
                break;
        }
    }
}

package p047e0;

import android.app.Notification;
import android.content.Context;
import android.content.pm.PackageManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RemoteViews;
import android.widget.TextView;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: renamed from: e0.l3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1386l3 {

    /* JADX INFO: renamed from: a */
    public Context f3310a;

    /* JADX INFO: renamed from: b */
    public String f3311b;

    /* JADX INFO: renamed from: c */
    public Context f3312c;

    static {
        AbstractC1387m.m2421h(new byte[]{-112, 105, 64, -126, -3, -6, -89, -112, -74, 76, 74, -110, -35, -19, -70}, new byte[]{-58, 0, 37, -11, -70, -120, -56, -27});
    }

    /* JADX INFO: renamed from: a */
    public final String m2413a(Notification notification, String str) {
        Context context;
        int identifier;
        String str2 = this.f3311b;
        String strM2421h = AbstractC1387m.m2421h(new byte[]{62, -5}, new byte[]{19, -42, -4, 82, 106, 57, -87, 75});
        RemoteViews remoteViews = notification.bigContentView;
        if (remoteViews == null) {
            remoteViews = notification.contentView;
        }
        ViewGroup viewGroup = null;
        if (remoteViews == null) {
            remoteViews = null;
        }
        if (remoteViews != null) {
            try {
                this.f3312c = this.f3310a.createPackageContext(str2, 2);
            } catch (PackageManager.NameNotFoundException unused) {
            }
            viewGroup = (ViewGroup) ((LayoutInflater) this.f3312c.getSystemService(AbstractC1387m.m2421h(new byte[]{80, 54, 78, 95, -101, 109, ByteCompanionObject.MIN_VALUE, -53, 82, 49, 91, 81, -102, 124, -83}, new byte[]{60, 87, 55, 48, -18, 25, -33, -94}))).inflate(remoteViews.getLayoutId(), (ViewGroup) null);
            remoteViews.reapply(this.f3312c, viewGroup);
        }
        if (viewGroup != null && (context = this.f3312c) != null && (identifier = context.getResources().getIdentifier(str, AbstractC1387m.m2421h(new byte[]{89, 104}, new byte[]{48, 12, 1, 114, -113, -78, 46, 67}), str2)) != 0) {
            View viewFindViewById = viewGroup.findViewById(identifier);
            if (viewFindViewById instanceof TextView) {
                return ((TextView) viewFindViewById).getText().toString();
            }
        }
        return strM2421h;
    }
}

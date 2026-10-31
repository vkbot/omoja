package m0;

import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.os.SystemClock;
import android.view.KeyEvent$Callback;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class q0 implements DialogInterface$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3565b;
    public final /* synthetic */ l0.b c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ KeyEvent$Callback e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f3566f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ View f3567g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ q0(l0.b bVar, Object obj, KeyEvent$Callback keyEvent$Callback, Object obj2, View view, int i9) {
        this.f3565b = i9;
        this.c = bVar;
        this.d = obj;
        this.e = keyEvent$Callback;
        this.f3566f = obj2;
        this.f3567g = view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.DialogInterface$OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i9) {
        switch (this.f3565b) {
            case 0:
                s0 s0Var = (s0) this.c;
                Button button = (Button) this.d;
                LinearLayout linearLayout = (LinearLayout) this.e;
                p0.b bVar = (p0.b) this.f3566f;
                View view = this.f3567g;
                button.setEnabled(false);
                button.setText(2131952110);
                for (int i10 = 0; i10 < linearLayout.getChildCount(); i10++) {
                    linearLayout.getChildAt(i10).setEnabled(false);
                }
                androidx.transition.a aVar = new androidx.transition.a(s0Var, view, button, 4);
                synchronized (p0.b.c) {
                    try {
                        if (p0.b.f(bVar.f4549a)) {
                            aVar.c(b3.a(e0.m.h(new byte[]{-48, 93, -51, 119, 87, -122, 100, 3, -48, 93, -33, 118, 90, -122, 117, 10, -52, 92, -41, 124, 68}, new byte[]{-94, 56, -66, 18, 35, -90, 5, 111})));
                            return;
                        }
                        if (h0.b.o().loadBoolean(e0.m.h(new byte[]{116, -54, 102, -49, 31, -69, -34, 11, 114, -26, 107, -44, 36, -65, -15, 30, 111, -40, 97, -47, 37, -66}, new byte[]{1, -71, 3, -67, 64, -38, -82, 123}), false)) {
                            aVar.c(b3.a(e0.m.h(new byte[]{66, -73, -64, -56, -31, 79, -46, -74, 3, -81, -39, -33, -91, 75, -50}, new byte[]{35, -57, -80, -69, -63, 46, -96, -45})));
                            return;
                        }
                        HashSet hashSet = new HashSet();
                        HashSet hashSet2 = new HashSet();
                        for (p0.a aVar2 : bVar.f4550b) {
                            String strFlattenToString = aVar2.f4542b.flattenToString();
                            hashSet2.add(strFlattenToString);
                            if (aVar2.e || p0.b.e(aVar2)) {
                                hashSet.add(strFlattenToString);
                            }
                        }
                        for (ResolveInfo resolveInfo : bVar.f4549a.getPackageManager().queryIntentActivities(new Intent(e0.m.h(new byte[]{-29, 92, 91, -41, -39, 45, -21, -1, -21, 92, 75, -64, -40, 48, -95, -80, -31, 70, 86, -54, -40, 106, -62, -112, -53, 124}, new byte[]{-126, 50, 63, -91, -74, 68, -113, -47})).addCategory(e0.m.h(new byte[]{-114, -109, -54, -63, 29, 46, 0, -71, -122, -109, -38, -42, 28, 51, 74, -12, -114, -119, -53, -44, 29, 53, 29, -71, -93, -68, -5, -3, 49, 15, 33, -59}, new byte[]{-17, -3, -82, -77, 114, 71, 100, -105})).setPackage(bVar.f4549a.getPackageName()), 512)) {
                            ActivityInfo activityInfo = resolveInfo.activityInfo;
                            ComponentName componentName = new ComponentName(activityInfo.packageName, activityInfo.name);
                            if (hashSet2.add(componentName.flattenToString()) && resolveInfo.activityInfo.enabled) {
                                hashSet.add(componentName.flattenToString());
                            }
                        }
                        SharedPreferences sharedPreferences = bVar.f4549a.getSharedPreferences(p0.b.d, 0);
                        if (!sharedPreferences.edit().putStringSet(e0.m.h(new byte[]{-69, -85, 3}, new byte[]{-38, -57, 111, 121, -123, 124, 0, 34}), hashSet2).putStringSet(e0.m.h(new byte[]{87, -110, 114, 67, -86, 64, 45}, new byte[]{50, -4, 19, 33, -58, 37, 73, -67}), hashSet).putLong(e0.m.h(new byte[]{-98, -104, 108}, new byte[]{-6, -19, 9, 30, -18, 82, -118, ByteCompanionObject.MAX_VALUE}), SystemClock.elapsedRealtime() + 5000).putBoolean(e0.m.h(new byte[]{2, 93, -123, 67, 15, 4, 107}, new byte[]{114, 56, -21, 39, 102, 106, 12, -105}), true).commit()) {
                            aVar.c(b3.a(e0.m.h(new byte[]{ByteCompanionObject.MAX_VALUE, -19, -21, -36, 28, 75, -44, 87, 125, -6, -32, -110, 1, 90, -105, 75, 106, -23, -9, -53, 83, 76, ByteCompanionObject.MIN_VALUE, 69, 104, -23}, new byte[]{28, -116, -123, -78, 115, 63, -12, 36})));
                            return;
                        }
                        p0.b.f4544g = aVar;
                        try {
                            p0.b.h(bVar.f4549a);
                            Iterator it = hashSet2.iterator();
                            while (it.hasNext()) {
                                bVar.f4549a.getPackageManager().setComponentEnabledSetting(ComponentName.unflattenFromString((String) it.next()), 2, 1);
                            }
                            if (!sharedPreferences.edit().putLong(e0.m.h(new byte[]{-19, -67, 94}, new byte[]{-119, -56, 59, -87, -30, 114, -80, 71}), SystemClock.elapsedRealtime() + 5000).commit()) {
                                throw new IllegalStateException(e0.m.h(new byte[]{108, 97, -104, -91, -106, -18, 88, 77, 110, 118, -109, -21, -117, -1, 11, 91, 123, 32, -110, -82, -104, -2, 20, 87, 97, 101}, new byte[]{15, 0, -10, -53, -7, -102, 120, 62}));
                            }
                            p0.b.h(bVar.f4549a);
                            return;
                        } catch (RuntimeException e) {
                            p0.b.d(bVar.f4549a, e.getClass().getSimpleName());
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                break;
            default:
                ((n3) this.c).v((File) ((ArrayList) this.d).get(i9), (AlertDialog) this.e, (TextView) this.f3566f, (ListView) this.f3567g);
                return;
        }
    }
}

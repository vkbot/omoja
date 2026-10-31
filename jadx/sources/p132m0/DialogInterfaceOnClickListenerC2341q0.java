package p132m0;

import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.transition.C0802a;
import com.example.navistart.R;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import kotlin.jvm.internal.ByteCompanionObject;
import p047e0.AbstractC1387m;
import p078h0.C1652b;
import p121l0.C2195b;
import p164p0.C2948a;
import p164p0.C2949b;

/* JADX INFO: renamed from: m0.q0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class DialogInterfaceOnClickListenerC2341q0 implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f6307b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2195b f6308c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f6309d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ KeyEvent.Callback f6310e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ Object f6311f;

    /* JADX INFO: renamed from: g */
    public final /* synthetic */ View f6312g;

    public /* synthetic */ DialogInterfaceOnClickListenerC2341q0(C2195b c2195b, Object obj, KeyEvent.Callback callback, Object obj2, View view, int i10) {
        this.f6307b = i10;
        this.f6308c = c2195b;
        this.f6309d = obj;
        this.f6310e = callback;
        this.f6311f = obj2;
        this.f6312g = view;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        switch (this.f6307b) {
            case 0:
                C2349s0 c2349s0 = (C2349s0) this.f6308c;
                Button button = (Button) this.f6309d;
                LinearLayout linearLayout = (LinearLayout) this.f6310e;
                C2949b c2949b = (C2949b) this.f6311f;
                View view = this.f6312g;
                button.setEnabled(false);
                button.setText(R.string.launcher_shortcuts_cleaning);
                for (int i11 = 0; i11 < linearLayout.getChildCount(); i11++) {
                    linearLayout.getChildAt(i11).setEnabled(false);
                }
                C0802a c0802a = new C0802a(c2349s0, view, button, 4);
                synchronized (C2949b.f8187c) {
                    try {
                        if (C2949b.m4719f(c2949b.f8196a)) {
                            c0802a.m887c(C2271b3.m3645a(AbstractC1387m.m2421h(new byte[]{-48, 93, -51, 119, 87, -122, 100, 3, -48, 93, -33, 118, 90, -122, 117, 10, -52, 92, -41, 124, 68}, new byte[]{-94, 56, -66, 18, 35, -90, 5, 111})));
                            return;
                        }
                        if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{116, -54, 102, -49, 31, -69, -34, 11, 114, -26, 107, -44, 36, -65, -15, 30, 111, -40, 97, -47, 37, -66}, new byte[]{1, -71, 3, -67, 64, -38, -82, 123}), false)) {
                            c0802a.m887c(C2271b3.m3645a(AbstractC1387m.m2421h(new byte[]{66, -73, -64, -56, -31, 79, -46, -74, 3, -81, -39, -33, -91, 75, -50}, new byte[]{35, -57, -80, -69, -63, 46, -96, -45})));
                            return;
                        }
                        HashSet hashSet = new HashSet();
                        HashSet hashSet2 = new HashSet();
                        for (C2948a c2948a : c2949b.f8197b) {
                            String strFlattenToString = c2948a.f8183b.flattenToString();
                            hashSet2.add(strFlattenToString);
                            if (c2948a.f8186e || C2949b.m4718e(c2948a)) {
                                hashSet.add(strFlattenToString);
                            }
                        }
                        for (ResolveInfo resolveInfo : c2949b.f8196a.getPackageManager().queryIntentActivities(new Intent(AbstractC1387m.m2421h(new byte[]{-29, 92, 91, -41, -39, 45, -21, -1, -21, 92, 75, -64, -40, 48, -95, -80, -31, 70, 86, -54, -40, 106, -62, -112, -53, 124}, new byte[]{-126, 50, 63, -91, -74, 68, -113, -47})).addCategory(AbstractC1387m.m2421h(new byte[]{-114, -109, -54, -63, 29, 46, 0, -71, -122, -109, -38, -42, 28, 51, 74, -12, -114, -119, -53, -44, 29, 53, 29, -71, -93, -68, -5, -3, 49, 15, 33, -59}, new byte[]{-17, -3, -82, -77, 114, 71, 100, -105})).setPackage(c2949b.f8196a.getPackageName()), 512)) {
                            ActivityInfo activityInfo = resolveInfo.activityInfo;
                            ComponentName componentName = new ComponentName(activityInfo.packageName, activityInfo.name);
                            if (hashSet2.add(componentName.flattenToString()) && resolveInfo.activityInfo.enabled) {
                                hashSet.add(componentName.flattenToString());
                            }
                        }
                        SharedPreferences sharedPreferences = c2949b.f8196a.getSharedPreferences(C2949b.f8188d, 0);
                        if (!sharedPreferences.edit().putStringSet(AbstractC1387m.m2421h(new byte[]{-69, -85, 3}, new byte[]{-38, -57, 111, 121, -123, 124, 0, 34}), hashSet2).putStringSet(AbstractC1387m.m2421h(new byte[]{87, -110, 114, 67, -86, 64, 45}, new byte[]{50, -4, 19, 33, -58, 37, 73, -67}), hashSet).putLong(AbstractC1387m.m2421h(new byte[]{-98, -104, 108}, new byte[]{-6, -19, 9, 30, -18, 82, -118, ByteCompanionObject.MAX_VALUE}), SystemClock.elapsedRealtime() + 5000).putBoolean(AbstractC1387m.m2421h(new byte[]{2, 93, -123, 67, 15, 4, 107}, new byte[]{114, 56, -21, 39, 102, 106, 12, -105}), true).commit()) {
                            c0802a.m887c(C2271b3.m3645a(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE, -19, -21, -36, 28, 75, -44, 87, 125, -6, -32, -110, 1, 90, -105, 75, 106, -23, -9, -53, 83, 76, ByteCompanionObject.MIN_VALUE, 69, 104, -23}, new byte[]{28, -116, -123, -78, 115, 63, -12, 36})));
                            return;
                        }
                        C2949b.f8191g = c0802a;
                        try {
                            C2949b.m4721h(c2949b.f8196a);
                            Iterator it = hashSet2.iterator();
                            while (it.hasNext()) {
                                c2949b.f8196a.getPackageManager().setComponentEnabledSetting(ComponentName.unflattenFromString((String) it.next()), 2, 1);
                            }
                            if (!sharedPreferences.edit().putLong(AbstractC1387m.m2421h(new byte[]{-19, -67, 94}, new byte[]{-119, -56, 59, -87, -30, 114, -80, 71}), SystemClock.elapsedRealtime() + 5000).commit()) {
                                throw new IllegalStateException(AbstractC1387m.m2421h(new byte[]{108, 97, -104, -91, -106, -18, 88, 77, 110, 118, -109, -21, -117, -1, 11, 91, 123, 32, -110, -82, -104, -2, 20, 87, 97, 101}, new byte[]{15, 0, -10, -53, -7, -102, 120, 62}));
                            }
                            C2949b.m4721h(c2949b.f8196a);
                            return;
                        } catch (RuntimeException e) {
                            C2949b.m4717d(c2949b.f8196a, e.getClass().getSimpleName());
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                break;
            default:
                ((C2331n3) this.f6308c).m3713v((File) ((ArrayList) this.f6309d).get(i10), (AlertDialog) this.f6310e, (TextView) this.f6311f, (ListView) this.f6312g);
                return;
        }
    }
}

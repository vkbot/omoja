package p132m0;

import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import java.io.File;
import java.util.ArrayList;
import p047e0.AbstractC1387m;
import p098j0.C1919e;
import p190s1.C3150i0;
import p190s1.C3152j0;
import p190s1.C3166q0;
import p190s1.EnumC3158m0;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: m0.j3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2311j3 implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f6174b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ ArrayList f6175c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f6176d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ Object f6177e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ Object f6178f;

    /* JADX INFO: renamed from: g */
    public final /* synthetic */ KeyEvent.Callback f6179g;

    public /* synthetic */ C2311j3(Object obj, ArrayList arrayList, Object obj2, Object obj3, KeyEvent.Callback callback, int i10) {
        this.f6174b = i10;
        this.f6176d = obj;
        this.f6175c = arrayList;
        this.f6177e = obj2;
        this.f6178f = obj3;
        this.f6179g = callback;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
        String str;
        int i11 = this.f6174b;
        KeyEvent.Callback callback = this.f6179g;
        Object obj = this.f6178f;
        Object obj2 = this.f6177e;
        ArrayList arrayList = this.f6175c;
        Object obj3 = this.f6176d;
        switch (i11) {
            case 0:
                ((C2331n3) obj3).m3713v((File) arrayList.get(i10), (AlertDialog) obj2, (TextView) obj, (ListView) callback);
                break;
            default:
                C3166q0 c3166q0 = (C3166q0) obj3;
                android.app.AlertDialog alertDialog = (android.app.AlertDialog) callback;
                ActivityInfo activityInfo = ((ResolveInfo) ((ArrayList) obj).get(arrayList.indexOf((C1919e) ((C3150i0) obj2).f9030c.get(i10)))).activityInfo;
                ArrayList arrayList2 = c3166q0.f9181q;
                int size = arrayList2.size();
                int i12 = 0;
                while (i12 < size) {
                    Object obj4 = arrayList2.get(i12);
                    i12++;
                    C3152j0 c3152j0 = (C3152j0) obj4;
                    if (c3152j0.f9044b == EnumC3158m0.f9107h && (str = c3152j0.f9049g) != null) {
                        if (str.startsWith(activityInfo.packageName + AbstractC1387m.m2421h(new byte[]{-20}, new byte[]{-61, -27, 119, 66, 69, -76, 95, -89}))) {
                            AbstractC3656k.m5878x(c3166q0.getContext(), AbstractC1387m.m2421h(new byte[]{-72, 25, -64, -54, 116, 72, 66, 38, -41, 101, -111, -104, 28, 38, -39, 38, -42, 100, -89, -104, 17, 38, -33, 38, -48, 100, -92, 104, 117, 117, -78, 64, -72, 1, 49, -104, 16, 38, -36, 38, -39, 100, -95, -104, 22, 38, -39, 38, -35, 100, -84, -104, 26, -42, -78, 68, 72, 100, -81, -104, 30, 38, -33, 38, -42}, new byte[]{104, -76, 17, 72, -92, -10, 98, -10}));
                            break;
                        }
                    }
                }
                EnumC3158m0 enumC3158m0 = EnumC3158m0.f9107h;
                float[] fArrM5032i = C3166q0.m5032i(enumC3158m0);
                float[] fArrM5069n = c3166q0.m5069n(fArrM5032i[0], fArrM5032i[1]);
                C3152j0 c3152j1 = new C3152j0(enumC3158m0, fArrM5069n[0], fArrM5069n[1], fArrM5032i[0], fArrM5032i[1], new ComponentName(activityInfo.packageName, activityInfo.name).flattenToString());
                arrayList2.add(c3152j1);
                c3166q0.f9186v = c3152j1.f9043a;
                c3166q0.m5076y();
                c3166q0.m5037A();
                alertDialog.dismiss();
                break;
        }
    }
}

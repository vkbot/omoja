package p138m7;

import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.navigation.p013ui.ViewOnClickListenerC0701a;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;
import com.google.protobuf.AbstractC1178q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p132m0.ViewOnLongClickListenerC2363v2;

/* JADX INFO: renamed from: m7.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2407f extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a */
    public List f6513a;

    /* JADX INFO: renamed from: b */
    public List f6514b;

    /* JADX INFO: renamed from: c */
    public String f6515c;

    /* JADX INFO: renamed from: d */
    public final C2403b f6516d;

    /* JADX INFO: renamed from: e */
    public final C2403b f6517e;

    public C2407f(ArrayList arrayList, List list, String str, C2403b c2403b, C2403b c2403b2) {
        this.f6513a = arrayList == null ? new ArrayList() : arrayList;
        this.f6514b = list == null ? new ArrayList() : list;
        this.f6515c = str == null ? "" : str;
        this.f6516d = c2403b;
        this.f6517e = c2403b2;
    }

    /* JADX INFO: renamed from: a */
    public final void m3768a(List list, List list2, String str) {
        if (list == null) {
            list = new ArrayList();
        }
        this.f6513a = list;
        if (list2 == null) {
            list2 = new ArrayList();
        }
        this.f6514b = list2;
        if (str == null) {
            str = "";
        }
        this.f6515c = str;
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        List list = this.f6513a;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
        String strM2421h;
        C2406e c2406e = (C2406e) viewHolder;
        ScanResult scanResult = (ScanResult) this.f6513a.get(i10);
        c2406e.f6510a.setText(scanResult.SSID);
        c2406e.f6512c.setText(c2406e.itemView.getContext().getString(R.string.wifi_signal_level, Integer.valueOf(WifiManager.calculateSignalLevel(scanResult.level, TypedValues.TYPE_TARGET)), Integer.valueOf(scanResult.level)));
        StringBuilder sb = new StringBuilder();
        int i11 = 1;
        sb.append(AbstractC1387m.m2421h(new byte[]{24}, new byte[]{58, -60, -28, 68, Base64.padSymbol, -98, 65, -100}));
        sb.append(scanResult.SSID);
        if (AbstractC1178q.m2075i(new byte[]{103}, new byte[]{69, -126, 105, -18, 36, -1, 16, 105}, sb).equals(this.f6515c)) {
            strM2421h = AbstractC1387m.m2421h(new byte[]{23, 27, -50, 125, 112, -59, -82, 28, 48}, new byte[]{84, 116, -96, 19, 21, -90, -38, 121});
        } else {
            Iterator it = this.f6514b.iterator();
            while (it.hasNext()) {
                String str = ((WifiConfiguration) it.next()).SSID;
                if (str != null) {
                    if (str.equals(AbstractC1387m.m2421h(new byte[]{-6}, new byte[]{-40, -70, -8, 30, -99, 20, -2, -109}) + scanResult.SSID + AbstractC1387m.m2421h(new byte[]{110}, new byte[]{76, -58, -26, -102, 34, 90, -89, 4}))) {
                        strM2421h = AbstractC1387m.m2421h(new byte[]{8, 49, -118, -112}, new byte[]{91, 80, -4, -11, -23, -82, -92, -54});
                    }
                }
            }
            strM2421h = "";
        }
        c2406e.f6511b.setText(strM2421h);
        c2406e.itemView.setOnClickListener(new ViewOnClickListenerC0701a(17, this, scanResult));
        c2406e.itemView.setOnLongClickListener(new ViewOnLongClickListenerC2363v2(this, scanResult, i11));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
        return new C2406e(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_wifi, viewGroup, false));
    }
}

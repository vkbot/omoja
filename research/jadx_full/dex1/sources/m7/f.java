package m7;

import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.recyclerview.widget.RecyclerView$Adapter;
import androidx.recyclerview.widget.RecyclerView$ViewHolder;
import com.google.protobuf.q;
import e0.m;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.io.encoding.Base64;
import m0.v2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f extends RecyclerView$Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public List f3684a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List f3685b;
    public String c;
    public final b d;
    public final b e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(ArrayList arrayList, List list, String str, b bVar, b bVar2) {
        this.f3684a = arrayList == null ? new ArrayList() : arrayList;
        this.f3685b = list == null ? new ArrayList() : list;
        this.c = str == null ? "" : str;
        this.d = bVar;
        this.e = bVar2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(List list, List list2, String str) {
        if (list == null) {
            list = new ArrayList();
        }
        this.f3684a = list;
        if (list2 == null) {
            list2 = new ArrayList();
        }
        this.f3685b = list2;
        if (str == null) {
            str = "";
        }
        this.c = str;
        notifyDataSetChanged();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final int getItemCount() {
        List list = this.f3684a;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final void onBindViewHolder(RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        String strH;
        e eVar = (e) recyclerView$ViewHolder;
        ScanResult scanResult = (ScanResult) this.f3684a.get(i9);
        eVar.f3682a.setText(scanResult.SSID);
        eVar.c.setText(eVar.itemView.getContext().getString(2131952892, Integer.valueOf(WifiManager.calculateSignalLevel(scanResult.level, TypedValues.TYPE_TARGET)), Integer.valueOf(scanResult.level)));
        StringBuilder sb = new StringBuilder();
        sb.append(m.h(new byte[]{24}, new byte[]{58, -60, -28, 68, Base64.padSymbol, -98, 65, -100}));
        sb.append(scanResult.SSID);
        if (q.i(new byte[]{103}, new byte[]{69, -126, 105, -18, 36, -1, 16, 105}, sb).equals(this.c)) {
            strH = m.h(new byte[]{23, 27, -50, 125, 112, -59, -82, 28, 48}, new byte[]{84, 116, -96, 19, 21, -90, -38, 121});
        } else {
            Iterator it = this.f3685b.iterator();
            while (it.hasNext()) {
                String str = ((WifiConfiguration) it.next()).SSID;
                if (str != null) {
                    if (str.equals(m.h(new byte[]{-6}, new byte[]{-40, -70, -8, 30, -99, 20, -2, -109}) + scanResult.SSID + m.h(new byte[]{110}, new byte[]{76, -58, -26, -102, 34, 90, -89, 4}))) {
                        strH = m.h(new byte[]{8, 49, -118, -112}, new byte[]{91, 80, -4, -11, -23, -82, -92, -54});
                    }
                }
            }
            strH = "";
        }
        eVar.f3683b.setText(strH);
        eVar.itemView.setOnClickListener(new androidx.navigation.ui.a(17, this, scanResult));
        eVar.itemView.setOnLongClickListener(new v2(this, scanResult, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final RecyclerView$ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
        return new e(LayoutInflater.from(viewGroup.getContext()).inflate(2131492996, viewGroup, false));
    }
}

package p132m0;

import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.fragment.app.C0566h;
import androidx.navigation.p013ui.ViewOnClickListenerC0701a;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.C1039l;
import com.bumptech.glide.ComponentCallbacks2C1029b;
import com.bumptech.glide.ComponentCallbacks2C1078p;
import com.example.navistart.R;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
import p047e0.AbstractC1387m;
import p172q.C3019i;
import p172q.C3025o;

/* JADX INFO: renamed from: m0.g1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2294g1 extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a */
    public final C0566h f6090a;

    /* JADX INFO: renamed from: b */
    public final List f6091b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2304i1 f6092c;

    public C2294g1(C2304i1 c2304i1, ArrayList arrayList, C0566h c0566h) {
        this.f6092c = c2304i1;
        this.f6091b = arrayList;
        this.f6090a = c0566h;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f6091b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
        String str;
        C2289f1 c2289f1 = (C2289f1) viewHolder;
        C2299h1 c2299h1 = (C2299h1) this.f6091b.get(i10);
        TextView textView = c2289f1.f6074b;
        Button button = c2289f1.f6076d;
        String str2 = c2299h1.f6107b;
        textView.setText((str2 == null || str2.trim().isEmpty()) ? c2299h1.f6108c : c2299h1.f6107b);
        TextView textView2 = c2289f1.f6075c;
        String strM2421h = AbstractC1387m.m2421h(new byte[]{62, 65, -67, -91, -42, 123, -4, -59}, new byte[]{82, 32, -56, -53, -75, 19, -103, -73});
        C2304i1 c2304i1 = this.f6092c;
        if (strM2421h.equals(c2304i1.f6154g)) {
            str = c2299h1.f6110e + AbstractC1387m.m2421h(new byte[]{11, -93}, new byte[]{39, -125, 29, -12, -56, 6, 110, -20}) + c2299h1.f6111f;
        } else {
            str = c2299h1.f6109d + AbstractC1387m.m2421h(new byte[]{118, -50}, new byte[]{90, -18, -96, 56, 22, -107, -106, -79}) + c2299h1.f6110e + AbstractC1387m.m2421h(new byte[]{62, -46}, new byte[]{18, -14, 85, -11, -127, 89, -21, -94}) + c2299h1.f6111f;
        }
        textView2.setText(str);
        ComponentCallbacks2C1078p componentCallbacks2C1078pM1251c = ComponentCallbacks2C1029b.m1251c(c2304i1);
        String str3 = c2299h1.f6112g;
        String strTrim = str3 == null ? null : str3.trim();
        componentCallbacks2C1078pM1251c.getClass();
        C1039l c1039lM1315z = new C1039l(componentCallbacks2C1078pM1251c.f1192b, componentCallbacks2C1078pM1251c, Drawable.class, componentCallbacks2C1078pM1251c.f1193c).m1315z(strTrim);
        c1039lM1315z.getClass();
        C3025o c3025o = C3025o.f8481b;
        ((C1039l) ((C1039l) ((C1039l) c1039lM1315z.m5776r(new C3019i())).m5768j(R.drawable.ic_launcher_foreground)).m5764e(R.drawable.ic_launcher_foreground)).m1313x(c2289f1.f6073a);
        if (c2299h1.f6114i) {
            button.setEnabled(false);
            button.setText(c2299h1.f6115j);
        } else {
            button.setEnabled(true);
            button.setText(AbstractC1387m.m2421h(new byte[]{-67, -65, -35, 1, 46, 13, 15, 91}, new byte[]{-47, -34, -88, 111, 77, 101, 106, 41}).equals(c2304i1.f6154g) ? AbstractC1387m.m2421h(new byte[]{110, -68, ByteCompanionObject.MIN_VALUE, -120, 87, -11, -115, 76, 110, -94, -127, -73, 86, -59, -115, 68, 111, -99, ByteCompanionObject.MIN_VALUE, -123}, new byte[]{-66, 31, 81, 9, -122, 119, 93, -4}) : c2304i1.getString(R.string.download));
        }
        button.setOnClickListener(new ViewOnClickListenerC0701a(11, this, c2289f1));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
        return new C2289f1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_project, viewGroup, false));
    }
}

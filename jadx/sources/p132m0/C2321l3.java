package p132m0;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.format.Formatter;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.navigation.p013ui.ViewOnClickListenerC0701a;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.C1039l;
import com.bumptech.glide.C1076n;
import com.bumptech.glide.ComponentCallbacks2C1029b;
import com.bumptech.glide.ComponentCallbacks2C1078p;
import com.example.navistart.R;
import kotlin.p118io.encoding.Base64;
import p015b0.C0859b;
import p047e0.AbstractC1387m;
import p172q.C3016f0;
import p172q.C3019i;
import p172q.C3025o;

/* JADX INFO: renamed from: m0.l3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2321l3 extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a */
    public final ComponentCallbacks2C1078p f6214a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C2331n3 f6215b;

    public C2321l3(C2331n3 c2331n3) {
        this.f6215b = c2331n3;
        this.f6214a = ComponentCallbacks2C1029b.m1251c(c2331n3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f6215b.f6254c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
        C2326m3 c2326m3 = (C2326m3) viewHolder;
        C2316k3 c2316k3 = (C2316k3) this.f6215b.f6254c.get(i10);
        c2326m3.f6234b.setText(c2316k3.f6197a);
        TextView textView = c2326m3.f6235c;
        StringBuilder sb = new StringBuilder();
        Context context = c2326m3.itemView.getContext();
        long j10 = c2316k3.f6199c;
        sb.append(Formatter.formatShortFileSize(context, j10));
        sb.append(AbstractC1387m.m2421h(new byte[]{90, 3, 118, 89}, new byte[]{122, -63, -63, 121, -113, Base64.padSymbol, 125, -36}));
        sb.append(c2316k3.f6198b);
        textView.setText(sb.toString());
        ComponentCallbacks2C1078p componentCallbacks2C1078p = this.f6214a;
        componentCallbacks2C1078p.getClass();
        C1039l c1039l = (C1039l) new C1039l(componentCallbacks2C1078p.f1192b, componentCallbacks2C1078p, Bitmap.class, componentCallbacks2C1078p.f1193c).mo1307a(ComponentCallbacks2C1078p.f1191l).m1315z(c2316k3.f6201e).m5772n(new C0859b(c2316k3.f6200d + AbstractC1387m.m2421h(new byte[]{-124}, new byte[]{-66, -64, 116, -71, 38, 37, -123, -63}) + j10));
        c1039l.getClass();
        C1039l c1039l2 = (C1039l) c1039l.m5771m(C3016f0.f8464d, 1000000L);
        c1039l2.getClass();
        C3025o c3025o = C3025o.f8481b;
        ((C1039l) ((C1039l) ((C1039l) c1039l2.m5776r(new C3019i())).m5768j(R.drawable.video_preview_placeholder)).m5764e(R.drawable.video_preview_placeholder)).m1313x(c2326m3.f6233a);
        c2326m3.itemView.setOnClickListener(new ViewOnClickListenerC0701a(16, this, c2316k3));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
        return new C2326m3(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_video, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
        C2326m3 c2326m3 = (C2326m3) viewHolder;
        ImageView imageView = c2326m3.f6233a;
        ComponentCallbacks2C1078p componentCallbacks2C1078p = this.f6214a;
        componentCallbacks2C1078p.getClass();
        componentCallbacks2C1078p.m1377k(new C1076n(imageView));
        c2326m3.itemView.setOnClickListener(null);
    }
}

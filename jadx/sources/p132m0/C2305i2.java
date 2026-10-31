package p132m0;

import ai.onnxruntime.AbstractC0074a;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;
import p006a5.C0023h;
import p047e0.AbstractC1387m;
import p047e0.ViewOnClickListenerC1393n0;
import p051e4.C1482o;

/* JADX INFO: renamed from: m0.i2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2305i2 extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2315k2 f6156a;

    public C2305i2(C2315k2 c2315k2) {
        this.f6156a = c2315k2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f6156a.f6194i.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
        int i11;
        C2300h2 c2300h2 = (C2300h2) viewHolder;
        C2315k2 c2315k2 = this.f6156a;
        C2310j2 c2310j2 = (C2310j2) c2315k2.f6194i.get(i10);
        ImageView imageView = c2300h2.f6116a;
        View view = c2300h2.f6118c;
        TextView textView = c2300h2.f6117b;
        int measuredWidth = imageView.getMeasuredWidth();
        if (measuredWidth <= 0) {
            measuredWidth = (int) (c2300h2.itemView.getResources().getDisplayMetrics().density * 64.0f);
        }
        boolean z9 = c2310j2.f6171a;
        C0023h c0023h = c2310j2.f6172b;
        C1482o c1482o = c2310j2.f6173c;
        if (z9) {
            view.setBackground(null);
            Drawable drawable = (Drawable) ((C0023h) c1482o.f3599c).f83e;
            Drawable drawable2 = (Drawable) ((C0023h) c1482o.f3600d).f83e;
            int i12 = c1482o.f3597a;
            int i13 = c1482o.f3598b;
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(measuredWidth, measuredWidth, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            int iM3704w = (C2315k2.m3704w(i13) * measuredWidth) / 100;
            if (i12 == 1) {
                drawable.setBounds(0, 0, measuredWidth, iM3704w);
                drawable.draw(canvas);
                drawable2.setBounds(0, iM3704w, measuredWidth, measuredWidth);
                drawable2.draw(canvas);
            } else {
                drawable.setBounds(0, 0, iM3704w, measuredWidth);
                drawable.draw(canvas);
                drawable2.setBounds(iM3704w, 0, measuredWidth, measuredWidth);
                drawable2.draw(canvas);
            }
            imageView.setImageDrawable(new BitmapDrawable(c2315k2.getResources(), bitmapCreateBitmap));
            String strSubstring = (String) ((C0023h) c1482o.f3599c).f81c;
            String strSubstring2 = "";
            if (strSubstring == null) {
                strSubstring = "";
                i11 = 3;
            } else {
                i11 = 3;
                if (strSubstring.length() > 3) {
                    strSubstring = strSubstring.substring(0, 3);
                }
            }
            String str = (String) ((C0023h) c1482o.f3600d).f81c;
            if (str != null) {
                strSubstring2 = str.length() > i11 ? str.substring(0, i11) : str;
            }
            StringBuilder sbM170u = AbstractC0074a.m170u(strSubstring);
            sbM170u.append(AbstractC1387m.m2421h(new byte[]{97}, new byte[]{78, 88, 16, 79, 54, -126, -126, -76}));
            sbM170u.append(strSubstring2);
            sbM170u.append("\n");
            sbM170u.append(c1482o.f3598b);
            sbM170u.append(AbstractC1387m.m2421h(new byte[]{-92}, new byte[]{-117, -84, -32, -115, 91, -13, -127, 1}));
            sbM170u.append(100 - c1482o.f3598b);
            textView.setText(sbM170u.toString());
        } else {
            imageView.setImageDrawable((Drawable) c0023h.f83e);
            textView.setText((String) c0023h.f81c);
            view.setBackground(((String) c0023h.f82d).equals(c2315k2.f6187b) ? c2315k2.getResources().getDrawable(R.drawable.bg_badge_circle) : null);
        }
        c2300h2.itemView.setOnClickListener(new ViewOnClickListenerC1393n0(this, c2310j2, c2300h2, 3));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_app, viewGroup, false);
        C2300h2 c2300h2 = new C2300h2(viewInflate);
        c2300h2.f6116a = (ImageView) viewInflate.findViewById(R.id.appIcon);
        c2300h2.f6117b = (TextView) viewInflate.findViewById(R.id.appLabel);
        c2300h2.f6118c = viewInflate.findViewById(R.id.selected);
        return c2300h2;
    }
}

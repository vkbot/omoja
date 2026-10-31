package p190s1;

import android.graphics.Typeface;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Locale;
import kotlin.jvm.internal.ByteCompanionObject;
import p047e0.AbstractC1387m;
import p098j0.AbstractC1920f;
import p098j0.C1919e;
import p098j0.EnumC1918d;

/* JADX INFO: renamed from: s1.i0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3150i0 extends BaseAdapter {

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C3166q0 f9031d;

    /* JADX INFO: renamed from: c */
    public final ArrayList f9030c = new ArrayList();

    /* JADX INFO: renamed from: b */
    public final ArrayList f9029b = new ArrayList();

    public C3150i0(C3166q0 c3166q0, ArrayList arrayList) {
        this.f9031d = c3166q0;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C1919e c1919e = (C1919e) obj;
            if (AbstractC1920f.m3006d(c1919e)) {
                this.f9029b.add(c1919e);
            }
        }
        this.f9030c.addAll(this.f9029b);
    }

    /* JADX INFO: renamed from: a */
    public final void m4983a(String str) {
        String lowerCase = str.trim().toLowerCase(Locale.getDefault());
        ArrayList arrayList = this.f9030c;
        arrayList.clear();
        ArrayList arrayList2 = this.f9029b;
        int size = arrayList2.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList2.get(i10);
            i10++;
            C1919e c1919e = (C1919e) obj;
            String lowerCase2 = C3166q0.m5030b(c1919e).toLowerCase(Locale.getDefault());
            if (lowerCase.isEmpty() || lowerCase2.contains(lowerCase)) {
                arrayList.add(c1919e);
            }
        }
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f9030c.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i10) {
        return this.f9030c.get(i10);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i10) {
        return i10;
    }

    @Override // android.widget.Adapter
    public final View getView(int i10, View view, ViewGroup viewGroup) {
        String strM2421h;
        C1919e c1919e = (C1919e) this.f9030c.get(i10);
        C3166q0 c3166q0 = this.f9031d;
        FrameLayout frameLayout = new FrameLayout(c3166q0.getContext());
        frameLayout.setPadding(c3166q0.m5067l(2), c3166q0.m5067l(4), c3166q0.m5067l(2), c3166q0.m5067l(4));
        LinearLayout linearLayout = new LinearLayout(c3166q0.getContext());
        linearLayout.setGravity(16);
        linearLayout.setPadding(c3166q0.m5067l(12), c3166q0.m5067l(8), c3166q0.m5067l(14), c3166q0.m5067l(8));
        linearLayout.setBackground(c3166q0.m5043G(-15194575, 16, -13679275));
        FrameLayout frameLayout2 = new FrameLayout(c3166q0.getContext());
        frameLayout2.setBackground(c3166q0.m5043G(-1511437, 14, -8875873));
        if (c1919e.f5067j != null) {
            ImageView imageView = new ImageView(c3166q0.getContext());
            imageView.setImageDrawable(c1919e.f5067j);
            imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            int iM5067l = c3166q0.m5067l(7);
            imageView.setPadding(iM5067l, iM5067l, iM5067l, iM5067l);
            frameLayout2.addView(imageView, new FrameLayout.LayoutParams(-1, -1));
        } else {
            TextView textViewM5051P = c3166q0.m5051P(AbstractC1387m.m2421h(new byte[]{27, -6, -55}, new byte[]{-7, 102, 111, 42, -41, 37, 85, 74}), 27, -14977641);
            textViewM5051P.setGravity(17);
            frameLayout2.addView(textViewM5051P, new FrameLayout.LayoutParams(-1, -1));
        }
        linearLayout.addView(frameLayout2, new LinearLayout.LayoutParams(c3166q0.m5067l(58), c3166q0.m5067l(58)));
        LinearLayout linearLayoutM5057V = c3166q0.m5057V();
        linearLayoutM5057V.setGravity(16);
        linearLayoutM5057V.setPadding(c3166q0.m5067l(14), 0, c3166q0.m5067l(8), 0);
        TextView textViewM5051P2 = c3166q0.m5051P(C3166q0.m5030b(c1919e), 17, -1);
        textViewM5051P2.setTypeface(Typeface.DEFAULT_BOLD);
        textViewM5051P2.setMaxLines(1);
        textViewM5051P2.setEllipsize(TextUtils.TruncateAt.END);
        linearLayoutM5057V.addView(textViewM5051P2);
        EnumC1918d enumC1918d = c1919e.f5058a;
        if (enumC1918d == EnumC1918d.f5054c) {
            strM2421h = AbstractC1387m.m2421h(new byte[]{110, 69, 100, 16, 119, 67, -91, 57, 110, 100, 101, 38, 119, 78, -91, 63, 110, 98, 101, 37}, new byte[]{-66, -38, -75, -112, -89, -5, 117, -126});
        } else if (enumC1918d == EnumC1918d.f5055d) {
            strM2421h = AbstractC1387m.m2421h(new byte[]{-106, 72, -7, ByteCompanionObject.MAX_VALUE, 117, 77, 97, -1, -106, 106, -7, 124, 117, 65, 96, -56, -106, 106, -8, 78, -123, 32, 49, -98, -10, 2, -98, 17, 17, 33, 4, -98, -3, 2, -100, 17, 24, 33, 9, -97, -55, -14, -8, 76, 117, 75, 96, -50, -106, 98, -7, 124, 117, 65}, new byte[]{70, -46, 41, -63, -91, -15, -79, 78});
        } else {
            strM2421h = enumC1918d == EnumC1918d.f5056e ? AbstractC1387m.m2421h(new byte[]{6, -13, -115, -59, -91, 4, 58, 17, 6, -37, -115, -59, -91, 13, 59, 45, 7, -18, -115, -50, -91, 4, 58, 17, 7, -19, -115, -63, -91, 15, 58, 18, -10, -68, -25, -85, -53, 111, 87, 77, 102, -68, -32, -85, -63, 111, 91}, new byte[]{-42, 108, 93, 123, 117, -65, -21, -99}) : AbstractC1387m.m2421h(new byte[]{-78, -27, 96, 110, -97, -35, -91, -73, -77, -12, 97, 91, -98, -23, 84, -27, -42, -92, 4, 53, -9, -115, -11, -28, -32, -92, 3, 53, -10, -116, -63}, new byte[]{98, 116, -79, -27, 78, 92, 116, 53});
        }
        TextView textViewM5051P3 = c3166q0.m5051P(strM2421h, 12, -7099975);
        textViewM5051P3.setMaxLines(1);
        linearLayoutM5057V.addView(textViewM5051P3);
        linearLayout.addView(linearLayoutM5057V, new LinearLayout.LayoutParams(0, -1, 1.0f));
        TextView textViewM5051P4 = c3166q0.m5051P(AbstractC1387m.m2421h(new byte[]{-30, -19, 66}, new byte[]{13, 81, -55, -54, 78, 112, -79, 43}), 26, -9973004);
        textViewM5051P4.setGravity(17);
        linearLayout.addView(textViewM5051P4, new LinearLayout.LayoutParams(c3166q0.m5067l(42), -1));
        frameLayout.addView(linearLayout, new FrameLayout.LayoutParams(-1, c3166q0.m5067l(76)));
        return frameLayout;
    }
}

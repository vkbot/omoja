package p115k7;

import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.google.protobuf.AbstractC1178q;
import java.util.HashMap;
import p047e0.AbstractC1387m;
import p217v1.C3326d;

/* JADX INFO: renamed from: k7.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2055e extends LinearLayout {

    /* JADX INFO: renamed from: b */
    public TextView f5611b;

    /* JADX INFO: renamed from: c */
    public TextView f5612c;

    /* JADX INFO: renamed from: d */
    public ImageView f5613d;

    /* JADX INFO: renamed from: e */
    public LinearLayout f5614e;

    /* JADX INFO: renamed from: f */
    public ProgressBar f5615f;

    /* JADX INFO: renamed from: g */
    public Boolean f5616g;

    public Boolean getWeatherget() {
        return this.f5616g;
    }

    public void setLoad(Boolean bool) {
        boolean zBooleanValue = bool.booleanValue();
        TextView textView = this.f5611b;
        if (zBooleanValue) {
            textView.setVisibility(8);
            this.f5614e.setVisibility(8);
            this.f5615f.setVisibility(0);
        } else {
            textView.setVisibility(0);
            this.f5614e.setVisibility(0);
            this.f5615f.setVisibility(8);
        }
    }

    public void setUpdateView(C2052b c2052b) {
        String strTrim;
        TextView textView = this.f5611b;
        String str = c2052b.f5605a;
        if (str == null) {
            strTrim = "";
        } else {
            HashMap map = new HashMap();
            map.put(AbstractC1387m.m2421h(new byte[]{68, 56, -17, -73, -52, 98, -107, 93, 68, 56, -17, -72, -52, 103, -108, 100}, new byte[]{-107, -71, 63, 2, 28, -39, 68, -47}), AbstractC1387m.m2421h(new byte[]{-4, -57, -89, -81, -2, -63, -19}, new byte[]{45, 70, 119, 26, 46, 122, -61, -73}));
            map.put(AbstractC1387m.m2421h(new byte[]{-24, 117, 38, -94, 122, -84, -21, -57, -24, 114, 39, -99, 123, -106, -21, -57, -24, 115}, new byte[]{56, -58, -10, 28, -85, 44, 59, 121}), AbstractC1387m.m2421h(new byte[]{-125, 98, 48}, new byte[]{83, -47, 30, 109, -90, 69, 20, -95}));
            map.put(AbstractC1387m.m2421h(new byte[]{98, -68, -52, -36, -120, 62, -24, 13, 98, -72, -52, -41, -119, 2, -24, 0, 98, -74}, new byte[]{-78, 3, 28, 98, 89, -65, 56, -72}), AbstractC1387m.m2421h(new byte[]{106, 89, -80, -39, -38, 97, -4}, new byte[]{-70, -26, 96, 103, 11, -32, -46, -27}));
            map.put(AbstractC1387m.m2421h(new byte[]{-98, 85, 78, -54, 66, 51, -39, 119, -97, 104}, new byte[]{79, -43, -98, 122, -110, -118, 9, -55}), AbstractC1387m.m2421h(new byte[]{-110, 12, 97, 36, 114}, new byte[]{67, -116, 76, -12, -49, -44, 100, 34}));
            map.put(AbstractC1387m.m2421h(new byte[]{-76, -58, 15, 11, -28, -91, -14, 22, -75, -7, 14, 56, -27, -110}, new byte[]{100, 120, -33, -70, 52, 30, 34, -90}), AbstractC1387m.m2421h(new byte[]{-90, -27, 83, 103, -70, -117, 37}, new byte[]{118, 91, -125, -42, 106, 48, 11, 48}));
            map.put(AbstractC1387m.m2421h(new byte[]{-18, 82, 72, -121, -22, 85, 53, 97, -18, 86, 72, -126, -22, 90, 52, 88, -17, 107, 73, -71, -22, 88, -59, 4, -127, 6, 34, -29, -70, 48, 102, 4, -116}, new byte[]{63, -42, -104, 50, 58, -31, -27, -44}), AbstractC1387m.m2421h(new byte[]{7, 77, 67, -54}, new byte[]{-41, -23, -109, 84, 21, 69, -2, 113}));
            String[] strArrSplit = str.split(AbstractC1387m.m2421h(new byte[]{50, -50, 109}, new byte[]{110, -67, 70, -87, -60, -68, 44, -114}));
            StringBuilder sb = new StringBuilder();
            for (String str2 : strArrSplit) {
                sb.append((String) map.getOrDefault(str2.toLowerCase(), str2));
                sb.append(" ");
            }
            strTrim = sb.toString().trim();
        }
        textView.setText(strTrim != null ? strTrim.length() <= 20 ? strTrim : strTrim.substring(0, 17).concat(AbstractC1387m.m2421h(new byte[]{106}, new byte[]{68, 105, -44, 116, 94, -41, -79, -40})) : "");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(c2052b.f5606b);
        this.f5612c.setText(AbstractC1178q.m2075i(new byte[]{80, 45}, new byte[]{-110, -99, -31, -40, 71, -59, -91, 36}, sb2));
        int i10 = c2052b.f5608d;
        C3326d.m5242a().m5245d().f9730c.postValue(c2052b);
        ImageView imageView = this.f5613d;
        if (i10 == -1) {
            imageView.setVisibility(8);
        } else {
            imageView.setVisibility(0);
            this.f5613d.setImageResource(i10);
        }
        this.f5616g = Boolean.TRUE;
    }

    public static void setWeatherData(C2052b c2052b) {
    }
}

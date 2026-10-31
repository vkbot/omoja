package p132m0;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;
import java.util.ArrayList;
import p047e0.AbstractC1387m;
import p078h0.C1652b;
import p094i7.C1772u;
import p094i7.RunnableC1771t;
import p098j0.C1917c;
import p098j0.C1919e;
import p121l0.C2194a;
import p121l0.C2195b;
import p142n0.EnumC2469d;
import p197t0.C3222d;
import p206u0.C3277a;
import p225w0.C3481o0;

/* JADX INFO: renamed from: m0.y1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2374y1 extends C2195b {

    /* JADX INFO: renamed from: e */
    public static final String f6422e = AbstractC1387m.m2421h(new byte[]{-113, -7, -69, 121, 8, -48, -3, 100, -112, -29, -89, 67, 54, -45, -24, 79, -119, -27, -69, 65, 26}, new byte[]{-3, -116, -43, 38, 105, -96, -115, 59});

    /* JADX INFO: renamed from: f */
    public static final String f6423f = AbstractC1387m.m2421h(new byte[]{43, 24, 69, 89, 57, -58, -32, -32, 52, 2, 89, 99, 7, -59, -11, -53, 45, 4, 69, 97, 43, -23, -44, -6, 21, 44, 114}, new byte[]{89, 109, 43, 6, 88, -74, -112, -65});

    /* JADX INFO: renamed from: b */
    public RecyclerView f6424b;

    /* JADX INFO: renamed from: c */
    public C3222d f6425c;

    /* JADX INFO: renamed from: d */
    public ArrayList f6426d;

    static {
        AbstractC1387m.m2421h(new byte[]{-45, -28, -10, -21, 90, -91, 65, -97, -48, -29, -10, -12, 64, -71, 123}, new byte[]{-96, -109, -87, -103, 47, -53, 30, -2});
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.run_app_more_settings_fragment, viewGroup, false);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.recyclerVoiceCommands);
        this.f6424b = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(requireActivity()));
        C1652b.m2734a();
        this.f6426d = C1652b.m2737f().m2993i(f6422e);
        C3222d c3222d = new C3222d(requireActivity(), this.f6426d);
        this.f6425c = c3222d;
        this.f6424b.setAdapter(c3222d);
        final int i10 = 0;
        viewInflate.findViewById(R.id.btnAddCommand).setOnClickListener(new View.OnClickListener(this) { // from class: m0.x1

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2374y1 f6413c;

            {
                this.f6413c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i11 = i10;
                C2374y1 c2374y1 = this.f6413c;
                switch (i11) {
                    case 0:
                        c2374y1.f6426d.add(new C3481o0("", C1919e.m3000c(EnumC2469d.f6756e, c2374y1.requireActivity()), true, true));
                        c2374y1.f6425c.notifyItemInserted(c2374y1.f6426d.size() - 1);
                        break;
                    default:
                        String str = C2374y1.f6422e;
                        C1652b.m2734a();
                        C1917c c1917cM2737f = C1652b.m2737f();
                        ArrayList arrayList = c2374y1.f6426d;
                        String str2 = C2374y1.f6422e;
                        c1917cM2737f.getClass();
                        C1917c.m2987l(str2, arrayList);
                        C2194a c2194a = (C2194a) c2374y1.getParentFragment();
                        if (c2194a != null) {
                            c2194a.dismiss();
                        }
                        break;
                }
            }
        });
        SeekBar seekBar = (SeekBar) viewInflate.findViewById(R.id.about_run_app_more_delay);
        TextView textView = (TextView) viewInflate.findViewById(R.id.textView_about_run_app_more_delay);
        C3277a c3277aM2745o = C1652b.m2745o();
        String str = f6423f;
        int iLoadInt = c3277aM2745o.loadInt(str, 1);
        int i11 = iLoadInt - 1;
        int i12 = i11 >= 0 ? i11 : 0;
        seekBar.post(new RunnableC1771t(seekBar, i12 > 19 ? 19 : i12, textView, iLoadInt, 1));
        seekBar.setMax(19);
        final int i13 = 1;
        seekBar.setOnSeekBarChangeListener(new C1772u(textView, str, 1));
        viewInflate.findViewById(R.id.btnSave).setOnClickListener(new View.OnClickListener(this) { // from class: m0.x1

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2374y1 f6413c;

            {
                this.f6413c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i14 = i13;
                C2374y1 c2374y1 = this.f6413c;
                switch (i14) {
                    case 0:
                        c2374y1.f6426d.add(new C3481o0("", C1919e.m3000c(EnumC2469d.f6756e, c2374y1.requireActivity()), true, true));
                        c2374y1.f6425c.notifyItemInserted(c2374y1.f6426d.size() - 1);
                        break;
                    default:
                        String str2 = C2374y1.f6422e;
                        C1652b.m2734a();
                        C1917c c1917cM2737f = C1652b.m2737f();
                        ArrayList arrayList = c2374y1.f6426d;
                        String str3 = C2374y1.f6422e;
                        c1917cM2737f.getClass();
                        C1917c.m2987l(str3, arrayList);
                        C2194a c2194a = (C2194a) c2374y1.getParentFragment();
                        if (c2194a != null) {
                            c2194a.dismiss();
                        }
                        break;
                }
            }
        });
        return viewInflate;
    }
}

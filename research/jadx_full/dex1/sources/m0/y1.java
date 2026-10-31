package m0;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class y1 extends l0.b {
    public static final String e = e0.m.h(new byte[]{-113, -7, -69, 121, 8, -48, -3, 100, -112, -29, -89, 67, 54, -45, -24, 79, -119, -27, -69, 65, 26}, new byte[]{-3, -116, -43, 38, 105, -96, -115, 59});

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f3631f = e0.m.h(new byte[]{43, 24, 69, 89, 57, -58, -32, -32, 52, 2, 89, 99, 7, -59, -11, -53, 45, 4, 69, 97, 43, -23, -44, -6, 21, 44, 114}, new byte[]{89, 109, 43, 6, 88, -74, -112, -65});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public RecyclerView f3632b;
    public t0.d c;
    public ArrayList d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        e0.m.h(new byte[]{-45, -28, -10, -21, 90, -91, 65, -97, -48, -29, -10, -12, 64, -71, 123}, new byte[]{-96, -109, -87, -103, 47, -53, 30, -2});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(2131493123, viewGroup, false);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(2131297260);
        this.f3632b = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(requireActivity()));
        h0.b.a();
        this.d = h0.b.f().i(e);
        t0.d dVar = new t0.d(requireActivity(), this.d);
        this.c = dVar;
        this.f3632b.setAdapter(dVar);
        viewInflate.findViewById(2131296516).setOnClickListener(new x1(this, 0));
        SeekBar seekBar = (SeekBar) viewInflate.findViewById(2131296365);
        TextView textView = (TextView) viewInflate.findViewById(2131297627);
        u0.a aVarO = h0.b.o();
        String str = f3631f;
        int iLoadInt = aVarO.loadInt(str, 1);
        int i9 = iLoadInt - 1;
        int i10 = i9 >= 0 ? i9 : 0;
        seekBar.post(new i7.t(seekBar, i10 > 19 ? 19 : i10, textView, iLoadInt, 1));
        seekBar.setMax(19);
        seekBar.setOnSeekBarChangeListener(new i7.u(textView, str, 1));
        viewInflate.findViewById(2131296525).setOnClickListener(new x1(this, 1));
        return viewInflate;
    }
}

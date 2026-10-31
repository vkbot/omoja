package p132m0;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.fragment.app.C0566h;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;
import java.util.ArrayList;
import java.util.List;
import p047e0.AbstractC1387m;
import p047e0.C1341c3;
import p047e0.C1344d1;
import p062f5.RunnableC1556j;
import p098j0.C1917c;
import p225w0.C3481o0;

/* JADX INFO: renamed from: m0.q1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2342q1 extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a */
    public final List f6313a;

    /* JADX INFO: renamed from: b */
    public final C1917c f6314b;

    /* JADX INFO: renamed from: c */
    public C0566h f6315c;

    /* JADX INFO: renamed from: d */
    public RunnableC1556j f6316d;

    /* JADX INFO: renamed from: e */
    public int f6317e = -1;

    public C2342q1(FragmentActivity fragmentActivity, ArrayList arrayList) {
        this.f6313a = arrayList;
        this.f6314b = new C1917c(fragmentActivity);
    }

    /* JADX INFO: renamed from: a */
    public final void m3720a(int i10) {
        int i11 = this.f6317e;
        this.f6317e = i10;
        if (i11 != -1) {
            notifyItemChanged(i11);
        }
        int i12 = this.f6317e;
        if (i12 != -1) {
            notifyItemChanged(i12);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f6313a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
        final C2338p1 c2338p1 = (C2338p1) viewHolder;
        C3481o0 c3481o0 = (C3481o0) this.f6313a.get(i10);
        String str = c3481o0.f10178a;
        String strTrim = str == null ? "" : str.trim();
        final int i11 = 0;
        final int i12 = 1;
        boolean z9 = i10 == this.f6317e;
        Button button = c2338p1.f6296a;
        Spinner spinner = c2338p1.f6297b;
        CheckBox checkBox = c2338p1.f6298c;
        button.setActivated(z9);
        if (z9) {
            button.setText(AbstractC1387m.m2421h(new byte[]{-84, 34, -99, 35, -68, -126, 42, 89, -84, 7, -100, 17, -68, -127, -38, 53, -58, 111, -16, 67, -46, -28, 69, 53, -58, 110, -50, -67, 66, 26}, new byte[]{124, -65, 77, -109, 108, 52, -6, -27}));
        } else if (strTrim.length() == 0) {
            button.setText(AbstractC1387m.m2421h(new byte[]{18, -82, -45, 4, -61, 110, 44, 8, 18, -116, -45, 13, -62, 83, -35, 88, 120, -20, -65, 95, -83, 15, 66, 88, 120, -19, -127}, new byte[]{-62, 60, 2, -113, 19, -33, -3, -120}));
        } else {
            button.setText(strTrim);
        }
        button.setOnClickListener(new View.OnClickListener(this) { // from class: m0.o1

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2342q1 f6285c;

            {
                this.f6285c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C0566h c0566h;
                C2283e0 c2283e0;
                ArrayList arrayList;
                int i13 = i11;
                C2338p1 c2338p2 = c2338p1;
                C2342q1 c2342q1 = this.f6285c;
                switch (i13) {
                    case 0:
                        int adapterPosition = c2338p2.getAdapterPosition();
                        if (adapterPosition != -1 && (c0566h = c2342q1.f6315c) != null && (arrayList = (c2283e0 = (C2283e0) c0566h.f453c).f6028n) != null && adapterPosition >= 0 && adapterPosition < arrayList.size()) {
                            c2283e0.f6033s = adapterPosition;
                            C2342q1 c2342q2 = c2283e0.f6027m;
                            if (c2342q2 != null) {
                                c2342q2.m3720a(adapterPosition);
                            }
                            TextView textView = c2283e0.f6022h;
                            if (textView != null) {
                                textView.setText(AbstractC1387m.m2421h(new byte[]{3, -88, -8, 38, -95, 103, -56, -124, 3, -115, -7, 20, -95, 100, 56, -24, 110, -28, -85, 70, -57, 1, -91, -23, 80, -28, -90, -74, -95, 107, -56, -123, 3, -117, -8, 41, -95, 107, -55, -69, -13, -27, -107, 70, -63, -15, -56, -121, 3, -123, -8, 43, -95, 100, -56, -125, 3, -115}, new byte[]{-45, 53, 40, -106, 113, -47, 24, 56}));
                            }
                            break;
                        }
                        break;
                    default:
                        List list = c2342q1.f6313a;
                        int adapterPosition2 = c2338p2.getAdapterPosition();
                        if (adapterPosition2 != -1) {
                            list.remove(adapterPosition2);
                            c2342q1.notifyItemRemoved(adapterPosition2);
                            c2342q1.notifyItemRangeChanged(adapterPosition2, list.size());
                            RunnableC1556j runnableC1556j = c2342q1.f6316d;
                            if (runnableC1556j != null) {
                                runnableC1556j.run();
                            }
                        }
                        break;
                }
            }
        });
        checkBox.setOnCheckedChangeListener(null);
        checkBox.setChecked(c3481o0.f10180c);
        checkBox.setOnCheckedChangeListener(new C1341c3(2, this, c3481o0));
        spinner.setOnItemSelectedListener(null);
        this.f6314b.m2997n(spinner, c3481o0.f10179b);
        spinner.setOnItemSelectedListener(new C1344d1(3, this, c3481o0));
        c2338p1.f6299d.setOnClickListener(new View.OnClickListener(this) { // from class: m0.o1

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2342q1 f6285c;

            {
                this.f6285c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C0566h c0566h;
                C2283e0 c2283e0;
                ArrayList arrayList;
                int i13 = i12;
                C2338p1 c2338p2 = c2338p1;
                C2342q1 c2342q1 = this.f6285c;
                switch (i13) {
                    case 0:
                        int adapterPosition = c2338p2.getAdapterPosition();
                        if (adapterPosition != -1 && (c0566h = c2342q1.f6315c) != null && (arrayList = (c2283e0 = (C2283e0) c0566h.f453c).f6028n) != null && adapterPosition >= 0 && adapterPosition < arrayList.size()) {
                            c2283e0.f6033s = adapterPosition;
                            C2342q1 c2342q2 = c2283e0.f6027m;
                            if (c2342q2 != null) {
                                c2342q2.m3720a(adapterPosition);
                            }
                            TextView textView = c2283e0.f6022h;
                            if (textView != null) {
                                textView.setText(AbstractC1387m.m2421h(new byte[]{3, -88, -8, 38, -95, 103, -56, -124, 3, -115, -7, 20, -95, 100, 56, -24, 110, -28, -85, 70, -57, 1, -91, -23, 80, -28, -90, -74, -95, 107, -56, -123, 3, -117, -8, 41, -95, 107, -55, -69, -13, -27, -107, 70, -63, -15, -56, -121, 3, -123, -8, 43, -95, 100, -56, -125, 3, -115}, new byte[]{-45, 53, 40, -106, 113, -47, 24, 56}));
                            }
                            break;
                        }
                        break;
                    default:
                        List list = c2342q1.f6313a;
                        int adapterPosition2 = c2338p2.getAdapterPosition();
                        if (adapterPosition2 != -1) {
                            list.remove(adapterPosition2);
                            c2342q1.notifyItemRemoved(adapterPosition2);
                            c2342q1.notifyItemRangeChanged(adapterPosition2, list.size());
                            RunnableC1556j runnableC1556j = c2342q1.f6316d;
                            if (runnableC1556j != null) {
                                runnableC1556j.run();
                            }
                        }
                        break;
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
        return new C2338p1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_physical_button_command, viewGroup, false));
    }
}

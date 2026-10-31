package p132m0;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.fragment.app.C0566h;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;
import com.example.navistart.cores.LogcatRule;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import p047e0.AbstractC1387m;
import p078h0.C1652b;
import p098j0.AbstractC1920f;
import p098j0.C1919e;
import p121l0.C2194a;
import p121l0.C2195b;
import p217v1.C3326d;
import p225w0.C3481o0;

/* JADX INFO: renamed from: m0.z0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2377z0 extends C2195b {

    /* JADX INFO: renamed from: m */
    public static final String f6434m = AbstractC1387m.m2421h(new byte[]{-49, -5, 47, -80, -66, 109, -19, 7, -52, -16, 45, -80, -76, 107, -32, 13, -52, -6, 59}, new byte[]{-93, -108, 72, -17, -43, 8, -108, 100});

    /* JADX INFO: renamed from: n */
    public static final String f6435n = AbstractC1387m.m2421h(new byte[]{38, -28, 58, -87, 93, 34, -29, 10, 45, -22, 4, -82, 87, 60, -33, 9, 38, -24, 4, -95, 91, 54, -33, 9, 52, -24, 41, -68}, new byte[]{66, -115, 91, -59, 50, 69, -68, 102});

    /* JADX INFO: renamed from: d */
    public EditText f6438d;

    /* JADX INFO: renamed from: e */
    public TextView f6439e;

    /* JADX INFO: renamed from: f */
    public TextView f6440f;

    /* JADX INFO: renamed from: g */
    public Button f6441g;

    /* JADX INFO: renamed from: h */
    public RecyclerView f6442h;

    /* JADX INFO: renamed from: i */
    public C2361v0 f6443i;

    /* JADX INFO: renamed from: j */
    public boolean f6444j;

    /* JADX INFO: renamed from: l */
    public boolean f6446l;

    /* JADX INFO: renamed from: b */
    public final ArrayList f6436b = new ArrayList();

    /* JADX INFO: renamed from: c */
    public final LinkedHashMap f6437c = new LinkedHashMap();

    /* JADX INFO: renamed from: k */
    public String f6445k = "";

    /* JADX INFO: renamed from: t */
    public static void m3743t() {
        try {
            if (C1652b.m2734a().m2755j() != null) {
                C1652b.m2734a().m2755j().m1637lo(f6435n, null, "\u0000");
            }
        } catch (Exception unused) {
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_log_keycode, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        FragmentActivity activity = getActivity();
        boolean z9 = activity != null && activity.isChangingConfigurations();
        super.onDestroy();
        if (this.f6446l || z9) {
            return;
        }
        this.f6446l = true;
        C1652b.m2752x(true);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.f6444j = false;
        this.f6445k = "";
        m3743t();
        this.f6438d = null;
        this.f6439e = null;
        this.f6440f = null;
        this.f6441g = null;
        this.f6442h = null;
        this.f6443i = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f6438d = (EditText) view.findViewById(R.id.logKeycodeFilter);
        this.f6439e = (TextView) view.findViewById(R.id.logKeycodeStatus);
        this.f6440f = (TextView) view.findViewById(R.id.logKeycodeEmpty);
        this.f6441g = (Button) view.findViewById(R.id.logKeycodeRecordButton);
        this.f6442h = (RecyclerView) view.findViewById(R.id.logKeycodeEvents);
        ArrayList arrayList = this.f6436b;
        arrayList.clear();
        LinkedHashMap linkedHashMap = this.f6437c;
        linkedHashMap.clear();
        C1652b.m2734a();
        ArrayList arrayListM2993i = C1652b.m2737f().m2993i(f6434m);
        int size = arrayListM2993i.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayListM2993i.get(i10);
            i10++;
            C3481o0 c3481o0 = (C3481o0) obj;
            LogcatRule logcatRuleFromStorageValue = LogcatRule.fromStorageValue(c3481o0.f10178a);
            C1919e c1919e = c3481o0.f10179b;
            if (logcatRuleFromStorageValue != null && AbstractC1920f.m3006d(c1919e) && !linkedHashMap.containsKey(logcatRuleFromStorageValue.toStorageValue())) {
                C2353t0 c2353t0 = new C2353t0(logcatRuleFromStorageValue, c1919e, true);
                arrayList.add(c2353t0);
                linkedHashMap.put(logcatRuleFromStorageValue.toStorageValue(), c2353t0);
            }
        }
        this.f6443i = new C2361v0(arrayList, new C0566h(20, this));
        this.f6442h.setLayoutManager(new LinearLayoutManager(requireContext()));
        this.f6442h.setAdapter(this.f6443i);
        final int i11 = 0;
        view.findViewById(R.id.logKeycodeBackButton).setOnClickListener(new View.OnClickListener(this) { // from class: m0.w0

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2377z0 f6395c;

            {
                this.f6395c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i12 = i11;
                C2377z0 c2377z0 = this.f6395c;
                switch (i12) {
                    case 0:
                        String str = C2377z0.f6434m;
                        if (!(c2377z0.getParentFragment() instanceof C2194a)) {
                            FragmentActivity activity = c2377z0.getActivity();
                            if (activity != null) {
                                activity.finish();
                            }
                        } else {
                            ((C2194a) c2377z0.getParentFragment()).dismiss();
                        }
                        break;
                    default:
                        if (c2377z0.f6444j) {
                            c2377z0.f6444j = false;
                            c2377z0.f6445k = "";
                            C2377z0.m3743t();
                            c2377z0.m3745v();
                        } else {
                            String strTrim = c2377z0.f6438d.getText() != null ? c2377z0.f6438d.getText().toString().trim() : "";
                            boolean zIsEmpty = strTrim.isEmpty();
                            EditText editText = c2377z0.f6438d;
                            if (zIsEmpty) {
                                editText.setError(c2377z0.getString(R.string.log_keycode_filter_required));
                            } else {
                                editText.setError(null);
                                try {
                                    if (C1652b.m2734a().m2755j() == null) {
                                        c2377z0.f6439e.setText(R.string.log_keycode_status_unavailable);
                                    } else {
                                        C1652b.m2734a().m2755j().m1637lo(C2377z0.f6435n, null, null);
                                        c2377z0.f6445k = strTrim;
                                        c2377z0.f6444j = true;
                                        c2377z0.m3745v();
                                    }
                                } catch (Exception unused) {
                                    c2377z0.f6439e.setText(R.string.log_keycode_status_unavailable);
                                    return;
                                }
                            }
                        }
                        break;
                }
            }
        });
        final int i12 = 1;
        this.f6441g.setOnClickListener(new View.OnClickListener(this) { // from class: m0.w0

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2377z0 f6395c;

            {
                this.f6395c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i13 = i12;
                C2377z0 c2377z0 = this.f6395c;
                switch (i13) {
                    case 0:
                        String str = C2377z0.f6434m;
                        if (!(c2377z0.getParentFragment() instanceof C2194a)) {
                            FragmentActivity activity = c2377z0.getActivity();
                            if (activity != null) {
                                activity.finish();
                            }
                        } else {
                            ((C2194a) c2377z0.getParentFragment()).dismiss();
                        }
                        break;
                    default:
                        if (c2377z0.f6444j) {
                            c2377z0.f6444j = false;
                            c2377z0.f6445k = "";
                            C2377z0.m3743t();
                            c2377z0.m3745v();
                        } else {
                            String strTrim = c2377z0.f6438d.getText() != null ? c2377z0.f6438d.getText().toString().trim() : "";
                            boolean zIsEmpty = strTrim.isEmpty();
                            EditText editText = c2377z0.f6438d;
                            if (zIsEmpty) {
                                editText.setError(c2377z0.getString(R.string.log_keycode_filter_required));
                            } else {
                                editText.setError(null);
                                try {
                                    if (C1652b.m2734a().m2755j() == null) {
                                        c2377z0.f6439e.setText(R.string.log_keycode_status_unavailable);
                                    } else {
                                        C1652b.m2734a().m2755j().m1637lo(C2377z0.f6435n, null, null);
                                        c2377z0.f6445k = strTrim;
                                        c2377z0.f6444j = true;
                                        c2377z0.m3745v();
                                    }
                                } catch (Exception unused) {
                                    c2377z0.f6439e.setText(R.string.log_keycode_status_unavailable);
                                    return;
                                }
                            }
                        }
                        break;
                }
            }
        });
        C3326d.m5242a().m5245d().f9732e.observe(getViewLifecycleOwner(), new C2369x0(this, 0));
        m3745v();
        m3744u();
    }

    /* JADX INFO: renamed from: u */
    public final void m3744u() {
        TextView textView = this.f6440f;
        if (textView != null) {
            textView.setVisibility(this.f6436b.isEmpty() ? 0 : 8);
        }
    }

    /* JADX INFO: renamed from: v */
    public final void m3745v() {
        Button button = this.f6441g;
        if (button == null || this.f6439e == null || this.f6438d == null) {
            return;
        }
        button.setText(this.f6444j ? R.string.log_keycode_stop : R.string.log_keycode_start);
        this.f6439e.setText(this.f6444j ? R.string.log_keycode_status_recording : R.string.log_keycode_status_stopped);
        this.f6438d.setEnabled(!this.f6444j);
    }
}

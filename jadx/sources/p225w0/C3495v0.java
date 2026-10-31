package p225w0;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.Switch;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;
import com.example.navistart.ServiceC1080Si;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.p118io.encoding.Base64;
import p016b1.RunnableC0873n;
import p047e0.AbstractC1387m;
import p047e0.C1418s0;
import p078h0.C1652b;
import p098j0.C1917c;
import p098j0.C1919e;
import p121l0.C2194a;
import p121l0.C2195b;
import p142n0.EnumC2469d;

/* JADX INFO: renamed from: w0.v0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C3495v0 extends C2195b {

    /* JADX INFO: renamed from: b */
    public RecyclerView f10232b;

    /* JADX INFO: renamed from: c */
    public C3485q0 f10233c;

    /* JADX INFO: renamed from: d */
    public ArrayList f10234d;

    /* JADX INFO: renamed from: e */
    public EditText f10235e;

    /* JADX INFO: renamed from: f */
    public boolean f10236f;

    /* JADX INFO: renamed from: g */
    public Spinner f10237g;

    /* JADX INFO: renamed from: h */
    public Button f10238h;

    /* JADX INFO: renamed from: i */
    public TextView f10239i;

    /* JADX INFO: renamed from: j */
    public RadioGroup f10240j;

    /* JADX INFO: renamed from: k */
    public Button f10241k;

    /* JADX INFO: renamed from: l */
    public TextView f10242l;

    /* JADX INFO: renamed from: m */
    public final ExecutorService f10243m = Executors.newSingleThreadExecutor();

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i10;
        final int i11 = 0;
        View viewInflate = layoutInflater.inflate(R.layout.fragment_voice_command_settings, viewGroup, false);
        this.f10235e = (EditText) viewInflate.findViewById(R.id.editActivationPhrase);
        Switch r9 = (Switch) viewInflate.findViewById(R.id.spi_aktivate_sw);
        boolean zLoadBoolean = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-82, 46, 23, 78, 85, -116, 82, -80, -85, 63, 10, 116, 107, -108, 81, -122, -114, 9}, new byte[]{-35, 94, 126, 17, 52, -25, 38, -39}), false);
        this.f10236f = zLoadBoolean;
        r9.setChecked(zLoadBoolean);
        final int i12 = 1;
        this.f10235e.setEnabled(!this.f10236f);
        r9.setOnCheckedChangeListener(new C1418s0(10, this));
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.recyclerVoiceCommands);
        this.f10232b = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(requireActivity()));
        EditText editText = this.f10235e;
        C1652b.m2734a();
        C1652b.m2737f().getClass();
        editText.setText(C1917c.m2986f());
        C1652b.m2734a();
        this.f10234d = C1652b.m2737f().m2993i(C1917c.f5050e);
        C3485q0 c3485q0 = new C3485q0(requireActivity(), this.f10234d);
        this.f10233c = c3485q0;
        this.f10232b.setAdapter(c3485q0);
        viewInflate.findViewById(R.id.btnAddCommand).setOnClickListener(new View.OnClickListener(this) { // from class: w0.t0

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C3495v0 f10213c;

            {
                this.f10213c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i13 = i11;
                C3495v0 c3495v0 = this.f10213c;
                switch (i13) {
                    case 0:
                        c3495v0.f10234d.add(new C3481o0("", C1919e.m3000c(EnumC2469d.f6756e, c3495v0.requireActivity()), true, true));
                        c3495v0.f10233c.notifyItemInserted(c3495v0.f10234d.size() - 1);
                        break;
                    case 1:
                        C1652b.m2734a();
                        C1917c c1917cM2737f = C1652b.m2737f();
                        String string = c3495v0.f10235e.getText().toString();
                        c1917cM2737f.getClass();
                        C1652b.m2745o().saveString(C1917c.f5049d, string);
                        C1652b.m2734a();
                        C1917c c1917cM2737f2 = C1652b.m2737f();
                        ArrayList arrayList = c3495v0.f10234d;
                        String str = C1917c.f5050e;
                        c1917cM2737f2.getClass();
                        C1917c.m2987l(str, arrayList);
                        C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{29, -73, -70, 117, -123, 98, -113, 19, 24, -90, -89, 79, -69, 122, -116, 37, Base64.padSymbol, -112}, new byte[]{110, -57, -45, 42, -28, 9, -5, 122}), c3495v0.f10236f);
                        ServiceC1080Si.m1527a(c3495v0.requireContext());
                        C2194a c2194a = (C2194a) c3495v0.getParentFragment();
                        if (c2194a != null) {
                            c2194a.dismiss();
                        }
                        break;
                    case 2:
                        Context applicationContext = c3495v0.requireContext().getApplicationContext();
                        if (c3495v0.f10240j.getCheckedRadioButtonId() != R.id.radioVoiceEngineSimple) {
                            EnumC3502z enumC3502z = c3495v0.f10240j.getCheckedRadioButtonId() == R.id.radioVoiceEngineFree ? EnumC3502z.f10328d : EnumC3502z.f10327c;
                            if (!AbstractC3440a.m5365f(applicationContext)) {
                                c3495v0.m5502t(false);
                                c3495v0.f10242l.setText(c3495v0.getString(R.string.voice_engine_loading, 0));
                                c3495v0.f10243m.execute(new RunnableC0873n(c3495v0, applicationContext, enumC3502z, 16));
                            } else {
                                AbstractC3441a0.m5374h(applicationContext, enumC3502z);
                                c3495v0.m5503u();
                            }
                        } else {
                            AbstractC3441a0.m5374h(applicationContext, EnumC3502z.f10326b);
                            c3495v0.m5503u();
                        }
                        break;
                    default:
                        int selectedItemPosition = c3495v0.f10237g.getSelectedItemPosition();
                        EnumC3472k1[] enumC3472k1ArrValues = EnumC3472k1.values();
                        EnumC3472k1 enumC3472k1 = (selectedItemPosition < 0 || selectedItemPosition >= enumC3472k1ArrValues.length) ? null : enumC3472k1ArrValues[selectedItemPosition];
                        if (enumC3472k1 != null) {
                            Context applicationContext2 = c3495v0.requireContext().getApplicationContext();
                            c3495v0.f10238h.setEnabled(false);
                            c3495v0.f10237g.setEnabled(false);
                            c3495v0.f10239i.setText(c3495v0.getString(R.string.vosk_model_loading, 0));
                            c3495v0.f10243m.execute(new RunnableC0873n(c3495v0, applicationContext2, enumC3472k1, 15));
                            break;
                        }
                        break;
                }
            }
        });
        viewInflate.findViewById(R.id.btnSave).setOnClickListener(new View.OnClickListener(this) { // from class: w0.t0

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C3495v0 f10213c;

            {
                this.f10213c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i13 = i12;
                C3495v0 c3495v0 = this.f10213c;
                switch (i13) {
                    case 0:
                        c3495v0.f10234d.add(new C3481o0("", C1919e.m3000c(EnumC2469d.f6756e, c3495v0.requireActivity()), true, true));
                        c3495v0.f10233c.notifyItemInserted(c3495v0.f10234d.size() - 1);
                        break;
                    case 1:
                        C1652b.m2734a();
                        C1917c c1917cM2737f = C1652b.m2737f();
                        String string = c3495v0.f10235e.getText().toString();
                        c1917cM2737f.getClass();
                        C1652b.m2745o().saveString(C1917c.f5049d, string);
                        C1652b.m2734a();
                        C1917c c1917cM2737f2 = C1652b.m2737f();
                        ArrayList arrayList = c3495v0.f10234d;
                        String str = C1917c.f5050e;
                        c1917cM2737f2.getClass();
                        C1917c.m2987l(str, arrayList);
                        C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{29, -73, -70, 117, -123, 98, -113, 19, 24, -90, -89, 79, -69, 122, -116, 37, Base64.padSymbol, -112}, new byte[]{110, -57, -45, 42, -28, 9, -5, 122}), c3495v0.f10236f);
                        ServiceC1080Si.m1527a(c3495v0.requireContext());
                        C2194a c2194a = (C2194a) c3495v0.getParentFragment();
                        if (c2194a != null) {
                            c2194a.dismiss();
                        }
                        break;
                    case 2:
                        Context applicationContext = c3495v0.requireContext().getApplicationContext();
                        if (c3495v0.f10240j.getCheckedRadioButtonId() != R.id.radioVoiceEngineSimple) {
                            EnumC3502z enumC3502z = c3495v0.f10240j.getCheckedRadioButtonId() == R.id.radioVoiceEngineFree ? EnumC3502z.f10328d : EnumC3502z.f10327c;
                            if (!AbstractC3440a.m5365f(applicationContext)) {
                                c3495v0.m5502t(false);
                                c3495v0.f10242l.setText(c3495v0.getString(R.string.voice_engine_loading, 0));
                                c3495v0.f10243m.execute(new RunnableC0873n(c3495v0, applicationContext, enumC3502z, 16));
                            } else {
                                AbstractC3441a0.m5374h(applicationContext, enumC3502z);
                                c3495v0.m5503u();
                            }
                        } else {
                            AbstractC3441a0.m5374h(applicationContext, EnumC3502z.f10326b);
                            c3495v0.m5503u();
                        }
                        break;
                    default:
                        int selectedItemPosition = c3495v0.f10237g.getSelectedItemPosition();
                        EnumC3472k1[] enumC3472k1ArrValues = EnumC3472k1.values();
                        EnumC3472k1 enumC3472k1 = (selectedItemPosition < 0 || selectedItemPosition >= enumC3472k1ArrValues.length) ? null : enumC3472k1ArrValues[selectedItemPosition];
                        if (enumC3472k1 != null) {
                            Context applicationContext2 = c3495v0.requireContext().getApplicationContext();
                            c3495v0.f10238h.setEnabled(false);
                            c3495v0.f10237g.setEnabled(false);
                            c3495v0.f10239i.setText(c3495v0.getString(R.string.vosk_model_loading, 0));
                            c3495v0.f10243m.execute(new RunnableC0873n(c3495v0, applicationContext2, enumC3472k1, 15));
                            break;
                        }
                        break;
                }
            }
        });
        this.f10240j = (RadioGroup) viewInflate.findViewById(R.id.radioVoiceEngine);
        this.f10241k = (Button) viewInflate.findViewById(R.id.btnApplyVoiceEngine);
        this.f10242l = (TextView) viewInflate.findViewById(R.id.textVoiceEngineStatus);
        boolean zM5365f = AbstractC3440a.m5365f(requireContext());
        EnumC3502z enumC3502zM5370d = AbstractC3441a0.m5370d();
        RadioGroup radioGroup = this.f10240j;
        if (zM5365f && enumC3502zM5370d == EnumC3502z.f10328d) {
            i10 = R.id.radioVoiceEngineFree;
        } else {
            i10 = (zM5365f && enumC3502zM5370d == EnumC3502z.f10327c) ? R.id.radioVoiceEngineAdvanced : R.id.radioVoiceEngineSimple;
        }
        radioGroup.check(i10);
        m5503u();
        final int i13 = 2;
        this.f10241k.setOnClickListener(new View.OnClickListener(this) { // from class: w0.t0

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C3495v0 f10213c;

            {
                this.f10213c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i14 = i13;
                C3495v0 c3495v0 = this.f10213c;
                switch (i14) {
                    case 0:
                        c3495v0.f10234d.add(new C3481o0("", C1919e.m3000c(EnumC2469d.f6756e, c3495v0.requireActivity()), true, true));
                        c3495v0.f10233c.notifyItemInserted(c3495v0.f10234d.size() - 1);
                        break;
                    case 1:
                        C1652b.m2734a();
                        C1917c c1917cM2737f = C1652b.m2737f();
                        String string = c3495v0.f10235e.getText().toString();
                        c1917cM2737f.getClass();
                        C1652b.m2745o().saveString(C1917c.f5049d, string);
                        C1652b.m2734a();
                        C1917c c1917cM2737f2 = C1652b.m2737f();
                        ArrayList arrayList = c3495v0.f10234d;
                        String str = C1917c.f5050e;
                        c1917cM2737f2.getClass();
                        C1917c.m2987l(str, arrayList);
                        C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{29, -73, -70, 117, -123, 98, -113, 19, 24, -90, -89, 79, -69, 122, -116, 37, Base64.padSymbol, -112}, new byte[]{110, -57, -45, 42, -28, 9, -5, 122}), c3495v0.f10236f);
                        ServiceC1080Si.m1527a(c3495v0.requireContext());
                        C2194a c2194a = (C2194a) c3495v0.getParentFragment();
                        if (c2194a != null) {
                            c2194a.dismiss();
                        }
                        break;
                    case 2:
                        Context applicationContext = c3495v0.requireContext().getApplicationContext();
                        if (c3495v0.f10240j.getCheckedRadioButtonId() != R.id.radioVoiceEngineSimple) {
                            EnumC3502z enumC3502z = c3495v0.f10240j.getCheckedRadioButtonId() == R.id.radioVoiceEngineFree ? EnumC3502z.f10328d : EnumC3502z.f10327c;
                            if (!AbstractC3440a.m5365f(applicationContext)) {
                                c3495v0.m5502t(false);
                                c3495v0.f10242l.setText(c3495v0.getString(R.string.voice_engine_loading, 0));
                                c3495v0.f10243m.execute(new RunnableC0873n(c3495v0, applicationContext, enumC3502z, 16));
                            } else {
                                AbstractC3441a0.m5374h(applicationContext, enumC3502z);
                                c3495v0.m5503u();
                            }
                        } else {
                            AbstractC3441a0.m5374h(applicationContext, EnumC3502z.f10326b);
                            c3495v0.m5503u();
                        }
                        break;
                    default:
                        int selectedItemPosition = c3495v0.f10237g.getSelectedItemPosition();
                        EnumC3472k1[] enumC3472k1ArrValues = EnumC3472k1.values();
                        EnumC3472k1 enumC3472k1 = (selectedItemPosition < 0 || selectedItemPosition >= enumC3472k1ArrValues.length) ? null : enumC3472k1ArrValues[selectedItemPosition];
                        if (enumC3472k1 != null) {
                            Context applicationContext2 = c3495v0.requireContext().getApplicationContext();
                            c3495v0.f10238h.setEnabled(false);
                            c3495v0.f10237g.setEnabled(false);
                            c3495v0.f10239i.setText(c3495v0.getString(R.string.vosk_model_loading, 0));
                            c3495v0.f10243m.execute(new RunnableC0873n(c3495v0, applicationContext2, enumC3472k1, 15));
                            break;
                        }
                        break;
                }
            }
        });
        this.f10237g = (Spinner) viewInflate.findViewById(R.id.spinnerVoskLanguage);
        this.f10238h = (Button) viewInflate.findViewById(R.id.btnApplyVoskLanguage);
        this.f10239i = (TextView) viewInflate.findViewById(R.id.textVoskModelStatus);
        EnumC3472k1[] enumC3472k1ArrValues = EnumC3472k1.values();
        String[] strArr = new String[enumC3472k1ArrValues.length];
        while (i11 < enumC3472k1ArrValues.length) {
            strArr[i11] = requireContext().getString(enumC3472k1ArrValues[i11].f10071b);
            i11++;
        }
        ArrayAdapter arrayAdapter = new ArrayAdapter(requireContext(), android.R.layout.simple_spinner_item, strArr);
        arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this.f10237g.setAdapter((SpinnerAdapter) arrayAdapter);
        try {
            this.f10237g.setSelection(EnumC3472k1.valueOf(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{80, -103, -4, 94, -52, -126, 10, 83, 65, -125, -18, 82, -10, -79, 6, 82, 66, -109, -29}, new byte[]{38, -10, -113, 53, -109, -18, 107, Base64.padSymbol}), EnumC3472k1.f10049e.name())).ordinal());
        } catch (IllegalArgumentException unused) {
            this.f10237g.setSelection(EnumC3472k1.f10049e.ordinal());
        }
        final int i14 = 3;
        this.f10238h.setOnClickListener(new View.OnClickListener(this) { // from class: w0.t0

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C3495v0 f10213c;

            {
                this.f10213c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i15 = i14;
                C3495v0 c3495v0 = this.f10213c;
                switch (i15) {
                    case 0:
                        c3495v0.f10234d.add(new C3481o0("", C1919e.m3000c(EnumC2469d.f6756e, c3495v0.requireActivity()), true, true));
                        c3495v0.f10233c.notifyItemInserted(c3495v0.f10234d.size() - 1);
                        break;
                    case 1:
                        C1652b.m2734a();
                        C1917c c1917cM2737f = C1652b.m2737f();
                        String string = c3495v0.f10235e.getText().toString();
                        c1917cM2737f.getClass();
                        C1652b.m2745o().saveString(C1917c.f5049d, string);
                        C1652b.m2734a();
                        C1917c c1917cM2737f2 = C1652b.m2737f();
                        ArrayList arrayList = c3495v0.f10234d;
                        String str = C1917c.f5050e;
                        c1917cM2737f2.getClass();
                        C1917c.m2987l(str, arrayList);
                        C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{29, -73, -70, 117, -123, 98, -113, 19, 24, -90, -89, 79, -69, 122, -116, 37, Base64.padSymbol, -112}, new byte[]{110, -57, -45, 42, -28, 9, -5, 122}), c3495v0.f10236f);
                        ServiceC1080Si.m1527a(c3495v0.requireContext());
                        C2194a c2194a = (C2194a) c3495v0.getParentFragment();
                        if (c2194a != null) {
                            c2194a.dismiss();
                        }
                        break;
                    case 2:
                        Context applicationContext = c3495v0.requireContext().getApplicationContext();
                        if (c3495v0.f10240j.getCheckedRadioButtonId() != R.id.radioVoiceEngineSimple) {
                            EnumC3502z enumC3502z = c3495v0.f10240j.getCheckedRadioButtonId() == R.id.radioVoiceEngineFree ? EnumC3502z.f10328d : EnumC3502z.f10327c;
                            if (!AbstractC3440a.m5365f(applicationContext)) {
                                c3495v0.m5502t(false);
                                c3495v0.f10242l.setText(c3495v0.getString(R.string.voice_engine_loading, 0));
                                c3495v0.f10243m.execute(new RunnableC0873n(c3495v0, applicationContext, enumC3502z, 16));
                            } else {
                                AbstractC3441a0.m5374h(applicationContext, enumC3502z);
                                c3495v0.m5503u();
                            }
                        } else {
                            AbstractC3441a0.m5374h(applicationContext, EnumC3502z.f10326b);
                            c3495v0.m5503u();
                        }
                        break;
                    default:
                        int selectedItemPosition = c3495v0.f10237g.getSelectedItemPosition();
                        EnumC3472k1[] enumC3472k1ArrValues2 = EnumC3472k1.values();
                        EnumC3472k1 enumC3472k1 = (selectedItemPosition < 0 || selectedItemPosition >= enumC3472k1ArrValues2.length) ? null : enumC3472k1ArrValues2[selectedItemPosition];
                        if (enumC3472k1 != null) {
                            Context applicationContext2 = c3495v0.requireContext().getApplicationContext();
                            c3495v0.f10238h.setEnabled(false);
                            c3495v0.f10237g.setEnabled(false);
                            c3495v0.f10239i.setText(c3495v0.getString(R.string.vosk_model_loading, 0));
                            c3495v0.f10243m.execute(new RunnableC0873n(c3495v0, applicationContext2, enumC3472k1, 15));
                            break;
                        }
                        break;
                }
            }
        });
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        this.f10243m.shutdownNow();
        super.onDestroy();
    }

    /* JADX INFO: renamed from: t */
    public final void m5502t(boolean z9) {
        this.f10240j.setEnabled(z9);
        for (int i10 = 0; i10 < this.f10240j.getChildCount(); i10++) {
            this.f10240j.getChildAt(i10).setEnabled(z9);
        }
        this.f10241k.setEnabled(z9);
    }

    /* JADX INFO: renamed from: u */
    public final void m5503u() {
        int i10;
        boolean zM5365f = AbstractC3440a.m5365f(requireContext());
        if (zM5365f && AbstractC3441a0.m5370d() == EnumC3502z.f10328d) {
            this.f10242l.setText(R.string.voice_engine_free_active);
            return;
        }
        boolean z9 = AbstractC3441a0.m5370d() == EnumC3502z.f10327c && zM5365f;
        TextView textView = this.f10242l;
        if (z9) {
            i10 = R.string.voice_engine_advanced_active;
        } else {
            i10 = zM5365f ? R.string.voice_engine_advanced_available : R.string.voice_engine_simple_active;
        }
        textView.setText(i10);
    }
}

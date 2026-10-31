package m0;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.graphics.Bitmap;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.InputFilter;
import android.text.InputFilter$LengthFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.example.navistart.Transport.TransportService;
import com.google.android.material.materialswitch.MaterialSwitch;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m2 extends l0.b {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String f3514m = e0.m.h(new byte[]{-27, 45, -88, 73, -118, -89, -108, 71}, new byte[]{ByteCompanionObject.MIN_VALUE, 64, -54, 44, -18, -61, -15, 35});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SecureRandom f3515b = new SecureRandom();
    public final Handler c = new Handler(Looper.getMainLooper());
    public final com.bumptech.glide.m d = new com.bumptech.glide.m(8, this);
    public MaterialSwitch e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public EditText f3516f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Spinner f3517g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public EditText f3518h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public View f3519i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public TextView f3520j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Button f3521k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Button f3522l;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        boolean z8 = getArguments() != null && getArguments().getBoolean(f3514m, false);
        View viewInflate = layoutInflater.inflate(z8 ? 2131492972 : 2131492971, viewGroup, false);
        this.e = (MaterialSwitch) viewInflate.findViewById(2131297675);
        this.f3516f = (EditText) viewInflate.findViewById(2131297679);
        this.f3517g = (Spinner) viewInflate.findViewById(2131297677);
        this.f3518h = (EditText) viewInflate.findViewById(2131297686);
        this.f3519i = viewInflate.findViewById(2131297683);
        this.f3520j = (TextView) viewInflate.findViewById(2131297684);
        this.f3518h.setFilters(new InputFilter[]{new InputFilter$LengthFilter(9)});
        View viewFindViewById = viewInflate.findViewById(2131297676);
        viewFindViewById.setVisibility(z8 ? 8 : 0);
        viewFindViewById.setOnClickListener(new l2(this, 0));
        ImageView imageView = (ImageView) viewInflate.findViewById(2131297680);
        Bitmap bitmapH = e3.d.h(360, getString(2131952252));
        if (bitmapH != null) {
            imageView.setImageBitmap(bitmapH);
        }
        this.e.setChecked(y0.m.c(requireContext()).getBoolean(y0.m.f6105b, true));
        this.f3516f.setText(y0.m.d(y0.m.c(requireContext()).getString(y0.m.c, "")));
        this.f3518h.setText(y0.m.a(requireContext()));
        this.e.setOnCheckedChangeListener(new e0.s0(6, this));
        this.f3516f.setVisibility(!this.e.isChecked() ? 0 : 8);
        ArrayList arrayList = new ArrayList();
        arrayList.add(getString(2131952632));
        String strD = y0.m.d(y0.m.c(requireContext()).getString(y0.m.e, ""));
        if (!strD.trim().isEmpty()) {
            arrayList.add(strD.trim());
        }
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter != null && (Build$VERSION.SDK_INT < 31 || requireContext().checkSelfPermission(e0.m.h(new byte[]{66, 111, 25, -18, -51, 116, 105, 109, 83, 100, 15, -15, -53, 110, 126, 42, 76, 111, 83, -34, -18, 72, 72, 23, 108, 78, 41, -44, -3, 94, 66, 13, 109, 68, 62, -56}, new byte[]{35, 1, 125, -100, -94, 29, 13, 67})) == 0)) {
            try {
                Iterator<BluetoothDevice> it = defaultAdapter.getBondedDevices().iterator();
                while (it.hasNext()) {
                    String name = it.next().getName();
                    if (name != null && !name.trim().isEmpty() && !arrayList.contains(name.trim())) {
                        arrayList.add(name.trim());
                    }
                }
            } catch (SecurityException unused) {
            }
        }
        if (arrayList.size() > 2) {
            Collections.sort(arrayList.subList(1, arrayList.size()), String.CASE_INSENSITIVE_ORDER);
        }
        ArrayAdapter arrayAdapter = new ArrayAdapter(requireContext(), 2131493136, arrayList);
        arrayAdapter.setDropDownViewResource(2131493129);
        this.f3517g.setAdapter((SpinnerAdapter) arrayAdapter);
        this.f3517g.setSelection(Math.max(arrayList.indexOf(strD), 0));
        this.f3521k = (Button) viewInflate.findViewById(2131297682);
        this.f3522l = (Button) viewInflate.findViewById(2131297685);
        t();
        this.f3521k.setOnClickListener(new l2(this, 1));
        this.f3522l.setOnClickListener(new l2(this, 2));
        viewInflate.findViewById(2131297678).setOnClickListener(new l2(this, 3));
        viewInflate.findViewById(2131297681).setOnClickListener(new l2(this, 4));
        return viewInflate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        this.c.removeCallbacks(this.d);
        super.onPause();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        this.d.run();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void t() {
        if (this.f3520j == null || this.f3519i == null) {
            return;
        }
        CopyOnWriteArrayList copyOnWriteArrayList = y0.g.f6090a;
        boolean z8 = TransportService.w.get();
        if (TransportService.f857x.get()) {
            this.f3520j.setText(getString(2131952630, TransportService.f858y));
            this.f3519i.setBackgroundResource(2131165569);
        } else {
            TextView textView = this.f3520j;
            if (z8) {
                textView.setText(2131952650);
                this.f3519i.setBackgroundResource(2131165570);
            } else {
                textView.setText(2131952638);
                this.f3519i.setBackgroundResource(2131165568);
            }
        }
        this.f3521k.setEnabled(!z8);
        this.f3522l.setEnabled(z8);
    }
}

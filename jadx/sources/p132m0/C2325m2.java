package p132m0;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.InputFilter;
import android.util.Patterns;
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
import com.bumptech.glide.RunnableC1054m;
import com.example.navistart.R;
import com.example.navistart.Transport.TransportService;
import com.google.android.material.materialswitch.MaterialSwitch;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.internal.ByteCompanionObject;
import p047e0.AbstractC1387m;
import p047e0.C1418s0;
import p047e0.C1421s3;
import p050e3.C1461d;
import p099j1.C1929i;
import p121l0.C2194a;
import p121l0.C2195b;
import p245y0.AbstractC3629g;
import p245y0.AbstractC3635m;
import p245y0.AbstractC3636n;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: m0.m2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2325m2 extends C2195b {

    /* JADX INFO: renamed from: m */
    public static final String f6221m = AbstractC1387m.m2421h(new byte[]{-27, 45, -88, 73, -118, -89, -108, 71}, new byte[]{ByteCompanionObject.MIN_VALUE, 64, -54, 44, -18, -61, -15, 35});

    /* JADX INFO: renamed from: b */
    public final SecureRandom f6222b = new SecureRandom();

    /* JADX INFO: renamed from: c */
    public final Handler f6223c = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: d */
    public final RunnableC1054m f6224d = new RunnableC1054m(8, this);

    /* JADX INFO: renamed from: e */
    public MaterialSwitch f6225e;

    /* JADX INFO: renamed from: f */
    public EditText f6226f;

    /* JADX INFO: renamed from: g */
    public Spinner f6227g;

    /* JADX INFO: renamed from: h */
    public EditText f6228h;

    /* JADX INFO: renamed from: i */
    public View f6229i;

    /* JADX INFO: renamed from: j */
    public TextView f6230j;

    /* JADX INFO: renamed from: k */
    public Button f6231k;

    /* JADX INFO: renamed from: l */
    public Button f6232l;

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        final int i10 = 1;
        final int i11 = 0;
        boolean z9 = getArguments() != null && getArguments().getBoolean(f6221m, false);
        View viewInflate = layoutInflater.inflate(z9 ? R.layout.fragment_transport_settings_content : R.layout.fragment_transport_settings, viewGroup, false);
        this.f6225e = (MaterialSwitch) viewInflate.findViewById(R.id.transportAutomaticWifi);
        this.f6226f = (EditText) viewInflate.findViewById(R.id.transportHost);
        this.f6227g = (Spinner) viewInflate.findViewById(R.id.transportBluetoothDevice);
        this.f6228h = (EditText) viewInflate.findViewById(R.id.transportToken);
        this.f6229i = viewInflate.findViewById(R.id.transportStatusIndicator);
        this.f6230j = (TextView) viewInflate.findViewById(R.id.transportStatusText);
        this.f6228h.setFilters(new InputFilter[]{new InputFilter.LengthFilter(9)});
        View viewFindViewById = viewInflate.findViewById(R.id.transportBack);
        viewFindViewById.setVisibility(z9 ? 8 : 0);
        viewFindViewById.setOnClickListener(new View.OnClickListener(this) { // from class: m0.l2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2325m2 f6213c;

            {
                this.f6213c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C1421s3 c1421s3;
                switch (i11) {
                    case 0:
                        C2325m2 c2325m2 = this.f6213c;
                        String str = C2325m2.f6221m;
                        if (c2325m2.getParentFragment() instanceof C2194a) {
                            ((C2194a) c2325m2.getParentFragment()).dismiss();
                        } else if (c2325m2.getActivity() != null) {
                            c2325m2.getActivity().onBackPressed();
                        }
                        break;
                    case 1:
                        C2325m2 c2325m3 = this.f6213c;
                        String str2 = C2325m2.f6221m;
                        AbstractC3629g.m5804d(c2325m3.requireContext());
                        c2325m3.m3707t();
                        AbstractC3656k.m5877w(R.string.transport_started, c2325m3.requireContext());
                        break;
                    case 2:
                        C2325m2 c2325m4 = this.f6213c;
                        String str3 = C2325m2.f6221m;
                        Context contextRequireContext = c2325m4.requireContext();
                        CopyOnWriteArrayList copyOnWriteArrayList = AbstractC3629g.f10774a;
                        contextRequireContext.getApplicationContext().stopService(new Intent(contextRequireContext.getApplicationContext(), (Class<?>) TransportService.class));
                        c2325m4.m3707t();
                        AbstractC3656k.m5877w(R.string.transport_stopped, c2325m4.requireContext());
                        break;
                    case 3:
                        C2325m2 c2325m5 = this.f6213c;
                        c2325m5.f6228h.setText(String.format(Locale.US, AbstractC1387m.m2421h(new byte[]{-124, 16, 105, 58}, new byte[]{-95, 32, 80, 94, 17, -107, 36, 25}), Integer.valueOf(c2325m5.f6222b.nextInt(1000000000))));
                        break;
                    default:
                        C2325m2 c2325m6 = this.f6213c;
                        String strTrim = c2325m6.f6226f.getText().toString().trim();
                        String strTrim2 = c2325m6.f6228h.getText().toString().trim();
                        if (!c2325m6.f6225e.isChecked() && (strTrim.isEmpty() || !Patterns.IP_ADDRESS.matcher(strTrim).matches())) {
                            c2325m6.f6226f.setError(c2325m6.getString(R.string.transport_invalid_ip));
                        } else if (!AbstractC3635m.m5817b(strTrim2)) {
                            c2325m6.f6228h.setError(c2325m6.getString(R.string.transport_invalid_token));
                        } else {
                            String strValueOf = c2325m6.f6227g.getSelectedItemPosition() > 0 ? String.valueOf(c2325m6.f6227g.getSelectedItem()) : "";
                            Context contextRequireContext2 = c2325m6.requireContext();
                            boolean zIsChecked = c2325m6.f6225e.isChecked();
                            if (AbstractC3635m.m5819d(strTrim2).isEmpty() || AbstractC3635m.m5817b(strTrim2)) {
                                AbstractC3635m.m5818c(contextRequireContext2).edit().putBoolean(AbstractC3635m.f10799b, zIsChecked).putString(AbstractC3635m.f10800c, AbstractC3635m.m5819d(strTrim)).putInt(AbstractC3635m.f10801d, 8897).putString(AbstractC3635m.f10802e, strValueOf.trim()).putString(AbstractC3635m.f10803f, AbstractC3635m.m5819d(strTrim2)).apply();
                                AbstractC3636n.f10805a.set(false);
                                TransportService transportService = TransportService.f1663z;
                                if (transportService != null && (c1421s3 = transportService.f1674l) != null) {
                                    c1421s3.m2458e();
                                }
                                AbstractC3656k.m5877w(R.string.transport_settings_saved, c2325m6.requireContext());
                            } else {
                                C1929i.m3029k(AbstractC1387m.m2421h(new byte[]{-33, -69, 1, -68, -4, 126, 77, 16, -1, -23, 20, -67, -28, 107, 76, 66, -26, -68, 19, -90, -81, 109, 77, 12, -1, -88, 9, -68, -81, 107, 90, 3, -24, -67, 12, -85, -81, 55, 2, 6, -30, -82, 9, -90, -4}, new byte[]{-117, -55, 96, -46, -113, 14, 34, 98}));
                            }
                        }
                        break;
                }
            }
        });
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.transportPhoneAppQr);
        Bitmap bitmapM2509h = C1461d.m2509h(360, getString(R.string.mock_gps_phone_app_url));
        if (bitmapM2509h != null) {
            imageView.setImageBitmap(bitmapM2509h);
        }
        this.f6225e.setChecked(AbstractC3635m.m5818c(requireContext()).getBoolean(AbstractC3635m.f10799b, true));
        this.f6226f.setText(AbstractC3635m.m5819d(AbstractC3635m.m5818c(requireContext()).getString(AbstractC3635m.f10800c, "")));
        this.f6228h.setText(AbstractC3635m.m5816a(requireContext()));
        this.f6225e.setOnCheckedChangeListener(new C1418s0(6, this));
        this.f6226f.setVisibility(!this.f6225e.isChecked() ? 0 : 8);
        ArrayList arrayList = new ArrayList();
        arrayList.add(getString(R.string.transport_device_not_selected));
        String strM5819d = AbstractC3635m.m5819d(AbstractC3635m.m5818c(requireContext()).getString(AbstractC3635m.f10802e, ""));
        if (!strM5819d.trim().isEmpty()) {
            arrayList.add(strM5819d.trim());
        }
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter != null && (Build.VERSION.SDK_INT < 31 || requireContext().checkSelfPermission(AbstractC1387m.m2421h(new byte[]{66, 111, 25, -18, -51, 116, 105, 109, 83, 100, 15, -15, -53, 110, 126, 42, 76, 111, 83, -34, -18, 72, 72, 23, 108, 78, 41, -44, -3, 94, 66, 13, 109, 68, 62, -56}, new byte[]{35, 1, 125, -100, -94, 29, 13, 67})) == 0)) {
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
        final int i12 = 2;
        if (arrayList.size() > 2) {
            Collections.sort(arrayList.subList(1, arrayList.size()), String.CASE_INSENSITIVE_ORDER);
        }
        ArrayAdapter arrayAdapter = new ArrayAdapter(requireContext(), R.layout.spinner_text, arrayList);
        arrayAdapter.setDropDownViewResource(R.layout.simple_spinner_dropdown);
        this.f6227g.setAdapter((SpinnerAdapter) arrayAdapter);
        this.f6227g.setSelection(Math.max(arrayList.indexOf(strM5819d), 0));
        this.f6231k = (Button) viewInflate.findViewById(R.id.transportStart);
        this.f6232l = (Button) viewInflate.findViewById(R.id.transportStop);
        m3707t();
        this.f6231k.setOnClickListener(new View.OnClickListener(this) { // from class: m0.l2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2325m2 f6213c;

            {
                this.f6213c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C1421s3 c1421s3;
                switch (i10) {
                    case 0:
                        C2325m2 c2325m2 = this.f6213c;
                        String str = C2325m2.f6221m;
                        if (c2325m2.getParentFragment() instanceof C2194a) {
                            ((C2194a) c2325m2.getParentFragment()).dismiss();
                        } else if (c2325m2.getActivity() != null) {
                            c2325m2.getActivity().onBackPressed();
                        }
                        break;
                    case 1:
                        C2325m2 c2325m3 = this.f6213c;
                        String str2 = C2325m2.f6221m;
                        AbstractC3629g.m5804d(c2325m3.requireContext());
                        c2325m3.m3707t();
                        AbstractC3656k.m5877w(R.string.transport_started, c2325m3.requireContext());
                        break;
                    case 2:
                        C2325m2 c2325m4 = this.f6213c;
                        String str3 = C2325m2.f6221m;
                        Context contextRequireContext = c2325m4.requireContext();
                        CopyOnWriteArrayList copyOnWriteArrayList = AbstractC3629g.f10774a;
                        contextRequireContext.getApplicationContext().stopService(new Intent(contextRequireContext.getApplicationContext(), (Class<?>) TransportService.class));
                        c2325m4.m3707t();
                        AbstractC3656k.m5877w(R.string.transport_stopped, c2325m4.requireContext());
                        break;
                    case 3:
                        C2325m2 c2325m5 = this.f6213c;
                        c2325m5.f6228h.setText(String.format(Locale.US, AbstractC1387m.m2421h(new byte[]{-124, 16, 105, 58}, new byte[]{-95, 32, 80, 94, 17, -107, 36, 25}), Integer.valueOf(c2325m5.f6222b.nextInt(1000000000))));
                        break;
                    default:
                        C2325m2 c2325m6 = this.f6213c;
                        String strTrim = c2325m6.f6226f.getText().toString().trim();
                        String strTrim2 = c2325m6.f6228h.getText().toString().trim();
                        if (!c2325m6.f6225e.isChecked() && (strTrim.isEmpty() || !Patterns.IP_ADDRESS.matcher(strTrim).matches())) {
                            c2325m6.f6226f.setError(c2325m6.getString(R.string.transport_invalid_ip));
                        } else if (!AbstractC3635m.m5817b(strTrim2)) {
                            c2325m6.f6228h.setError(c2325m6.getString(R.string.transport_invalid_token));
                        } else {
                            String strValueOf = c2325m6.f6227g.getSelectedItemPosition() > 0 ? String.valueOf(c2325m6.f6227g.getSelectedItem()) : "";
                            Context contextRequireContext2 = c2325m6.requireContext();
                            boolean zIsChecked = c2325m6.f6225e.isChecked();
                            if (AbstractC3635m.m5819d(strTrim2).isEmpty() || AbstractC3635m.m5817b(strTrim2)) {
                                AbstractC3635m.m5818c(contextRequireContext2).edit().putBoolean(AbstractC3635m.f10799b, zIsChecked).putString(AbstractC3635m.f10800c, AbstractC3635m.m5819d(strTrim)).putInt(AbstractC3635m.f10801d, 8897).putString(AbstractC3635m.f10802e, strValueOf.trim()).putString(AbstractC3635m.f10803f, AbstractC3635m.m5819d(strTrim2)).apply();
                                AbstractC3636n.f10805a.set(false);
                                TransportService transportService = TransportService.f1663z;
                                if (transportService != null && (c1421s3 = transportService.f1674l) != null) {
                                    c1421s3.m2458e();
                                }
                                AbstractC3656k.m5877w(R.string.transport_settings_saved, c2325m6.requireContext());
                            } else {
                                C1929i.m3029k(AbstractC1387m.m2421h(new byte[]{-33, -69, 1, -68, -4, 126, 77, 16, -1, -23, 20, -67, -28, 107, 76, 66, -26, -68, 19, -90, -81, 109, 77, 12, -1, -88, 9, -68, -81, 107, 90, 3, -24, -67, 12, -85, -81, 55, 2, 6, -30, -82, 9, -90, -4}, new byte[]{-117, -55, 96, -46, -113, 14, 34, 98}));
                            }
                        }
                        break;
                }
            }
        });
        this.f6232l.setOnClickListener(new View.OnClickListener(this) { // from class: m0.l2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2325m2 f6213c;

            {
                this.f6213c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C1421s3 c1421s3;
                switch (i12) {
                    case 0:
                        C2325m2 c2325m2 = this.f6213c;
                        String str = C2325m2.f6221m;
                        if (c2325m2.getParentFragment() instanceof C2194a) {
                            ((C2194a) c2325m2.getParentFragment()).dismiss();
                        } else if (c2325m2.getActivity() != null) {
                            c2325m2.getActivity().onBackPressed();
                        }
                        break;
                    case 1:
                        C2325m2 c2325m3 = this.f6213c;
                        String str2 = C2325m2.f6221m;
                        AbstractC3629g.m5804d(c2325m3.requireContext());
                        c2325m3.m3707t();
                        AbstractC3656k.m5877w(R.string.transport_started, c2325m3.requireContext());
                        break;
                    case 2:
                        C2325m2 c2325m4 = this.f6213c;
                        String str3 = C2325m2.f6221m;
                        Context contextRequireContext = c2325m4.requireContext();
                        CopyOnWriteArrayList copyOnWriteArrayList = AbstractC3629g.f10774a;
                        contextRequireContext.getApplicationContext().stopService(new Intent(contextRequireContext.getApplicationContext(), (Class<?>) TransportService.class));
                        c2325m4.m3707t();
                        AbstractC3656k.m5877w(R.string.transport_stopped, c2325m4.requireContext());
                        break;
                    case 3:
                        C2325m2 c2325m5 = this.f6213c;
                        c2325m5.f6228h.setText(String.format(Locale.US, AbstractC1387m.m2421h(new byte[]{-124, 16, 105, 58}, new byte[]{-95, 32, 80, 94, 17, -107, 36, 25}), Integer.valueOf(c2325m5.f6222b.nextInt(1000000000))));
                        break;
                    default:
                        C2325m2 c2325m6 = this.f6213c;
                        String strTrim = c2325m6.f6226f.getText().toString().trim();
                        String strTrim2 = c2325m6.f6228h.getText().toString().trim();
                        if (!c2325m6.f6225e.isChecked() && (strTrim.isEmpty() || !Patterns.IP_ADDRESS.matcher(strTrim).matches())) {
                            c2325m6.f6226f.setError(c2325m6.getString(R.string.transport_invalid_ip));
                        } else if (!AbstractC3635m.m5817b(strTrim2)) {
                            c2325m6.f6228h.setError(c2325m6.getString(R.string.transport_invalid_token));
                        } else {
                            String strValueOf = c2325m6.f6227g.getSelectedItemPosition() > 0 ? String.valueOf(c2325m6.f6227g.getSelectedItem()) : "";
                            Context contextRequireContext2 = c2325m6.requireContext();
                            boolean zIsChecked = c2325m6.f6225e.isChecked();
                            if (AbstractC3635m.m5819d(strTrim2).isEmpty() || AbstractC3635m.m5817b(strTrim2)) {
                                AbstractC3635m.m5818c(contextRequireContext2).edit().putBoolean(AbstractC3635m.f10799b, zIsChecked).putString(AbstractC3635m.f10800c, AbstractC3635m.m5819d(strTrim)).putInt(AbstractC3635m.f10801d, 8897).putString(AbstractC3635m.f10802e, strValueOf.trim()).putString(AbstractC3635m.f10803f, AbstractC3635m.m5819d(strTrim2)).apply();
                                AbstractC3636n.f10805a.set(false);
                                TransportService transportService = TransportService.f1663z;
                                if (transportService != null && (c1421s3 = transportService.f1674l) != null) {
                                    c1421s3.m2458e();
                                }
                                AbstractC3656k.m5877w(R.string.transport_settings_saved, c2325m6.requireContext());
                            } else {
                                C1929i.m3029k(AbstractC1387m.m2421h(new byte[]{-33, -69, 1, -68, -4, 126, 77, 16, -1, -23, 20, -67, -28, 107, 76, 66, -26, -68, 19, -90, -81, 109, 77, 12, -1, -88, 9, -68, -81, 107, 90, 3, -24, -67, 12, -85, -81, 55, 2, 6, -30, -82, 9, -90, -4}, new byte[]{-117, -55, 96, -46, -113, 14, 34, 98}));
                            }
                        }
                        break;
                }
            }
        });
        final int i13 = 3;
        viewInflate.findViewById(R.id.transportGenerateToken).setOnClickListener(new View.OnClickListener(this) { // from class: m0.l2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2325m2 f6213c;

            {
                this.f6213c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C1421s3 c1421s3;
                switch (i13) {
                    case 0:
                        C2325m2 c2325m2 = this.f6213c;
                        String str = C2325m2.f6221m;
                        if (c2325m2.getParentFragment() instanceof C2194a) {
                            ((C2194a) c2325m2.getParentFragment()).dismiss();
                        } else if (c2325m2.getActivity() != null) {
                            c2325m2.getActivity().onBackPressed();
                        }
                        break;
                    case 1:
                        C2325m2 c2325m3 = this.f6213c;
                        String str2 = C2325m2.f6221m;
                        AbstractC3629g.m5804d(c2325m3.requireContext());
                        c2325m3.m3707t();
                        AbstractC3656k.m5877w(R.string.transport_started, c2325m3.requireContext());
                        break;
                    case 2:
                        C2325m2 c2325m4 = this.f6213c;
                        String str3 = C2325m2.f6221m;
                        Context contextRequireContext = c2325m4.requireContext();
                        CopyOnWriteArrayList copyOnWriteArrayList = AbstractC3629g.f10774a;
                        contextRequireContext.getApplicationContext().stopService(new Intent(contextRequireContext.getApplicationContext(), (Class<?>) TransportService.class));
                        c2325m4.m3707t();
                        AbstractC3656k.m5877w(R.string.transport_stopped, c2325m4.requireContext());
                        break;
                    case 3:
                        C2325m2 c2325m5 = this.f6213c;
                        c2325m5.f6228h.setText(String.format(Locale.US, AbstractC1387m.m2421h(new byte[]{-124, 16, 105, 58}, new byte[]{-95, 32, 80, 94, 17, -107, 36, 25}), Integer.valueOf(c2325m5.f6222b.nextInt(1000000000))));
                        break;
                    default:
                        C2325m2 c2325m6 = this.f6213c;
                        String strTrim = c2325m6.f6226f.getText().toString().trim();
                        String strTrim2 = c2325m6.f6228h.getText().toString().trim();
                        if (!c2325m6.f6225e.isChecked() && (strTrim.isEmpty() || !Patterns.IP_ADDRESS.matcher(strTrim).matches())) {
                            c2325m6.f6226f.setError(c2325m6.getString(R.string.transport_invalid_ip));
                        } else if (!AbstractC3635m.m5817b(strTrim2)) {
                            c2325m6.f6228h.setError(c2325m6.getString(R.string.transport_invalid_token));
                        } else {
                            String strValueOf = c2325m6.f6227g.getSelectedItemPosition() > 0 ? String.valueOf(c2325m6.f6227g.getSelectedItem()) : "";
                            Context contextRequireContext2 = c2325m6.requireContext();
                            boolean zIsChecked = c2325m6.f6225e.isChecked();
                            if (AbstractC3635m.m5819d(strTrim2).isEmpty() || AbstractC3635m.m5817b(strTrim2)) {
                                AbstractC3635m.m5818c(contextRequireContext2).edit().putBoolean(AbstractC3635m.f10799b, zIsChecked).putString(AbstractC3635m.f10800c, AbstractC3635m.m5819d(strTrim)).putInt(AbstractC3635m.f10801d, 8897).putString(AbstractC3635m.f10802e, strValueOf.trim()).putString(AbstractC3635m.f10803f, AbstractC3635m.m5819d(strTrim2)).apply();
                                AbstractC3636n.f10805a.set(false);
                                TransportService transportService = TransportService.f1663z;
                                if (transportService != null && (c1421s3 = transportService.f1674l) != null) {
                                    c1421s3.m2458e();
                                }
                                AbstractC3656k.m5877w(R.string.transport_settings_saved, c2325m6.requireContext());
                            } else {
                                C1929i.m3029k(AbstractC1387m.m2421h(new byte[]{-33, -69, 1, -68, -4, 126, 77, 16, -1, -23, 20, -67, -28, 107, 76, 66, -26, -68, 19, -90, -81, 109, 77, 12, -1, -88, 9, -68, -81, 107, 90, 3, -24, -67, 12, -85, -81, 55, 2, 6, -30, -82, 9, -90, -4}, new byte[]{-117, -55, 96, -46, -113, 14, 34, 98}));
                            }
                        }
                        break;
                }
            }
        });
        final int i14 = 4;
        viewInflate.findViewById(R.id.transportSave).setOnClickListener(new View.OnClickListener(this) { // from class: m0.l2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2325m2 f6213c;

            {
                this.f6213c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C1421s3 c1421s3;
                switch (i14) {
                    case 0:
                        C2325m2 c2325m2 = this.f6213c;
                        String str = C2325m2.f6221m;
                        if (c2325m2.getParentFragment() instanceof C2194a) {
                            ((C2194a) c2325m2.getParentFragment()).dismiss();
                        } else if (c2325m2.getActivity() != null) {
                            c2325m2.getActivity().onBackPressed();
                        }
                        break;
                    case 1:
                        C2325m2 c2325m3 = this.f6213c;
                        String str2 = C2325m2.f6221m;
                        AbstractC3629g.m5804d(c2325m3.requireContext());
                        c2325m3.m3707t();
                        AbstractC3656k.m5877w(R.string.transport_started, c2325m3.requireContext());
                        break;
                    case 2:
                        C2325m2 c2325m4 = this.f6213c;
                        String str3 = C2325m2.f6221m;
                        Context contextRequireContext = c2325m4.requireContext();
                        CopyOnWriteArrayList copyOnWriteArrayList = AbstractC3629g.f10774a;
                        contextRequireContext.getApplicationContext().stopService(new Intent(contextRequireContext.getApplicationContext(), (Class<?>) TransportService.class));
                        c2325m4.m3707t();
                        AbstractC3656k.m5877w(R.string.transport_stopped, c2325m4.requireContext());
                        break;
                    case 3:
                        C2325m2 c2325m5 = this.f6213c;
                        c2325m5.f6228h.setText(String.format(Locale.US, AbstractC1387m.m2421h(new byte[]{-124, 16, 105, 58}, new byte[]{-95, 32, 80, 94, 17, -107, 36, 25}), Integer.valueOf(c2325m5.f6222b.nextInt(1000000000))));
                        break;
                    default:
                        C2325m2 c2325m6 = this.f6213c;
                        String strTrim = c2325m6.f6226f.getText().toString().trim();
                        String strTrim2 = c2325m6.f6228h.getText().toString().trim();
                        if (!c2325m6.f6225e.isChecked() && (strTrim.isEmpty() || !Patterns.IP_ADDRESS.matcher(strTrim).matches())) {
                            c2325m6.f6226f.setError(c2325m6.getString(R.string.transport_invalid_ip));
                        } else if (!AbstractC3635m.m5817b(strTrim2)) {
                            c2325m6.f6228h.setError(c2325m6.getString(R.string.transport_invalid_token));
                        } else {
                            String strValueOf = c2325m6.f6227g.getSelectedItemPosition() > 0 ? String.valueOf(c2325m6.f6227g.getSelectedItem()) : "";
                            Context contextRequireContext2 = c2325m6.requireContext();
                            boolean zIsChecked = c2325m6.f6225e.isChecked();
                            if (AbstractC3635m.m5819d(strTrim2).isEmpty() || AbstractC3635m.m5817b(strTrim2)) {
                                AbstractC3635m.m5818c(contextRequireContext2).edit().putBoolean(AbstractC3635m.f10799b, zIsChecked).putString(AbstractC3635m.f10800c, AbstractC3635m.m5819d(strTrim)).putInt(AbstractC3635m.f10801d, 8897).putString(AbstractC3635m.f10802e, strValueOf.trim()).putString(AbstractC3635m.f10803f, AbstractC3635m.m5819d(strTrim2)).apply();
                                AbstractC3636n.f10805a.set(false);
                                TransportService transportService = TransportService.f1663z;
                                if (transportService != null && (c1421s3 = transportService.f1674l) != null) {
                                    c1421s3.m2458e();
                                }
                                AbstractC3656k.m5877w(R.string.transport_settings_saved, c2325m6.requireContext());
                            } else {
                                C1929i.m3029k(AbstractC1387m.m2421h(new byte[]{-33, -69, 1, -68, -4, 126, 77, 16, -1, -23, 20, -67, -28, 107, 76, 66, -26, -68, 19, -90, -81, 109, 77, 12, -1, -88, 9, -68, -81, 107, 90, 3, -24, -67, 12, -85, -81, 55, 2, 6, -30, -82, 9, -90, -4}, new byte[]{-117, -55, 96, -46, -113, 14, 34, 98}));
                            }
                        }
                        break;
                }
            }
        });
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        this.f6223c.removeCallbacks(this.f6224d);
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        this.f6224d.run();
    }

    /* JADX INFO: renamed from: t */
    public final void m3707t() {
        if (this.f6230j == null || this.f6229i == null) {
            return;
        }
        CopyOnWriteArrayList copyOnWriteArrayList = AbstractC3629g.f10774a;
        boolean z9 = TransportService.f1660w.get();
        if (TransportService.f1661x.get()) {
            this.f6230j.setText(getString(R.string.transport_connected_via, TransportService.f1662y));
            this.f6229i.setBackgroundResource(R.drawable.mock_gps_status_online);
        } else {
            TextView textView = this.f6230j;
            if (z9) {
                textView.setText(R.string.transport_waiting_for_phone);
                this.f6229i.setBackgroundResource(R.drawable.mock_gps_status_waiting);
            } else {
                textView.setText(R.string.transport_not_started);
                this.f6229i.setBackgroundResource(R.drawable.mock_gps_status_offline);
            }
        }
        this.f6231k.setEnabled(!z9);
        this.f6232l.setEnabled(z9);
    }
}

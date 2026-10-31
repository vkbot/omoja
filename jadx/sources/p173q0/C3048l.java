package p173q0;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.fragment.app.FragmentTransaction;
import com.bumptech.glide.RunnableC1054m;
import com.example.navistart.MockGPS.MockGpsService;
import com.example.navistart.R;
import com.google.protobuf.AbstractC1178q;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p047e0.C1418s0;
import p050e3.C1461d;
import p121l0.C2194a;
import p121l0.C2195b;
import p132m0.C2325m2;

/* JADX INFO: renamed from: q0.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C3048l extends C2195b {

    /* JADX INFO: renamed from: d */
    public EditText f8572d;

    /* JADX INFO: renamed from: e */
    public EditText f8573e;

    /* JADX INFO: renamed from: f */
    public RadioGroup f8574f;

    /* JADX INFO: renamed from: g */
    public TextView f8575g;

    /* JADX INFO: renamed from: h */
    public TextView f8576h;

    /* JADX INFO: renamed from: i */
    public TextView f8577i;

    /* JADX INFO: renamed from: j */
    public TextView f8578j;

    /* JADX INFO: renamed from: k */
    public TextView f8579k;

    /* JADX INFO: renamed from: l */
    public TextView f8580l;

    /* JADX INFO: renamed from: m */
    public View f8581m;

    /* JADX INFO: renamed from: n */
    public View f8582n;

    /* JADX INFO: renamed from: o */
    public View f8583o;

    /* JADX INFO: renamed from: p */
    public View f8584p;

    /* JADX INFO: renamed from: q */
    public CheckBox f8585q;

    /* JADX INFO: renamed from: r */
    public TextView f8586r;

    /* JADX INFO: renamed from: s */
    public TextView f8587s;

    /* JADX INFO: renamed from: u */
    public String f8589u;

    /* JADX INFO: renamed from: v */
    public boolean f8590v;

    /* JADX INFO: renamed from: b */
    public final Handler f8570b = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: c */
    public final RunnableC1054m f8571c = new RunnableC1054m(26, this);

    /* JADX INFO: renamed from: t */
    public String f8588t = AbstractC1387m.m2421h(new byte[]{83, 63, 26, -58, 69, 11, -103, -73, 83}, new byte[]{35, 87, 117, -88, 32, 84, -8, -57});

    /* JADX INFO: renamed from: v */
    public static int m4872v(String str) {
        if (AbstractC1387m.m2421h(new byte[]{23, 88, -11, 4, -99, -17, 115, 35, 21, 90, -39, 50, -127, -7}, new byte[]{112, 40, -122, 91, -18, -118, 1, 85}).equals(str)) {
            return R.id.mockGpsSourceIosServer;
        }
        if (AbstractC1387m.m2421h(new byte[]{-88, 122, 55}, new byte[]{-35, 9, 85, 119, 93, -99, 62, -113}).equals(str)) {
            return R.id.mockGpsSourceUsb;
        }
        return AbstractC1387m.m2421h(new byte[]{38, -76, 58, 78, 44}, new byte[]{75, -37, 94, 43, 65, -34, -13, -48}).equals(str) ? R.id.mockGpsSourceModem : R.id.mockGpsSourcePhoneApp;
    }

    /* JADX INFO: renamed from: w */
    public static String m4873w(String str) {
        if (AbstractC1387m.m2421h(new byte[]{-55, 104, -111, -78, 50, -92, -85, -110, -55}, new byte[]{-71, 0, -2, -36, 87, -5, -54, -30}).equals(str)) {
            return AbstractC1387m.m2421h(new byte[]{31, -62, -69, -38, -99, 21, -75, -54, 31}, new byte[]{111, -86, -44, -76, -8, 74, -44, -70});
        }
        if (AbstractC1387m.m2421h(new byte[]{106, -33, 107, 4, 118, 120, -7, -81, 104, -35, 71, 50, 106, 110}, new byte[]{13, -81, 24, 91, 5, 29, -117, -39}).equals(str)) {
            return AbstractC1387m.m2421h(new byte[]{46, 1, -96, 90, 50, -93, -25, -4, 44, 3, -116, 108, 46, -75}, new byte[]{73, 113, -45, 5, 65, -58, -107, -118});
        }
        if (AbstractC1387m.m2421h(new byte[]{-46, 93, 16}, new byte[]{-89, 46, 114, -91, 81, 24, 48, -84}).equals(str)) {
            return AbstractC1387m.m2421h(new byte[]{81, 94, 105}, new byte[]{36, 45, 11, 109, 94, -122, -30, 59});
        }
        return AbstractC1387m.m2421h(new byte[]{-14, -89, 43, -115, 46}, new byte[]{-97, -56, 79, -24, 67, -30, -86, 124}).equals(str) ? AbstractC1387m.m2421h(new byte[]{-17, 22, 50, 23, -46}, new byte[]{-126, 121, 86, 114, -65, 73, -102, 92}) : AbstractC1387m.m2421h(new byte[]{-41, 87, ByteCompanionObject.MIN_VALUE, -30, -6, 58, 46, 12, -41}, new byte[]{-89, 63, -17, -116, -97, 101, 79, 124});
    }

    /* JADX INFO: renamed from: y */
    public static void m4874y(int i10, View view) {
        View viewFindViewById = view.findViewById(i10);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(0);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_mock_gps_test, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        this.f8570b.removeCallbacks(this.f8571c);
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        this.f8571c.run();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        MockGpsService.m1449b(requireContext());
        this.f8572d = (EditText) view.findViewById(R.id.mockGpsHost);
        this.f8573e = (EditText) view.findViewById(R.id.mockGpsPort);
        this.f8574f = (RadioGroup) view.findViewById(R.id.mockGpsSourceTabs);
        this.f8575g = (TextView) view.findViewById(R.id.mockGpsSourceDetails);
        this.f8576h = (TextView) view.findViewById(R.id.mockGpsServiceStatus);
        this.f8577i = (TextView) view.findViewById(R.id.mockGpsTargetStatus);
        this.f8578j = (TextView) view.findViewById(R.id.mockGpsConnectionStatus);
        this.f8579k = (TextView) view.findViewById(R.id.mockGpsSubstitutionStatus);
        this.f8580l = (TextView) view.findViewById(R.id.mockGpsPacketStatus);
        this.f8581m = view.findViewById(R.id.mockGpsConnectionIndicator);
        this.f8582n = view.findViewById(R.id.mockGpsSubstitutionIndicator);
        this.f8583o = view.findViewById(R.id.mockGpsTransportContainer);
        this.f8584p = view.findViewById(R.id.mockGpsIosAppBlock);
        this.f8585q = (CheckBox) view.findViewById(R.id.mockGpsAutoFallback);
        this.f8586r = (TextView) view.findViewById(R.id.mockGpsSystemSatellites);
        this.f8587s = (TextView) view.findViewById(R.id.mockGpsSystemGnssAge);
        ImageView imageView = (ImageView) view.findViewById(R.id.mockGpsIosAppQr);
        Bitmap bitmapM2509h = C1461d.m2509h(360, getString(R.string.mock_gps_ios_app_url));
        if (bitmapM2509h != null) {
            imageView.setImageBitmap(bitmapM2509h);
        }
        m4874y(R.id.mockGpsSourcePhoneApp, view);
        m4874y(R.id.mockGpsSourceIosServer, view);
        m4874y(R.id.mockGpsSourceUsb, view);
        m4874y(R.id.mockGpsSourceModem, view);
        final int i10 = 1;
        if (getChildFragmentManager().findFragmentByTag(AbstractC1387m.m2421h(new byte[]{85, 40, 37, 73, -11, 51, 8, 48, 85, 5, 55, 66, -14, 55, 14, 44, 70, 41}, new byte[]{33, 90, 68, 39, -122, 67, 103, 66})) == null) {
            FragmentTransaction fragmentTransactionBeginTransaction = getChildFragmentManager().beginTransaction();
            C2325m2 c2325m2 = new C2325m2();
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean(C2325m2.f6221m, true);
            c2325m2.setArguments(bundle2);
            fragmentTransactionBeginTransaction.replace(R.id.mockGpsTransportContainer, c2325m2, AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, 11, -83, 119, 68, 88, 57, -40, ByteCompanionObject.MIN_VALUE, 38, -65, 124, 67, 92, 63, -60, -109, 10}, new byte[]{-12, 121, -52, 25, 55, 40, 86, -86})).commit();
        }
        C3043g c3043g = MockGpsService.f1425t.get() ? new C3043g(MockGpsService.f1428w, MockGpsService.f1429x, MockGpsService.f1430y) : MockGpsService.m1451d(requireContext());
        String strM4873w = m4873w(c3043g.f8558b);
        this.f8588t = strM4873w;
        this.f8574f.check(m4872v(strM4873w));
        m4876u(true);
        m4875t(c3043g);
        final int i11 = 0;
        this.f8574f.setOnCheckedChangeListener(new C3045i(0, this));
        this.f8585q.setOnCheckedChangeListener(new C1418s0(8, this));
        Button button = (Button) view.findViewById(R.id.mockGpsStartButton);
        Button button2 = (Button) view.findViewById(R.id.mockGpsStopButton);
        Button button3 = (Button) view.findViewById(R.id.mockGpsCloseButton);
        button.setOnClickListener(new View.OnClickListener(this) { // from class: q0.j

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C3048l f8564c;

            {
                this.f8564c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                switch (i11) {
                    case 0:
                        C3048l c3048l = this.f8564c;
                        Context contextRequireContext = c3048l.requireContext();
                        String str = c3048l.f8588t;
                        String string = c3048l.f8572d.getText().toString();
                        int iM4877x = c3048l.m4877x();
                        c3048l.f8585q.isChecked();
                        MockGpsService.m1458n(contextRequireContext, iM4877x, str, string);
                        c3048l.m4878z();
                        break;
                    case 1:
                        C3048l c3048l2 = this.f8564c;
                        Context contextRequireContext2 = c3048l2.requireContext();
                        MockGpsService.m1449b(contextRequireContext2);
                        contextRequireContext2.stopService(new Intent(contextRequireContext2, (Class<?>) MockGpsService.class));
                        c3048l2.m4878z();
                        break;
                    default:
                        C3048l c3048l3 = this.f8564c;
                        if (c3048l3.getParentFragment() instanceof C2194a) {
                            ((C2194a) c3048l3.getParentFragment()).dismiss();
                        }
                        break;
                }
            }
        });
        button2.setOnClickListener(new View.OnClickListener(this) { // from class: q0.j

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C3048l f8564c;

            {
                this.f8564c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                switch (i10) {
                    case 0:
                        C3048l c3048l = this.f8564c;
                        Context contextRequireContext = c3048l.requireContext();
                        String str = c3048l.f8588t;
                        String string = c3048l.f8572d.getText().toString();
                        int iM4877x = c3048l.m4877x();
                        c3048l.f8585q.isChecked();
                        MockGpsService.m1458n(contextRequireContext, iM4877x, str, string);
                        c3048l.m4878z();
                        break;
                    case 1:
                        C3048l c3048l2 = this.f8564c;
                        Context contextRequireContext2 = c3048l2.requireContext();
                        MockGpsService.m1449b(contextRequireContext2);
                        contextRequireContext2.stopService(new Intent(contextRequireContext2, (Class<?>) MockGpsService.class));
                        c3048l2.m4878z();
                        break;
                    default:
                        C3048l c3048l3 = this.f8564c;
                        if (c3048l3.getParentFragment() instanceof C2194a) {
                            ((C2194a) c3048l3.getParentFragment()).dismiss();
                        }
                        break;
                }
            }
        });
        final int i12 = 2;
        button3.setOnClickListener(new View.OnClickListener(this) { // from class: q0.j

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C3048l f8564c;

            {
                this.f8564c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                switch (i12) {
                    case 0:
                        C3048l c3048l = this.f8564c;
                        Context contextRequireContext = c3048l.requireContext();
                        String str = c3048l.f8588t;
                        String string = c3048l.f8572d.getText().toString();
                        int iM4877x = c3048l.m4877x();
                        c3048l.f8585q.isChecked();
                        MockGpsService.m1458n(contextRequireContext, iM4877x, str, string);
                        c3048l.m4878z();
                        break;
                    case 1:
                        C3048l c3048l2 = this.f8564c;
                        Context contextRequireContext2 = c3048l2.requireContext();
                        MockGpsService.m1449b(contextRequireContext2);
                        contextRequireContext2.stopService(new Intent(contextRequireContext2, (Class<?>) MockGpsService.class));
                        c3048l2.m4878z();
                        break;
                    default:
                        C3048l c3048l3 = this.f8564c;
                        if (c3048l3.getParentFragment() instanceof C2194a) {
                            ((C2194a) c3048l3.getParentFragment()).dismiss();
                        }
                        break;
                }
            }
        });
        m4878z();
    }

    /* JADX INFO: renamed from: t */
    public final void m4875t(C3043g c3043g) {
        int i10 = c3043g.f8560d;
        String str = c3043g.f8559c;
        StringBuilder sb = new StringBuilder();
        sb.append(c3043g.f8558b);
        sb.append(AbstractC1387m.m2421h(new byte[]{-115}, new byte[]{-15, -7, 72, -89, 102, 113, 18, -10}));
        sb.append(str == null ? "" : str);
        AbstractC1178q.m2086t(new byte[]{89}, new byte[]{37, 81, -91, -33, -74, -57, -89, -51}, sb, i10);
        sb.append(AbstractC1387m.m2421h(new byte[]{117}, new byte[]{9, 69, -107, 119, -76, 101, 69, -99}));
        sb.append(false);
        String string = sb.toString();
        if (string.equals(this.f8589u)) {
            return;
        }
        EditText editText = this.f8572d;
        if (str == null) {
            str = "";
        }
        editText.setText(str);
        this.f8573e.setText(String.valueOf(i10));
        this.f8590v = true;
        this.f8585q.setChecked(false);
        this.f8590v = false;
        this.f8589u = string;
    }

    /* JADX INFO: renamed from: u */
    public final void m4876u(boolean z9) {
        C3047k c3047k;
        String str = this.f8588t;
        if (AbstractC1387m.m2421h(new byte[]{49, 75, 95, -57, -50, 10, 79, -10, 51, 73, 115, -15, -46, 28}, new byte[]{86, 59, 44, -104, -67, 111, Base64.padSymbol, ByteCompanionObject.MIN_VALUE}).equals(str)) {
            c3047k = new C3047k(8887, getString(R.string.mock_gps_ios_details), getString(R.string.mock_gps_hint_ios_ip), getString(R.string.mock_gps_hint_ios_port), true);
        } else if (AbstractC1387m.m2421h(new byte[]{123, -86, 49}, new byte[]{14, -39, 83, -80, 64, -115, 53, 120}).equals(str)) {
            c3047k = new C3047k(460800, getString(R.string.mock_gps_usb_details), getString(R.string.mock_gps_hint_usb_device_auto), getString(R.string.mock_gps_hint_usb_speed), false);
        } else {
            c3047k = AbstractC1387m.m2421h(new byte[]{26, 49, 3, -7, -102}, new byte[]{119, 94, 103, -100, -9, -67, -6, -11}).equals(str) ? new C3047k(11010, getString(R.string.mock_gps_modem_details), getString(R.string.mock_gps_hint_modem_ip), getString(R.string.mock_gps_hint_modem_port), true) : new C3047k(8887, getString(R.string.mock_gps_phone_details), getString(R.string.mock_gps_hint_access_point_ip), getString(R.string.mock_gps_hint_phone_port), true);
        }
        this.f8575g.setText(c3047k.f8565a);
        this.f8572d.setHint(c3047k.f8566b);
        this.f8572d.setEnabled(c3047k.f8569e);
        this.f8573e.setHint(c3047k.f8567c);
        String strTrim = this.f8573e.getText().toString().trim();
        if (!z9) {
            this.f8572d.setText("");
        }
        if (!z9 || strTrim.isEmpty()) {
            this.f8573e.setText(String.valueOf(c3047k.f8568d));
        }
        boolean zEquals = AbstractC1387m.m2421h(new byte[]{12, -100, 66, -12, -94, 40, 30, -88, 12}, new byte[]{124, -12, 45, -102, -57, 119, ByteCompanionObject.MAX_VALUE, -40}).equals(this.f8588t);
        this.f8583o.setVisibility(zEquals ? 0 : 8);
        this.f8584p.setVisibility(AbstractC1387m.m2421h(new byte[]{-60, -93, -73, 71, -44, 104, -72, -77, -58, -95, -101, 113, -56, 126}, new byte[]{-93, -45, -60, 24, -89, 13, -54, -59}).equals(this.f8588t) ? 0 : 8);
        this.f8585q.setVisibility(8);
        this.f8586r.setVisibility(8);
        this.f8587s.setVisibility(8);
        this.f8572d.setVisibility(zEquals ? 8 : 0);
        this.f8573e.setVisibility(zEquals ? 8 : 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0058, code lost:
    
        if (r3 <= 65535) goto L19;
     */
    /* JADX INFO: renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int m4877x() {
        /*
            Method dump skipped, instruction units count: 246
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p173q0.C3048l.m4877x():int");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00b2  */
    /* JADX INFO: renamed from: z */
    public final void m4878z() {
        String string;
        int i10;
        boolean z9 = MockGpsService.f1425t.get();
        boolean z10 = MockGpsService.f1426u.get();
        AtomicBoolean atomicBoolean = MockGpsService.f1427v;
        boolean z11 = atomicBoolean.get();
        if (z9) {
            C3043g c3043g = new C3043g(MockGpsService.f1428w, MockGpsService.f1429x, MockGpsService.f1430y);
            String strM4873w = m4873w(c3043g.f8558b);
            this.f8588t = strM4873w;
            int iM4872v = m4872v(strM4873w);
            if (this.f8574f.getCheckedRadioButtonId() != iM4872v) {
                this.f8574f.check(iM4872v);
            }
            m4876u(true);
            m4875t(c3043g);
        }
        this.f8576h.setText(getString(z9 ? R.string.mock_gps_service_running : R.string.mock_gps_service_stopped));
        this.f8577i.setText(getString(R.string.mock_gps_address_value, MockGpsService.f1405C));
        this.f8578j.setText(getString(R.string.mock_gps_connection_value, MockGpsService.f1404B));
        TextView textView = this.f8579k;
        if (!atomicBoolean.get() || MockGpsService.f1410H <= 0) {
            string = MockGpsService.f1407E;
        } else {
            Object[] objArr = {MockGpsService.f1403A, Long.valueOf(Math.max(0L, (System.currentTimeMillis() - MockGpsService.f1410H) / 1000))};
            Context context = MockGpsService.f1408F;
            string = context == null ? "" : context.getString(R.string.mock_gps_mock_active_age, objArr);
            if (string.isEmpty()) {
                string = MockGpsService.f1407E;
            }
        }
        textView.setText(string);
        this.f8580l.setText(getString(R.string.mock_gps_last_packet_value, MockGpsService.f1406D));
        View view = this.f8581m;
        int i11 = R.drawable.mock_gps_status_offline;
        if (z10) {
            i10 = R.drawable.mock_gps_status_online;
        } else {
            i10 = z9 ? R.drawable.mock_gps_status_waiting : R.drawable.mock_gps_status_offline;
        }
        view.setBackgroundResource(i10);
        View view2 = this.f8582n;
        if (z11) {
            i11 = R.drawable.mock_gps_status_online;
        } else if (z10) {
            i11 = R.drawable.mock_gps_status_waiting;
        }
        view2.setBackgroundResource(i11);
        int i12 = C3055s.f8647l;
        long j10 = C3055s.f8648m;
        long jMax = j10 <= 0 ? -1L : Math.max(0L, (SystemClock.elapsedRealtime() - j10) / 1000);
        this.f8586r.setText(getString(R.string.mock_gps_system_satellites_value, Integer.valueOf(i12)));
        this.f8587s.setText(jMax < 0 ? getString(R.string.mock_gps_system_gnss_waiting) : getString(R.string.mock_gps_system_gnss_age, Long.valueOf(jMax)));
    }
}

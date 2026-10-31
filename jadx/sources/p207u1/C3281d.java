package p207u1;

import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.content.Intent;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.display.DisplayManager;
import android.os.Bundle;
import android.os.Debug;
import android.os.Environment;
import android.os.StatFs;
import android.text.InputFilter;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Switch;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import com.bumptech.glide.AbstractC1031d;
import com.example.navistart.BlackActivity;
import com.example.navistart.R;
import com.example.navistart.cores.ColorText;
import com.google.protobuf.AbstractC1178q;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Locale;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p047e0.C1418s0;
import p047e0.C1445y2;
import p047e0.ViewOnClickListenerC1399o1;
import p078h0.C1652b;
import p109k0.C2026b;
import p132m0.C2378z1;
import p206u0.C3277a;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: u1.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C3281d extends Fragment {
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.test_fragment, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        Switch r9 = (Switch) view.findViewById(R.id.spi_all_off);
        final int i10 = 0;
        r9.setChecked(C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-40, -72, 37, -32, 22, 112, 63, -12, -60, -82, 42, -32, 7, 115, 63, -59}, new byte[]{-85, -56, 76, -65, 119, 28, 83, -85}), false));
        r9.setOnCheckedChangeListener(new C1418s0(9, this));
        Switch r10 = (Switch) view.findViewById(R.id.spi_JCTProxy);
        C3277a c3277aM2745o = C1652b.m2745o();
        String strM2421h = AbstractC1387m.m2421h(new byte[]{-20, 73, 126, -56, 83, 97, -64, -36, -20, 73, 126, -42, 75, 97, -61, -15, -53, 109, 109, -43, 95, 71}, new byte[]{-97, Base64.padSymbol, 31, -70, 39, 62, -119, -78});
        C1652b.m2734a();
        r10.setChecked(c3277aM2745o.loadBoolean(strM2421h, C1652b.m2738g().mo3015c()));
        final int i11 = 1;
        r10.setOnCheckedChangeListener(new C2378z1(1));
        Button button = (Button) view.findViewById(R.id.bhudon);
        Button button2 = (Button) view.findViewById(R.id.bhudoff);
        final int i12 = 3;
        button.setOnClickListener(new ViewOnClickListenerC1399o1(3));
        button2.setOnClickListener(new ViewOnClickListenerC1399o1(4));
        final EditText editText = (EditText) view.findViewById(R.id.editTextNumber3);
        ((Button) view.findViewById(R.id.button24)).setOnClickListener(new View.OnClickListener(this) { // from class: u1.b

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C3281d f9616c;

            {
                this.f9616c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i13 = i10;
                EditText editText2 = editText;
                C3281d c3281d = this.f9616c;
                switch (i13) {
                    case 0:
                        Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{56, -43, -23, 116, 7, -48, -32, -3, 38, -45, -23, 122, 7, -43, -9, -26, Base64.padSymbol, -33, -1, 105, 6, -48, -14, -9, 56, -45, -23, 100, 26, -44, -8, -16}, new byte[]{121, ByteCompanionObject.MIN_VALUE, -67, 59, 73, -111, -74, -76}));
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-47, -106, -56, -21, -21, 49, -5, 36}, new byte[]{-102, -45, -111, -76, -65, 104, -85, 97}), 10019);
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{103, -107, 99, 54, Base64.padSymbol, -8, -44, -43, 99, -103, 114}, new byte[]{34, -51, 55, 100, 124, -89, -121, -127}), Integer.parseInt(editText2.getText().toString()));
                        AbstractC3656k.m5872r(c3281d.requireContext(), intent);
                        C1652b.m2734a();
                        C1652b.m2744n().DisplayAreaOpen(Integer.parseInt(editText2.getText().toString()));
                        break;
                    default:
                        int i14 = Integer.parseInt(editText2.getText().toString());
                        Display[] displays = ((DisplayManager) c3281d.requireContext().getSystemService(AbstractC1387m.m2421h(new byte[]{36, 16, 26, -120, 43, 126, 7}, new byte[]{64, 121, 105, -8, 71, 31, 126, 48}))).getDisplays();
                        if (i14 >= displays.length) {
                            AbstractC3656k.m5878x(c3281d.requireContext(), AbstractC1387m.m2421h(new byte[]{-66, 56, -48, 11, Base64.padSymbol, -119, 75, -27, -111, 46}, new byte[]{-16, 87, -16, 79, 84, -6, 59, -119}));
                        } else {
                            AbstractC3656k.m5875u(c3281d.requireContext(), new Intent(c3281d.requireContext(), (Class<?>) BlackActivity.class).addFlags(268435456), ActivityOptions.makeBasic().setLaunchDisplayId(displays[i14].getDisplayId()).toBundle());
                        }
                        break;
                }
            }
        });
        final EditText editText2 = (EditText) view.findViewById(R.id.editTextNumber2);
        ((Button) view.findViewById(R.id.button13)).setOnClickListener(new View.OnClickListener(this) { // from class: u1.b

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C3281d f9616c;

            {
                this.f9616c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i13 = i11;
                EditText editText3 = editText2;
                C3281d c3281d = this.f9616c;
                switch (i13) {
                    case 0:
                        Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{56, -43, -23, 116, 7, -48, -32, -3, 38, -45, -23, 122, 7, -43, -9, -26, Base64.padSymbol, -33, -1, 105, 6, -48, -14, -9, 56, -45, -23, 100, 26, -44, -8, -16}, new byte[]{121, ByteCompanionObject.MIN_VALUE, -67, 59, 73, -111, -74, -76}));
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-47, -106, -56, -21, -21, 49, -5, 36}, new byte[]{-102, -45, -111, -76, -65, 104, -85, 97}), 10019);
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{103, -107, 99, 54, Base64.padSymbol, -8, -44, -43, 99, -103, 114}, new byte[]{34, -51, 55, 100, 124, -89, -121, -127}), Integer.parseInt(editText3.getText().toString()));
                        AbstractC3656k.m5872r(c3281d.requireContext(), intent);
                        C1652b.m2734a();
                        C1652b.m2744n().DisplayAreaOpen(Integer.parseInt(editText3.getText().toString()));
                        break;
                    default:
                        int i14 = Integer.parseInt(editText3.getText().toString());
                        Display[] displays = ((DisplayManager) c3281d.requireContext().getSystemService(AbstractC1387m.m2421h(new byte[]{36, 16, 26, -120, 43, 126, 7}, new byte[]{64, 121, 105, -8, 71, 31, 126, 48}))).getDisplays();
                        if (i14 >= displays.length) {
                            AbstractC3656k.m5878x(c3281d.requireContext(), AbstractC1387m.m2421h(new byte[]{-66, 56, -48, 11, Base64.padSymbol, -119, 75, -27, -111, 46}, new byte[]{-16, 87, -16, 79, 84, -6, 59, -119}));
                        } else {
                            AbstractC3656k.m5875u(c3281d.requireContext(), new Intent(c3281d.requireContext(), (Class<?>) BlackActivity.class).addFlags(268435456), ActivityOptions.makeBasic().setLaunchDisplayId(displays[i14].getDisplayId()).toBundle());
                        }
                        break;
                }
            }
        });
        final int i13 = 2;
        ((Button) view.findViewById(R.id.MemInfo)).setOnClickListener(new View.OnClickListener(this) { // from class: u1.a

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C3281d f9614c;

            {
                this.f9614c = this;
            }

            /* JADX INFO: renamed from: a */
            private final void m5216a(View view2) {
                long j10;
                long totalBytes;
                long availableBytes;
                ActivityManager activityManager = (ActivityManager) this.f9614c.requireContext().getSystemService(AbstractC1387m.m2421h(new byte[]{78, -95, 2, 20, 68, -47, 100, 26}, new byte[]{47, -62, 118, 125, 50, -72, 16, 99}));
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                activityManager.getMemoryInfo(memoryInfo);
                long j11 = memoryInfo.totalMem;
                long j12 = memoryInfo.availMem;
                long j13 = j11 - j12;
                boolean z9 = memoryInfo.lowMemory;
                StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
                long totalBytes2 = statFs.getTotalBytes();
                long availableBytes2 = statFs.getAvailableBytes();
                if (Environment.getExternalStorageState().equals(AbstractC1387m.m2421h(new byte[]{122, 87, 98, 85, 118, -54, -55}, new byte[]{23, 56, 23, 59, 2, -81, -83, -97}))) {
                    j10 = 0;
                    StatFs statFs2 = new StatFs(Environment.getExternalStorageDirectory().getPath());
                    totalBytes = statFs2.getTotalBytes();
                    availableBytes = statFs2.getAvailableBytes();
                } else {
                    j10 = 0;
                    totalBytes = 0;
                    availableBytes = 0;
                }
                Debug.MemoryInfo memoryInfo2 = new Debug.MemoryInfo();
                Debug.getMemoryInfo(memoryInfo2);
                long totalPss = ((long) memoryInfo2.getTotalPss()) * 1024;
                long nativeHeapSize = Debug.getNativeHeapSize();
                long j14 = Runtime.getRuntime().totalMemory();
                StringBuilder sb = new StringBuilder();
                sb.append(AbstractC1387m.m2421h(new byte[]{100, -51, -112, -68, -30, -21, -15, -29, 43, -119, -115, -43, -63, -24, -13, -2, 52, -111, -39, -11, -64, -32, -68, -79, 100, -51, -89, -106}, new byte[]{89, -16, -83, -100, -81, -114, -100, -116}));
                sb.append(AbstractC1387m.m2421h(new byte[]{-117, -100, 95, 33, -119}, new byte[]{-39, -35, 18, 27, -125, -100, 123, 92}));
                Locale locale = Locale.US;
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{39, -23, 87, 5, -11, -71, 87, -108, 39, -20, 112, 96}, new byte[]{7, -55, 3, 106, -127, -40, 59, -82}), AbstractC1031d.m1277g(j11)));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{83, 27, -62, 50, 47, -120, 83, -92, 86, 72, -99}, new byte[]{115, 59, -105, 65, 74, -20, 105, -124}), AbstractC1031d.m1277g(j13)));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{-107, -40, -60, -98, -93, -56, -42, 15, -41, -108, -32, -46, -30, -124, -55, 100}, new byte[]{-75, -8, -123, -24, -62, -95, -70, 110}), AbstractC1031d.m1277g(j12)));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{71, 53, -60, 113, -107, 28, -67, Base64.padSymbol, 71, 48, -65, 51, -110, 94, -3, 13}, new byte[]{103, 21, -111, 2, -12, 123, -40, 7}), Double.valueOf((j13 / j11) * 100.0d)));
                sb.append(AbstractC1387m.m2421h(new byte[]{8, -20, 48, -3, 111, -15, 41, -54, 69, -93, 14, -21, 34, -15}, new byte[]{40, -52, 124, -110, 24, -47, 100, -81}));
                sb.append(z9);
                sb.append("\n\n");
                sb.append(AbstractC1387m.m2421h(new byte[]{103, -33, 23, 71, -7, 53, -30, 12, 14, -30, 23, 77, -7, 58, -28, 5, 20, -69}, new byte[]{46, -79, 99, 34, -117, 91, -125, 96}));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{67, 69, 83, 64, -1, -126, -75, 62, 67, 64, 116, 37}, new byte[]{99, 101, 7, 47, -117, -29, -39, 4}), AbstractC1031d.m1277g(totalBytes2)));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{90, 82, -11, -111, -9, 36, 97, -67, 24, 30, -47, -35, -74, 104, 126, -42}, new byte[]{122, 114, -76, -25, -106, 77, 13, -36}), AbstractC1031d.m1277g(availableBytes2)));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{67, 26, -97, 89, 105, -44, 3, 16, 67, 31, -28, 27, 110, -106, 67, 32}, new byte[]{99, 58, -54, 42, 8, -77, 102, 42}), Double.valueOf(((totalBytes2 - availableBytes2) / totalBytes2) * 100.0d)));
                sb.append("\n");
                if (totalBytes > j10) {
                    sb.append(AbstractC1387m.m2421h(new byte[]{88, -22, -47, -3, 32, -48, -68, -45, Base64.padSymbol, -63, -47, -9, 32, -33, -70, -38, Base64.padSymbol, -70, -10, -36, 114, -3, -68, -51, 121, -69, -97, -110}, new byte[]{29, -110, -91, -104, 82, -66, -35, -65}));
                    sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{-13, 35, 75, 50, 12, 56, -96, -45, -13, 38, 108, 87}, new byte[]{-45, 3, 31, 93, 120, 89, -52, -23}), AbstractC1031d.m1277g(totalBytes)));
                    sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{-118, 120, 101, -101, -77, 67, 99, -94, -56, 52, 65, -41, -14, 15, 124, -55}, new byte[]{-86, 88, 36, -19, -46, 42, 15, -61}), AbstractC1031d.m1277g(availableBytes)));
                    sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{112, 30, 1, Base64.padSymbol, -33, -13, 58, -13, 112, 27, 122, ByteCompanionObject.MAX_VALUE, -40, -79, 122, -61}, new byte[]{80, 62, 84, 78, -66, -108, 95, -55}), Double.valueOf(((totalBytes - availableBytes) / totalBytes) * 100.0d)));
                    sb.append("\n");
                }
                sb.append(AbstractC1387m.m2421h(new byte[]{58, -105, 19, -10, 105, -49, 34, 27, 41, -112, 14, -25, 105, -46, 37, 1, 115}, new byte[]{121, -30, 97, -124, 12, -95, 86, 59}));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{-103, -80, -97, 116, -41, -79, -90, 112, -125, -80, -9, 98, -80}, new byte[]{-71, -112, -46, 17, -70, -34, -44, 9}), AbstractC1031d.m1277g(totalPss)));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{-5, -6, 87, -13, 32, -17, -5, -64, -5, -110, 124, -13, 36, -68, -83, ByteCompanionObject.MIN_VALUE, -88, -48}, new byte[]{-37, -38, 25, -110, 84, -122, -115, -91}), AbstractC1031d.m1277g(nativeHeapSize)));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{66, -53, 87, -80, -29, -52, 109, -2, 66, -93, 118, -80, -1, ByteCompanionObject.MIN_VALUE, 36, -80, 17, -31}, new byte[]{98, -21, 19, -47, -113, -70, 4, -107}), AbstractC1031d.m1277g(j14)));
                C1652b.m2750v(sb.toString());
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                String strM2421h2;
                int i14;
                String strM2421h3;
                int i15 = 2;
                switch (i13) {
                    case 0:
                        DisplayManager displayManager = (DisplayManager) this.f9614c.requireContext().getSystemService(AbstractC1387m.m2421h(new byte[]{-109, -89, -109, 118, 27, -48, 88}, new byte[]{-9, -50, -32, 6, 119, -79, 33, 13}));
                        if (displayManager == null) {
                            C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-16, 31, -64, 49, -52, 84, 80, -119, -43, 24, -46, 38, -59, 71, 9, -7, -119, 86, -35, 52, -52, 89}, new byte[]{-76, 118, -77, 65, -96, 53, 41, -60}), ColorText.RED);
                        } else {
                            Display[] displays = displayManager.getDisplays();
                            String strM2421h4 = AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE, -124, -48, 34, 42, 72, 87, 31, ByteCompanionObject.MAX_VALUE, -124, -51, 91, 94, 38, 58, 110, 3, -32, -51, 83, 94, 38, 62, 2, ByteCompanionObject.MAX_VALUE, -124, -48, 34, 42, 72, 87, 31, ByteCompanionObject.MAX_VALUE, -124}, new byte[]{66, -71, -19, 31, 23, 117, 106, 34});
                            ColorText colorText = ColorText.RED;
                            C1652b.m2751w(strM2421h4, colorText);
                            C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-120, -127, 91, 18, ByteCompanionObject.MAX_VALUE, 59, -76, 71, -81, -98, 67, 18, 106, 104, -22, 14}, new byte[]{-36, -18, 47, 115, 19, 27, -48, 46}) + displays.length, colorText);
                            int i16 = 0;
                            while (i16 < displays.length) {
                                Display display = displays[i16];
                                DisplayMetrics displayMetrics = new DisplayMetrics();
                                display.getMetrics(displayMetrics);
                                DisplayMetrics displayMetrics2 = new DisplayMetrics();
                                display.getRealMetrics(displayMetrics2);
                                Point point = new Point();
                                display.getSize(point);
                                Point point2 = new Point();
                                display.getRealSize(point2);
                                StringBuilder sb = new StringBuilder();
                                AbstractC1178q.m2086t(new byte[]{121, -125, -105, 45, 104, 115, 83, -77, 39, -34, -42, 97, 60, 115, 52}, new byte[]{84, -82, -70, 0, 69, 83, 23, -38}, sb, i16);
                                String strM2075i = AbstractC1178q.m2075i(new byte[]{-105, -96, -69, 56, -97, 41}, new byte[]{-73, -115, -106, 21, -78, 4, -88, 10}, sb);
                                ColorText colorText2 = ColorText.RED;
                                C1652b.m2751w(strM2075i, colorText2);
                                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{14, -56, -109, 60, -3, 42, -78, -79, 71, -116, -109, 60, -3, 55, -78}, new byte[]{103, -84, -77, 28, -35, 10, -110, -111}) + display.getDisplayId(), colorText2);
                                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{22, 98, -109, 93, 84, 34, -74, 47, 88, 35, -34, 24, 84, 63, -74}, new byte[]{120, 3, -2, 56, 116, 2, -106, 15}) + display.getName(), colorText2);
                                String strM2421h5 = AbstractC1387m.m2421h(new byte[]{-55, 124, 57, 74, 70, -17, -54, 90, -102, 40, 120, 30, 3, -14, -54}, new byte[]{-70, 8, 88, 62, 35, -49, -22, 122});
                                int state = display.getState();
                                if (state == 1) {
                                    strM2421h2 = AbstractC1387m.m2421h(new byte[]{-63, 73, 123}, new byte[]{-114, 15, Base64.padSymbol, 37, 117, 118, -117, -79});
                                } else if (state == i15) {
                                    byte[] bArr = new byte[i15];
                                    // fill-array-data instruction
                                    bArr[0] = -79;
                                    bArr[1] = 113;
                                    strM2421h2 = AbstractC1387m.m2421h(bArr, new byte[]{-2, 63, -126, -38, 53, -59, 12, 75});
                                } else if (state == 3) {
                                    strM2421h2 = AbstractC1387m.m2421h(new byte[]{-33, -89, -116, 8}, new byte[]{-101, -24, -42, 77, -117, -90, -45, -117});
                                } else if (state != 4) {
                                    StringBuilder sb2 = new StringBuilder();
                                    AbstractC1178q.m2086t(new byte[]{55, 105, -34, -32, -50, -67, 39, 12}, new byte[]{98, 39, -107, -82, -127, -22, 105, 36}, sb2, state);
                                    strM2421h2 = AbstractC1178q.m2075i(new byte[]{51}, new byte[]{26, -39, 97, -78, -27, 107, 59, -87}, sb2);
                                } else {
                                    strM2421h2 = AbstractC1387m.m2421h(new byte[]{-29, -49, -65, -51, 25, 66, 11, 116, -9, -59, -85, -52}, new byte[]{-89, ByteCompanionObject.MIN_VALUE, -27, -120, 70, 17, 94, 39});
                                }
                                C1652b.m2751w(strM2421h5.concat(strM2421h2), colorText2);
                                String strM2421h6 = AbstractC1387m.m2421h(new byte[]{-16, 67, 13, -40, 32, 64, 107, 6, -94, 12, 89, -103, 116, 20, 36}, new byte[]{-126, 44, 121, -71, 84, 41, 4, 104});
                                int rotation = display.getRotation();
                                if (rotation == 0) {
                                    i14 = 2;
                                    strM2421h3 = AbstractC1387m.m2421h(new byte[]{46, -1, -32, 121, 110, 125, 114, 13, 35, ByteCompanionObject.MIN_VALUE}, new byte[]{124, -80, -76, 56, 58, 52, Base64.padSymbol, 67});
                                } else if (rotation != 1) {
                                    i14 = 2;
                                    if (rotation == 2) {
                                        strM2421h3 = AbstractC1387m.m2421h(new byte[]{-117, 35, -28, 5, -74, 7, -3, -66, -122, 93, -120, 116}, new byte[]{-39, 108, -80, 68, -30, 78, -78, -16});
                                    } else if (rotation != 3) {
                                        StringBuilder sb3 = new StringBuilder();
                                        AbstractC1178q.m2086t(new byte[]{49, 20, -2, -96, -51, -57, -30, -87}, new byte[]{100, 90, -75, -18, -126, -112, -84, -127}, sb3, rotation);
                                        strM2421h3 = AbstractC1178q.m2075i(new byte[]{20}, new byte[]{Base64.padSymbol, 90, -102, 45, 75, 31, 54, -56}, sb3);
                                    } else {
                                        strM2421h3 = AbstractC1387m.m2421h(new byte[]{-110, 93, 89, -58, -26, 27, 69, -84, -97, 32, 58, -73}, new byte[]{-64, 18, 13, -121, -78, 82, 10, -30});
                                    }
                                } else {
                                    i14 = 2;
                                    strM2421h3 = AbstractC1387m.m2421h(new byte[]{-8, 55, -118, 25, 122, -14, 83, 52, -11, 65, -18}, new byte[]{-86, 120, -34, 88, 46, -69, 28, 122});
                                }
                                C1652b.m2751w(strM2421h6.concat(strM2421h3), colorText2);
                                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{68, -112, -10, -84, -60, -110, 70, 93, 30, -39, -84, -23, -60, -121, 2}, new byte[]{55, -7, -116, -55, -28, -70, 34, 45}) + point.x + AbstractC1387m.m2421h(new byte[]{-56, -93, 106}, new byte[]{-24, -37, 74, 97, 95, 70, -103, -70}) + point.y, colorText2);
                                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{56, -116, 123, -62, 112, -34, 4, -105, 98, -103, 98, -121, 30, -105}, new byte[]{74, -23, 26, -82, 35, -73, 126, -14}) + point2.x + AbstractC1387m.m2421h(new byte[]{72, 42, -127}, new byte[]{104, 82, -95, 122, -77, -79, -83, -72}) + point2.y, colorText2);
                                StringBuilder sb4 = new StringBuilder();
                                sb4.append(AbstractC1387m.m2421h(new byte[]{60, -45, 80, 38, 126, -117, 52, 121, 40, -33, 30, 117, 55, -62, 109}, new byte[]{88, -74, 62, 85, 23, -1, 77, Base64.padSymbol}));
                                sb4.append(displayMetrics.densityDpi);
                                C1652b.m2751w(sb4.toString(), colorText2);
                                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-39, -104, -96, -84, -6, -46, 59, 37, -99, -35, -18, -1, -77, -101, 98}, new byte[]{-67, -3, -50, -33, -109, -90, 66, 5}) + displayMetrics.density, colorText2);
                                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-107, 110, 8, -120, 95, Base64.padSymbol, Base64.padSymbol, -103, -114, ByteCompanionObject.MAX_VALUE, 16, -96, 107, 49, 115, -41, -57}, new byte[]{-25, 11, 105, -28, 27, 88, 83, -22}) + displayMetrics2.densityDpi, colorText2);
                                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-95, 44, 92, 12, -83, -85, -118, -113, -67, 56, 69, 69, -83, -71, -118}, new byte[]{-39, 72, 44, 101, -115, -124, -86, -10}) + displayMetrics2.xdpi + AbstractC1387m.m2421h(new byte[]{-5, 121, -63}, new byte[]{-37, 86, -31, 79, 20, -31, 110, 28}) + displayMetrics2.ydpi, colorText2);
                                StringBuilder sb5 = new StringBuilder();
                                sb5.append(AbstractC1387m.m2421h(new byte[]{-127, 8, -81, 101, -7, 59, 43, -110, -57, 68, -18, 34, -86, 38, 43, -126, -97}, new byte[]{-25, 100, -50, 2, -118, 27, 11, -78}));
                                sb5.append(Integer.toHexString(display.getFlags()));
                                C1652b.m2751w(sb5.toString(), colorText2);
                                C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{-56, -12, -6, -86, 18, 36, 0, -31, -56, -12, -6, -86, 18, 36, 0, -31, -56, -12, -6, -86, 18, 36, 0, -31, -56, -12, -6, -86, 18, 36, 0, -31}, new byte[]{-27, -39, -41, -121, 63, 9, 45, -52}));
                                i16++;
                                i15 = i14;
                            }
                            C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{-14, -30, -85, 59, 74, -16, -78, 68, -14, -30, -85, 59, 74, -16, -78, 68, -14, -30, -85, 59, 74, -16, -78, 68, -14, -30, -85, 59, 74, -16, -78, 68, -14}, new byte[]{-49, -33, -106, 6, 119, -51, -113, 121}));
                        }
                        break;
                    case 1:
                        C3281d c3281d = this.f9614c;
                        Class cls = Integer.TYPE;
                        try {
                            for (Method method : ActivityOptions.class.getDeclaredMethods()) {
                                if (method.getName().contains(AbstractC1387m.m2421h(new byte[]{114, -15, 1, -15, 67, -98, -3, -49, 98}, new byte[]{5, -104, 111, -107, 44, -23, -108, -95}))) {
                                    C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{88, 5, 45, -69, 55, -62, -6, 93, 106, 2, 55, -79, 105, -62}, new byte[]{30, 106, 88, -43, 83, -30, -105, 56}) + method.getName() + AbstractC1387m.m2421h(new byte[]{-7, -66, -78, -2, 31, 102, -31, 12, -7}, new byte[]{-39, -50, -45, -116, 126, 11, -110, 54}) + Arrays.toString(method.getParameterTypes()));
                                }
                            }
                        } catch (Exception e) {
                            C1652b.m2751w(e.getMessage(), ColorText.RED);
                        }
                        try {
                            Intent intent = new Intent(c3281d.requireContext(), (Class<?>) BlackActivity.class);
                            intent.addFlags(134742016);
                            ActivityOptions activityOptionsMakeBasic = ActivityOptions.makeBasic();
                            ActivityOptions.class.getMethod(AbstractC1387m.m2421h(new byte[]{-110, 16, 26, -27, -73, 50, 120, 54, -119, 34, 7, -57, -78, 40, 97, 60, -113, 18, 35, -58, -78, 34}, new byte[]{-31, 117, 110, -87, -42, 71, 22, 85}), cls).invoke(activityOptionsMakeBasic, 6);
                            AbstractC3656k.m5875u(c3281d.requireContext(), intent, activityOptionsMakeBasic.setLaunchBounds(new Rect(100, 100, 300, 600)).toBundle());
                        } catch (Exception e6) {
                            C1652b.m2751w(e6.getMessage(), ColorText.RED);
                        }
                        try {
                            Intent intent2 = new Intent(c3281d.requireContext(), (Class<?>) BlackActivity.class);
                            intent2.addFlags(268435456);
                            ActivityOptions activityOptionsMakeBasic2 = ActivityOptions.makeBasic();
                            activityOptionsMakeBasic2.setLaunchBounds(new Rect(100, 100, 300, 600));
                            try {
                                ActivityOptions.class.getMethod(AbstractC1387m.m2421h(new byte[]{26, 28, -68, 126, -109, 24, -8, Base64.padSymbol, 1, 46, -95, 92, -106, 2, -31, 55, 7, 30, -123, 93, -106, 8}, new byte[]{105, 121, -56, 50, -14, 109, -106, 94}), cls).invoke(activityOptionsMakeBasic2, 5);
                            } catch (Exception e10) {
                                C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{-57, -17, 81, 84, -85, 68, -44, -107, -9, -90, 82, 95, -96, 86, -99, -99, -15, -17, 83, 85, -96, 19, -112, -37}, new byte[]{-112, -122, 63, 48, -60, 51, -67, -5}) + e10.getMessage());
                            }
                            try {
                                ActivityOptions.class.getMethod(AbstractC1387m.m2421h(new byte[]{27, -117, -56, -27, 90, 98, 55, 95, 59, -115, -50, -45, 79, 96, 29, 89, 13, -113, -56, -45, 103, 97, 58, 78}, new byte[]{104, -18, -68, -74, 42, 14, 94, 43}), cls).invoke(activityOptionsMakeBasic2, 1);
                            } catch (Exception e11) {
                                C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{48, -17, -118, ByteCompanionObject.MIN_VALUE, 58, 10, -22, -22, 7, -6, -58, -113, 47, 67, -21, -32, 7, -65, -53, -55}, new byte[]{99, -97, -26, -23, 78, 42, -121, -123}) + e11.getMessage());
                            }
                            c3281d.startActivity(intent2, activityOptionsMakeBasic2.toBundle());
                        } catch (Exception e12) {
                            C1652b.m2751w(e12.getMessage(), ColorText.RED);
                            return;
                        }
                        break;
                    case 2:
                        m5216a(view2);
                        break;
                    default:
                        new C1445y2(AbstractC1387m.m2421h(new byte[]{119, -21}, new byte[]{Base64.padSymbol, -69, -11, 93, -90, -29, -54, 8}), (AppCompatActivity) this.f9614c.getActivity());
                        break;
                }
            }
        });
        ((Button) view.findViewById(R.id.button32)).setOnClickListener(new ViewOnClickListenerC1399o1(5));
        EditText editText3 = (EditText) view.findViewById(R.id.spi_chane);
        editText3.setFilters(new InputFilter[]{new C2026b()});
        editText3.setText(String.valueOf(C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{-114, -85, -1, 11, 120, 10, -113, -97, -84, -68, -1, 7, 107, 118, -85, -119, -89, -89, -12, 49, 118, 45, -104, -97, -90}, new byte[]{-61, -50, -101, 98, 25, 88, -22, -4}), 1)));
        editText3.addTextChangedListener(new C3280c());
        ((Button) view.findViewById(R.id.button33)).setOnClickListener(new View.OnClickListener(this) { // from class: u1.a

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C3281d f9614c;

            {
                this.f9614c = this;
            }

            /* JADX INFO: renamed from: a */
            private final void m5216a(View view2) {
                long j10;
                long totalBytes;
                long availableBytes;
                ActivityManager activityManager = (ActivityManager) this.f9614c.requireContext().getSystemService(AbstractC1387m.m2421h(new byte[]{78, -95, 2, 20, 68, -47, 100, 26}, new byte[]{47, -62, 118, 125, 50, -72, 16, 99}));
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                activityManager.getMemoryInfo(memoryInfo);
                long j11 = memoryInfo.totalMem;
                long j12 = memoryInfo.availMem;
                long j13 = j11 - j12;
                boolean z9 = memoryInfo.lowMemory;
                StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
                long totalBytes2 = statFs.getTotalBytes();
                long availableBytes2 = statFs.getAvailableBytes();
                if (Environment.getExternalStorageState().equals(AbstractC1387m.m2421h(new byte[]{122, 87, 98, 85, 118, -54, -55}, new byte[]{23, 56, 23, 59, 2, -81, -83, -97}))) {
                    j10 = 0;
                    StatFs statFs2 = new StatFs(Environment.getExternalStorageDirectory().getPath());
                    totalBytes = statFs2.getTotalBytes();
                    availableBytes = statFs2.getAvailableBytes();
                } else {
                    j10 = 0;
                    totalBytes = 0;
                    availableBytes = 0;
                }
                Debug.MemoryInfo memoryInfo2 = new Debug.MemoryInfo();
                Debug.getMemoryInfo(memoryInfo2);
                long totalPss = ((long) memoryInfo2.getTotalPss()) * 1024;
                long nativeHeapSize = Debug.getNativeHeapSize();
                long j14 = Runtime.getRuntime().totalMemory();
                StringBuilder sb = new StringBuilder();
                sb.append(AbstractC1387m.m2421h(new byte[]{100, -51, -112, -68, -30, -21, -15, -29, 43, -119, -115, -43, -63, -24, -13, -2, 52, -111, -39, -11, -64, -32, -68, -79, 100, -51, -89, -106}, new byte[]{89, -16, -83, -100, -81, -114, -100, -116}));
                sb.append(AbstractC1387m.m2421h(new byte[]{-117, -100, 95, 33, -119}, new byte[]{-39, -35, 18, 27, -125, -100, 123, 92}));
                Locale locale = Locale.US;
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{39, -23, 87, 5, -11, -71, 87, -108, 39, -20, 112, 96}, new byte[]{7, -55, 3, 106, -127, -40, 59, -82}), AbstractC1031d.m1277g(j11)));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{83, 27, -62, 50, 47, -120, 83, -92, 86, 72, -99}, new byte[]{115, 59, -105, 65, 74, -20, 105, -124}), AbstractC1031d.m1277g(j13)));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{-107, -40, -60, -98, -93, -56, -42, 15, -41, -108, -32, -46, -30, -124, -55, 100}, new byte[]{-75, -8, -123, -24, -62, -95, -70, 110}), AbstractC1031d.m1277g(j12)));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{71, 53, -60, 113, -107, 28, -67, Base64.padSymbol, 71, 48, -65, 51, -110, 94, -3, 13}, new byte[]{103, 21, -111, 2, -12, 123, -40, 7}), Double.valueOf((j13 / j11) * 100.0d)));
                sb.append(AbstractC1387m.m2421h(new byte[]{8, -20, 48, -3, 111, -15, 41, -54, 69, -93, 14, -21, 34, -15}, new byte[]{40, -52, 124, -110, 24, -47, 100, -81}));
                sb.append(z9);
                sb.append("\n\n");
                sb.append(AbstractC1387m.m2421h(new byte[]{103, -33, 23, 71, -7, 53, -30, 12, 14, -30, 23, 77, -7, 58, -28, 5, 20, -69}, new byte[]{46, -79, 99, 34, -117, 91, -125, 96}));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{67, 69, 83, 64, -1, -126, -75, 62, 67, 64, 116, 37}, new byte[]{99, 101, 7, 47, -117, -29, -39, 4}), AbstractC1031d.m1277g(totalBytes2)));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{90, 82, -11, -111, -9, 36, 97, -67, 24, 30, -47, -35, -74, 104, 126, -42}, new byte[]{122, 114, -76, -25, -106, 77, 13, -36}), AbstractC1031d.m1277g(availableBytes2)));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{67, 26, -97, 89, 105, -44, 3, 16, 67, 31, -28, 27, 110, -106, 67, 32}, new byte[]{99, 58, -54, 42, 8, -77, 102, 42}), Double.valueOf(((totalBytes2 - availableBytes2) / totalBytes2) * 100.0d)));
                sb.append("\n");
                if (totalBytes > j10) {
                    sb.append(AbstractC1387m.m2421h(new byte[]{88, -22, -47, -3, 32, -48, -68, -45, Base64.padSymbol, -63, -47, -9, 32, -33, -70, -38, Base64.padSymbol, -70, -10, -36, 114, -3, -68, -51, 121, -69, -97, -110}, new byte[]{29, -110, -91, -104, 82, -66, -35, -65}));
                    sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{-13, 35, 75, 50, 12, 56, -96, -45, -13, 38, 108, 87}, new byte[]{-45, 3, 31, 93, 120, 89, -52, -23}), AbstractC1031d.m1277g(totalBytes)));
                    sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{-118, 120, 101, -101, -77, 67, 99, -94, -56, 52, 65, -41, -14, 15, 124, -55}, new byte[]{-86, 88, 36, -19, -46, 42, 15, -61}), AbstractC1031d.m1277g(availableBytes)));
                    sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{112, 30, 1, Base64.padSymbol, -33, -13, 58, -13, 112, 27, 122, ByteCompanionObject.MAX_VALUE, -40, -79, 122, -61}, new byte[]{80, 62, 84, 78, -66, -108, 95, -55}), Double.valueOf(((totalBytes - availableBytes) / totalBytes) * 100.0d)));
                    sb.append("\n");
                }
                sb.append(AbstractC1387m.m2421h(new byte[]{58, -105, 19, -10, 105, -49, 34, 27, 41, -112, 14, -25, 105, -46, 37, 1, 115}, new byte[]{121, -30, 97, -124, 12, -95, 86, 59}));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{-103, -80, -97, 116, -41, -79, -90, 112, -125, -80, -9, 98, -80}, new byte[]{-71, -112, -46, 17, -70, -34, -44, 9}), AbstractC1031d.m1277g(totalPss)));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{-5, -6, 87, -13, 32, -17, -5, -64, -5, -110, 124, -13, 36, -68, -83, ByteCompanionObject.MIN_VALUE, -88, -48}, new byte[]{-37, -38, 25, -110, 84, -122, -115, -91}), AbstractC1031d.m1277g(nativeHeapSize)));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{66, -53, 87, -80, -29, -52, 109, -2, 66, -93, 118, -80, -1, ByteCompanionObject.MIN_VALUE, 36, -80, 17, -31}, new byte[]{98, -21, 19, -47, -113, -70, 4, -107}), AbstractC1031d.m1277g(j14)));
                C1652b.m2750v(sb.toString());
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                String strM2421h2;
                int i14;
                String strM2421h3;
                int i15 = 2;
                switch (i12) {
                    case 0:
                        DisplayManager displayManager = (DisplayManager) this.f9614c.requireContext().getSystemService(AbstractC1387m.m2421h(new byte[]{-109, -89, -109, 118, 27, -48, 88}, new byte[]{-9, -50, -32, 6, 119, -79, 33, 13}));
                        if (displayManager == null) {
                            C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-16, 31, -64, 49, -52, 84, 80, -119, -43, 24, -46, 38, -59, 71, 9, -7, -119, 86, -35, 52, -52, 89}, new byte[]{-76, 118, -77, 65, -96, 53, 41, -60}), ColorText.RED);
                        } else {
                            Display[] displays = displayManager.getDisplays();
                            String strM2421h4 = AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE, -124, -48, 34, 42, 72, 87, 31, ByteCompanionObject.MAX_VALUE, -124, -51, 91, 94, 38, 58, 110, 3, -32, -51, 83, 94, 38, 62, 2, ByteCompanionObject.MAX_VALUE, -124, -48, 34, 42, 72, 87, 31, ByteCompanionObject.MAX_VALUE, -124}, new byte[]{66, -71, -19, 31, 23, 117, 106, 34});
                            ColorText colorText = ColorText.RED;
                            C1652b.m2751w(strM2421h4, colorText);
                            C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-120, -127, 91, 18, ByteCompanionObject.MAX_VALUE, 59, -76, 71, -81, -98, 67, 18, 106, 104, -22, 14}, new byte[]{-36, -18, 47, 115, 19, 27, -48, 46}) + displays.length, colorText);
                            int i16 = 0;
                            while (i16 < displays.length) {
                                Display display = displays[i16];
                                DisplayMetrics displayMetrics = new DisplayMetrics();
                                display.getMetrics(displayMetrics);
                                DisplayMetrics displayMetrics2 = new DisplayMetrics();
                                display.getRealMetrics(displayMetrics2);
                                Point point = new Point();
                                display.getSize(point);
                                Point point2 = new Point();
                                display.getRealSize(point2);
                                StringBuilder sb = new StringBuilder();
                                AbstractC1178q.m2086t(new byte[]{121, -125, -105, 45, 104, 115, 83, -77, 39, -34, -42, 97, 60, 115, 52}, new byte[]{84, -82, -70, 0, 69, 83, 23, -38}, sb, i16);
                                String strM2075i = AbstractC1178q.m2075i(new byte[]{-105, -96, -69, 56, -97, 41}, new byte[]{-73, -115, -106, 21, -78, 4, -88, 10}, sb);
                                ColorText colorText2 = ColorText.RED;
                                C1652b.m2751w(strM2075i, colorText2);
                                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{14, -56, -109, 60, -3, 42, -78, -79, 71, -116, -109, 60, -3, 55, -78}, new byte[]{103, -84, -77, 28, -35, 10, -110, -111}) + display.getDisplayId(), colorText2);
                                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{22, 98, -109, 93, 84, 34, -74, 47, 88, 35, -34, 24, 84, 63, -74}, new byte[]{120, 3, -2, 56, 116, 2, -106, 15}) + display.getName(), colorText2);
                                String strM2421h5 = AbstractC1387m.m2421h(new byte[]{-55, 124, 57, 74, 70, -17, -54, 90, -102, 40, 120, 30, 3, -14, -54}, new byte[]{-70, 8, 88, 62, 35, -49, -22, 122});
                                int state = display.getState();
                                if (state == 1) {
                                    strM2421h2 = AbstractC1387m.m2421h(new byte[]{-63, 73, 123}, new byte[]{-114, 15, Base64.padSymbol, 37, 117, 118, -117, -79});
                                } else if (state == i15) {
                                    byte[] bArr = new byte[i15];
                                    // fill-array-data instruction
                                    bArr[0] = -79;
                                    bArr[1] = 113;
                                    strM2421h2 = AbstractC1387m.m2421h(bArr, new byte[]{-2, 63, -126, -38, 53, -59, 12, 75});
                                } else if (state == 3) {
                                    strM2421h2 = AbstractC1387m.m2421h(new byte[]{-33, -89, -116, 8}, new byte[]{-101, -24, -42, 77, -117, -90, -45, -117});
                                } else if (state != 4) {
                                    StringBuilder sb2 = new StringBuilder();
                                    AbstractC1178q.m2086t(new byte[]{55, 105, -34, -32, -50, -67, 39, 12}, new byte[]{98, 39, -107, -82, -127, -22, 105, 36}, sb2, state);
                                    strM2421h2 = AbstractC1178q.m2075i(new byte[]{51}, new byte[]{26, -39, 97, -78, -27, 107, 59, -87}, sb2);
                                } else {
                                    strM2421h2 = AbstractC1387m.m2421h(new byte[]{-29, -49, -65, -51, 25, 66, 11, 116, -9, -59, -85, -52}, new byte[]{-89, ByteCompanionObject.MIN_VALUE, -27, -120, 70, 17, 94, 39});
                                }
                                C1652b.m2751w(strM2421h5.concat(strM2421h2), colorText2);
                                String strM2421h6 = AbstractC1387m.m2421h(new byte[]{-16, 67, 13, -40, 32, 64, 107, 6, -94, 12, 89, -103, 116, 20, 36}, new byte[]{-126, 44, 121, -71, 84, 41, 4, 104});
                                int rotation = display.getRotation();
                                if (rotation == 0) {
                                    i14 = 2;
                                    strM2421h3 = AbstractC1387m.m2421h(new byte[]{46, -1, -32, 121, 110, 125, 114, 13, 35, ByteCompanionObject.MIN_VALUE}, new byte[]{124, -80, -76, 56, 58, 52, Base64.padSymbol, 67});
                                } else if (rotation != 1) {
                                    i14 = 2;
                                    if (rotation == 2) {
                                        strM2421h3 = AbstractC1387m.m2421h(new byte[]{-117, 35, -28, 5, -74, 7, -3, -66, -122, 93, -120, 116}, new byte[]{-39, 108, -80, 68, -30, 78, -78, -16});
                                    } else if (rotation != 3) {
                                        StringBuilder sb3 = new StringBuilder();
                                        AbstractC1178q.m2086t(new byte[]{49, 20, -2, -96, -51, -57, -30, -87}, new byte[]{100, 90, -75, -18, -126, -112, -84, -127}, sb3, rotation);
                                        strM2421h3 = AbstractC1178q.m2075i(new byte[]{20}, new byte[]{Base64.padSymbol, 90, -102, 45, 75, 31, 54, -56}, sb3);
                                    } else {
                                        strM2421h3 = AbstractC1387m.m2421h(new byte[]{-110, 93, 89, -58, -26, 27, 69, -84, -97, 32, 58, -73}, new byte[]{-64, 18, 13, -121, -78, 82, 10, -30});
                                    }
                                } else {
                                    i14 = 2;
                                    strM2421h3 = AbstractC1387m.m2421h(new byte[]{-8, 55, -118, 25, 122, -14, 83, 52, -11, 65, -18}, new byte[]{-86, 120, -34, 88, 46, -69, 28, 122});
                                }
                                C1652b.m2751w(strM2421h6.concat(strM2421h3), colorText2);
                                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{68, -112, -10, -84, -60, -110, 70, 93, 30, -39, -84, -23, -60, -121, 2}, new byte[]{55, -7, -116, -55, -28, -70, 34, 45}) + point.x + AbstractC1387m.m2421h(new byte[]{-56, -93, 106}, new byte[]{-24, -37, 74, 97, 95, 70, -103, -70}) + point.y, colorText2);
                                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{56, -116, 123, -62, 112, -34, 4, -105, 98, -103, 98, -121, 30, -105}, new byte[]{74, -23, 26, -82, 35, -73, 126, -14}) + point2.x + AbstractC1387m.m2421h(new byte[]{72, 42, -127}, new byte[]{104, 82, -95, 122, -77, -79, -83, -72}) + point2.y, colorText2);
                                StringBuilder sb4 = new StringBuilder();
                                sb4.append(AbstractC1387m.m2421h(new byte[]{60, -45, 80, 38, 126, -117, 52, 121, 40, -33, 30, 117, 55, -62, 109}, new byte[]{88, -74, 62, 85, 23, -1, 77, Base64.padSymbol}));
                                sb4.append(displayMetrics.densityDpi);
                                C1652b.m2751w(sb4.toString(), colorText2);
                                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-39, -104, -96, -84, -6, -46, 59, 37, -99, -35, -18, -1, -77, -101, 98}, new byte[]{-67, -3, -50, -33, -109, -90, 66, 5}) + displayMetrics.density, colorText2);
                                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-107, 110, 8, -120, 95, Base64.padSymbol, Base64.padSymbol, -103, -114, ByteCompanionObject.MAX_VALUE, 16, -96, 107, 49, 115, -41, -57}, new byte[]{-25, 11, 105, -28, 27, 88, 83, -22}) + displayMetrics2.densityDpi, colorText2);
                                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-95, 44, 92, 12, -83, -85, -118, -113, -67, 56, 69, 69, -83, -71, -118}, new byte[]{-39, 72, 44, 101, -115, -124, -86, -10}) + displayMetrics2.xdpi + AbstractC1387m.m2421h(new byte[]{-5, 121, -63}, new byte[]{-37, 86, -31, 79, 20, -31, 110, 28}) + displayMetrics2.ydpi, colorText2);
                                StringBuilder sb5 = new StringBuilder();
                                sb5.append(AbstractC1387m.m2421h(new byte[]{-127, 8, -81, 101, -7, 59, 43, -110, -57, 68, -18, 34, -86, 38, 43, -126, -97}, new byte[]{-25, 100, -50, 2, -118, 27, 11, -78}));
                                sb5.append(Integer.toHexString(display.getFlags()));
                                C1652b.m2751w(sb5.toString(), colorText2);
                                C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{-56, -12, -6, -86, 18, 36, 0, -31, -56, -12, -6, -86, 18, 36, 0, -31, -56, -12, -6, -86, 18, 36, 0, -31, -56, -12, -6, -86, 18, 36, 0, -31}, new byte[]{-27, -39, -41, -121, 63, 9, 45, -52}));
                                i16++;
                                i15 = i14;
                            }
                            C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{-14, -30, -85, 59, 74, -16, -78, 68, -14, -30, -85, 59, 74, -16, -78, 68, -14, -30, -85, 59, 74, -16, -78, 68, -14, -30, -85, 59, 74, -16, -78, 68, -14}, new byte[]{-49, -33, -106, 6, 119, -51, -113, 121}));
                        }
                        break;
                    case 1:
                        C3281d c3281d = this.f9614c;
                        Class cls = Integer.TYPE;
                        try {
                            for (Method method : ActivityOptions.class.getDeclaredMethods()) {
                                if (method.getName().contains(AbstractC1387m.m2421h(new byte[]{114, -15, 1, -15, 67, -98, -3, -49, 98}, new byte[]{5, -104, 111, -107, 44, -23, -108, -95}))) {
                                    C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{88, 5, 45, -69, 55, -62, -6, 93, 106, 2, 55, -79, 105, -62}, new byte[]{30, 106, 88, -43, 83, -30, -105, 56}) + method.getName() + AbstractC1387m.m2421h(new byte[]{-7, -66, -78, -2, 31, 102, -31, 12, -7}, new byte[]{-39, -50, -45, -116, 126, 11, -110, 54}) + Arrays.toString(method.getParameterTypes()));
                                }
                            }
                        } catch (Exception e) {
                            C1652b.m2751w(e.getMessage(), ColorText.RED);
                        }
                        try {
                            Intent intent = new Intent(c3281d.requireContext(), (Class<?>) BlackActivity.class);
                            intent.addFlags(134742016);
                            ActivityOptions activityOptionsMakeBasic = ActivityOptions.makeBasic();
                            ActivityOptions.class.getMethod(AbstractC1387m.m2421h(new byte[]{-110, 16, 26, -27, -73, 50, 120, 54, -119, 34, 7, -57, -78, 40, 97, 60, -113, 18, 35, -58, -78, 34}, new byte[]{-31, 117, 110, -87, -42, 71, 22, 85}), cls).invoke(activityOptionsMakeBasic, 6);
                            AbstractC3656k.m5875u(c3281d.requireContext(), intent, activityOptionsMakeBasic.setLaunchBounds(new Rect(100, 100, 300, 600)).toBundle());
                        } catch (Exception e6) {
                            C1652b.m2751w(e6.getMessage(), ColorText.RED);
                        }
                        try {
                            Intent intent2 = new Intent(c3281d.requireContext(), (Class<?>) BlackActivity.class);
                            intent2.addFlags(268435456);
                            ActivityOptions activityOptionsMakeBasic2 = ActivityOptions.makeBasic();
                            activityOptionsMakeBasic2.setLaunchBounds(new Rect(100, 100, 300, 600));
                            try {
                                ActivityOptions.class.getMethod(AbstractC1387m.m2421h(new byte[]{26, 28, -68, 126, -109, 24, -8, Base64.padSymbol, 1, 46, -95, 92, -106, 2, -31, 55, 7, 30, -123, 93, -106, 8}, new byte[]{105, 121, -56, 50, -14, 109, -106, 94}), cls).invoke(activityOptionsMakeBasic2, 5);
                            } catch (Exception e10) {
                                C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{-57, -17, 81, 84, -85, 68, -44, -107, -9, -90, 82, 95, -96, 86, -99, -99, -15, -17, 83, 85, -96, 19, -112, -37}, new byte[]{-112, -122, 63, 48, -60, 51, -67, -5}) + e10.getMessage());
                            }
                            try {
                                ActivityOptions.class.getMethod(AbstractC1387m.m2421h(new byte[]{27, -117, -56, -27, 90, 98, 55, 95, 59, -115, -50, -45, 79, 96, 29, 89, 13, -113, -56, -45, 103, 97, 58, 78}, new byte[]{104, -18, -68, -74, 42, 14, 94, 43}), cls).invoke(activityOptionsMakeBasic2, 1);
                            } catch (Exception e11) {
                                C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{48, -17, -118, ByteCompanionObject.MIN_VALUE, 58, 10, -22, -22, 7, -6, -58, -113, 47, 67, -21, -32, 7, -65, -53, -55}, new byte[]{99, -97, -26, -23, 78, 42, -121, -123}) + e11.getMessage());
                            }
                            c3281d.startActivity(intent2, activityOptionsMakeBasic2.toBundle());
                        } catch (Exception e12) {
                            C1652b.m2751w(e12.getMessage(), ColorText.RED);
                            return;
                        }
                        break;
                    case 2:
                        m5216a(view2);
                        break;
                    default:
                        new C1445y2(AbstractC1387m.m2421h(new byte[]{119, -21}, new byte[]{Base64.padSymbol, -69, -11, 93, -90, -29, -54, 8}), (AppCompatActivity) this.f9614c.getActivity());
                        break;
                }
            }
        });
        ((Button) view.findViewById(R.id.button34)).setOnClickListener(new View.OnClickListener(this) { // from class: u1.a

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C3281d f9614c;

            {
                this.f9614c = this;
            }

            /* JADX INFO: renamed from: a */
            private final void m5216a(View view2) {
                long j10;
                long totalBytes;
                long availableBytes;
                ActivityManager activityManager = (ActivityManager) this.f9614c.requireContext().getSystemService(AbstractC1387m.m2421h(new byte[]{78, -95, 2, 20, 68, -47, 100, 26}, new byte[]{47, -62, 118, 125, 50, -72, 16, 99}));
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                activityManager.getMemoryInfo(memoryInfo);
                long j11 = memoryInfo.totalMem;
                long j12 = memoryInfo.availMem;
                long j13 = j11 - j12;
                boolean z9 = memoryInfo.lowMemory;
                StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
                long totalBytes2 = statFs.getTotalBytes();
                long availableBytes2 = statFs.getAvailableBytes();
                if (Environment.getExternalStorageState().equals(AbstractC1387m.m2421h(new byte[]{122, 87, 98, 85, 118, -54, -55}, new byte[]{23, 56, 23, 59, 2, -81, -83, -97}))) {
                    j10 = 0;
                    StatFs statFs2 = new StatFs(Environment.getExternalStorageDirectory().getPath());
                    totalBytes = statFs2.getTotalBytes();
                    availableBytes = statFs2.getAvailableBytes();
                } else {
                    j10 = 0;
                    totalBytes = 0;
                    availableBytes = 0;
                }
                Debug.MemoryInfo memoryInfo2 = new Debug.MemoryInfo();
                Debug.getMemoryInfo(memoryInfo2);
                long totalPss = ((long) memoryInfo2.getTotalPss()) * 1024;
                long nativeHeapSize = Debug.getNativeHeapSize();
                long j14 = Runtime.getRuntime().totalMemory();
                StringBuilder sb = new StringBuilder();
                sb.append(AbstractC1387m.m2421h(new byte[]{100, -51, -112, -68, -30, -21, -15, -29, 43, -119, -115, -43, -63, -24, -13, -2, 52, -111, -39, -11, -64, -32, -68, -79, 100, -51, -89, -106}, new byte[]{89, -16, -83, -100, -81, -114, -100, -116}));
                sb.append(AbstractC1387m.m2421h(new byte[]{-117, -100, 95, 33, -119}, new byte[]{-39, -35, 18, 27, -125, -100, 123, 92}));
                Locale locale = Locale.US;
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{39, -23, 87, 5, -11, -71, 87, -108, 39, -20, 112, 96}, new byte[]{7, -55, 3, 106, -127, -40, 59, -82}), AbstractC1031d.m1277g(j11)));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{83, 27, -62, 50, 47, -120, 83, -92, 86, 72, -99}, new byte[]{115, 59, -105, 65, 74, -20, 105, -124}), AbstractC1031d.m1277g(j13)));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{-107, -40, -60, -98, -93, -56, -42, 15, -41, -108, -32, -46, -30, -124, -55, 100}, new byte[]{-75, -8, -123, -24, -62, -95, -70, 110}), AbstractC1031d.m1277g(j12)));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{71, 53, -60, 113, -107, 28, -67, Base64.padSymbol, 71, 48, -65, 51, -110, 94, -3, 13}, new byte[]{103, 21, -111, 2, -12, 123, -40, 7}), Double.valueOf((j13 / j11) * 100.0d)));
                sb.append(AbstractC1387m.m2421h(new byte[]{8, -20, 48, -3, 111, -15, 41, -54, 69, -93, 14, -21, 34, -15}, new byte[]{40, -52, 124, -110, 24, -47, 100, -81}));
                sb.append(z9);
                sb.append("\n\n");
                sb.append(AbstractC1387m.m2421h(new byte[]{103, -33, 23, 71, -7, 53, -30, 12, 14, -30, 23, 77, -7, 58, -28, 5, 20, -69}, new byte[]{46, -79, 99, 34, -117, 91, -125, 96}));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{67, 69, 83, 64, -1, -126, -75, 62, 67, 64, 116, 37}, new byte[]{99, 101, 7, 47, -117, -29, -39, 4}), AbstractC1031d.m1277g(totalBytes2)));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{90, 82, -11, -111, -9, 36, 97, -67, 24, 30, -47, -35, -74, 104, 126, -42}, new byte[]{122, 114, -76, -25, -106, 77, 13, -36}), AbstractC1031d.m1277g(availableBytes2)));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{67, 26, -97, 89, 105, -44, 3, 16, 67, 31, -28, 27, 110, -106, 67, 32}, new byte[]{99, 58, -54, 42, 8, -77, 102, 42}), Double.valueOf(((totalBytes2 - availableBytes2) / totalBytes2) * 100.0d)));
                sb.append("\n");
                if (totalBytes > j10) {
                    sb.append(AbstractC1387m.m2421h(new byte[]{88, -22, -47, -3, 32, -48, -68, -45, Base64.padSymbol, -63, -47, -9, 32, -33, -70, -38, Base64.padSymbol, -70, -10, -36, 114, -3, -68, -51, 121, -69, -97, -110}, new byte[]{29, -110, -91, -104, 82, -66, -35, -65}));
                    sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{-13, 35, 75, 50, 12, 56, -96, -45, -13, 38, 108, 87}, new byte[]{-45, 3, 31, 93, 120, 89, -52, -23}), AbstractC1031d.m1277g(totalBytes)));
                    sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{-118, 120, 101, -101, -77, 67, 99, -94, -56, 52, 65, -41, -14, 15, 124, -55}, new byte[]{-86, 88, 36, -19, -46, 42, 15, -61}), AbstractC1031d.m1277g(availableBytes)));
                    sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{112, 30, 1, Base64.padSymbol, -33, -13, 58, -13, 112, 27, 122, ByteCompanionObject.MAX_VALUE, -40, -79, 122, -61}, new byte[]{80, 62, 84, 78, -66, -108, 95, -55}), Double.valueOf(((totalBytes - availableBytes) / totalBytes) * 100.0d)));
                    sb.append("\n");
                }
                sb.append(AbstractC1387m.m2421h(new byte[]{58, -105, 19, -10, 105, -49, 34, 27, 41, -112, 14, -25, 105, -46, 37, 1, 115}, new byte[]{121, -30, 97, -124, 12, -95, 86, 59}));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{-103, -80, -97, 116, -41, -79, -90, 112, -125, -80, -9, 98, -80}, new byte[]{-71, -112, -46, 17, -70, -34, -44, 9}), AbstractC1031d.m1277g(totalPss)));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{-5, -6, 87, -13, 32, -17, -5, -64, -5, -110, 124, -13, 36, -68, -83, ByteCompanionObject.MIN_VALUE, -88, -48}, new byte[]{-37, -38, 25, -110, 84, -122, -115, -91}), AbstractC1031d.m1277g(nativeHeapSize)));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{66, -53, 87, -80, -29, -52, 109, -2, 66, -93, 118, -80, -1, ByteCompanionObject.MIN_VALUE, 36, -80, 17, -31}, new byte[]{98, -21, 19, -47, -113, -70, 4, -107}), AbstractC1031d.m1277g(j14)));
                C1652b.m2750v(sb.toString());
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                String strM2421h2;
                int i14;
                String strM2421h3;
                int i15 = 2;
                switch (i10) {
                    case 0:
                        DisplayManager displayManager = (DisplayManager) this.f9614c.requireContext().getSystemService(AbstractC1387m.m2421h(new byte[]{-109, -89, -109, 118, 27, -48, 88}, new byte[]{-9, -50, -32, 6, 119, -79, 33, 13}));
                        if (displayManager == null) {
                            C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-16, 31, -64, 49, -52, 84, 80, -119, -43, 24, -46, 38, -59, 71, 9, -7, -119, 86, -35, 52, -52, 89}, new byte[]{-76, 118, -77, 65, -96, 53, 41, -60}), ColorText.RED);
                        } else {
                            Display[] displays = displayManager.getDisplays();
                            String strM2421h4 = AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE, -124, -48, 34, 42, 72, 87, 31, ByteCompanionObject.MAX_VALUE, -124, -51, 91, 94, 38, 58, 110, 3, -32, -51, 83, 94, 38, 62, 2, ByteCompanionObject.MAX_VALUE, -124, -48, 34, 42, 72, 87, 31, ByteCompanionObject.MAX_VALUE, -124}, new byte[]{66, -71, -19, 31, 23, 117, 106, 34});
                            ColorText colorText = ColorText.RED;
                            C1652b.m2751w(strM2421h4, colorText);
                            C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-120, -127, 91, 18, ByteCompanionObject.MAX_VALUE, 59, -76, 71, -81, -98, 67, 18, 106, 104, -22, 14}, new byte[]{-36, -18, 47, 115, 19, 27, -48, 46}) + displays.length, colorText);
                            int i16 = 0;
                            while (i16 < displays.length) {
                                Display display = displays[i16];
                                DisplayMetrics displayMetrics = new DisplayMetrics();
                                display.getMetrics(displayMetrics);
                                DisplayMetrics displayMetrics2 = new DisplayMetrics();
                                display.getRealMetrics(displayMetrics2);
                                Point point = new Point();
                                display.getSize(point);
                                Point point2 = new Point();
                                display.getRealSize(point2);
                                StringBuilder sb = new StringBuilder();
                                AbstractC1178q.m2086t(new byte[]{121, -125, -105, 45, 104, 115, 83, -77, 39, -34, -42, 97, 60, 115, 52}, new byte[]{84, -82, -70, 0, 69, 83, 23, -38}, sb, i16);
                                String strM2075i = AbstractC1178q.m2075i(new byte[]{-105, -96, -69, 56, -97, 41}, new byte[]{-73, -115, -106, 21, -78, 4, -88, 10}, sb);
                                ColorText colorText2 = ColorText.RED;
                                C1652b.m2751w(strM2075i, colorText2);
                                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{14, -56, -109, 60, -3, 42, -78, -79, 71, -116, -109, 60, -3, 55, -78}, new byte[]{103, -84, -77, 28, -35, 10, -110, -111}) + display.getDisplayId(), colorText2);
                                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{22, 98, -109, 93, 84, 34, -74, 47, 88, 35, -34, 24, 84, 63, -74}, new byte[]{120, 3, -2, 56, 116, 2, -106, 15}) + display.getName(), colorText2);
                                String strM2421h5 = AbstractC1387m.m2421h(new byte[]{-55, 124, 57, 74, 70, -17, -54, 90, -102, 40, 120, 30, 3, -14, -54}, new byte[]{-70, 8, 88, 62, 35, -49, -22, 122});
                                int state = display.getState();
                                if (state == 1) {
                                    strM2421h2 = AbstractC1387m.m2421h(new byte[]{-63, 73, 123}, new byte[]{-114, 15, Base64.padSymbol, 37, 117, 118, -117, -79});
                                } else if (state == i15) {
                                    byte[] bArr = new byte[i15];
                                    // fill-array-data instruction
                                    bArr[0] = -79;
                                    bArr[1] = 113;
                                    strM2421h2 = AbstractC1387m.m2421h(bArr, new byte[]{-2, 63, -126, -38, 53, -59, 12, 75});
                                } else if (state == 3) {
                                    strM2421h2 = AbstractC1387m.m2421h(new byte[]{-33, -89, -116, 8}, new byte[]{-101, -24, -42, 77, -117, -90, -45, -117});
                                } else if (state != 4) {
                                    StringBuilder sb2 = new StringBuilder();
                                    AbstractC1178q.m2086t(new byte[]{55, 105, -34, -32, -50, -67, 39, 12}, new byte[]{98, 39, -107, -82, -127, -22, 105, 36}, sb2, state);
                                    strM2421h2 = AbstractC1178q.m2075i(new byte[]{51}, new byte[]{26, -39, 97, -78, -27, 107, 59, -87}, sb2);
                                } else {
                                    strM2421h2 = AbstractC1387m.m2421h(new byte[]{-29, -49, -65, -51, 25, 66, 11, 116, -9, -59, -85, -52}, new byte[]{-89, ByteCompanionObject.MIN_VALUE, -27, -120, 70, 17, 94, 39});
                                }
                                C1652b.m2751w(strM2421h5.concat(strM2421h2), colorText2);
                                String strM2421h6 = AbstractC1387m.m2421h(new byte[]{-16, 67, 13, -40, 32, 64, 107, 6, -94, 12, 89, -103, 116, 20, 36}, new byte[]{-126, 44, 121, -71, 84, 41, 4, 104});
                                int rotation = display.getRotation();
                                if (rotation == 0) {
                                    i14 = 2;
                                    strM2421h3 = AbstractC1387m.m2421h(new byte[]{46, -1, -32, 121, 110, 125, 114, 13, 35, ByteCompanionObject.MIN_VALUE}, new byte[]{124, -80, -76, 56, 58, 52, Base64.padSymbol, 67});
                                } else if (rotation != 1) {
                                    i14 = 2;
                                    if (rotation == 2) {
                                        strM2421h3 = AbstractC1387m.m2421h(new byte[]{-117, 35, -28, 5, -74, 7, -3, -66, -122, 93, -120, 116}, new byte[]{-39, 108, -80, 68, -30, 78, -78, -16});
                                    } else if (rotation != 3) {
                                        StringBuilder sb3 = new StringBuilder();
                                        AbstractC1178q.m2086t(new byte[]{49, 20, -2, -96, -51, -57, -30, -87}, new byte[]{100, 90, -75, -18, -126, -112, -84, -127}, sb3, rotation);
                                        strM2421h3 = AbstractC1178q.m2075i(new byte[]{20}, new byte[]{Base64.padSymbol, 90, -102, 45, 75, 31, 54, -56}, sb3);
                                    } else {
                                        strM2421h3 = AbstractC1387m.m2421h(new byte[]{-110, 93, 89, -58, -26, 27, 69, -84, -97, 32, 58, -73}, new byte[]{-64, 18, 13, -121, -78, 82, 10, -30});
                                    }
                                } else {
                                    i14 = 2;
                                    strM2421h3 = AbstractC1387m.m2421h(new byte[]{-8, 55, -118, 25, 122, -14, 83, 52, -11, 65, -18}, new byte[]{-86, 120, -34, 88, 46, -69, 28, 122});
                                }
                                C1652b.m2751w(strM2421h6.concat(strM2421h3), colorText2);
                                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{68, -112, -10, -84, -60, -110, 70, 93, 30, -39, -84, -23, -60, -121, 2}, new byte[]{55, -7, -116, -55, -28, -70, 34, 45}) + point.x + AbstractC1387m.m2421h(new byte[]{-56, -93, 106}, new byte[]{-24, -37, 74, 97, 95, 70, -103, -70}) + point.y, colorText2);
                                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{56, -116, 123, -62, 112, -34, 4, -105, 98, -103, 98, -121, 30, -105}, new byte[]{74, -23, 26, -82, 35, -73, 126, -14}) + point2.x + AbstractC1387m.m2421h(new byte[]{72, 42, -127}, new byte[]{104, 82, -95, 122, -77, -79, -83, -72}) + point2.y, colorText2);
                                StringBuilder sb4 = new StringBuilder();
                                sb4.append(AbstractC1387m.m2421h(new byte[]{60, -45, 80, 38, 126, -117, 52, 121, 40, -33, 30, 117, 55, -62, 109}, new byte[]{88, -74, 62, 85, 23, -1, 77, Base64.padSymbol}));
                                sb4.append(displayMetrics.densityDpi);
                                C1652b.m2751w(sb4.toString(), colorText2);
                                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-39, -104, -96, -84, -6, -46, 59, 37, -99, -35, -18, -1, -77, -101, 98}, new byte[]{-67, -3, -50, -33, -109, -90, 66, 5}) + displayMetrics.density, colorText2);
                                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-107, 110, 8, -120, 95, Base64.padSymbol, Base64.padSymbol, -103, -114, ByteCompanionObject.MAX_VALUE, 16, -96, 107, 49, 115, -41, -57}, new byte[]{-25, 11, 105, -28, 27, 88, 83, -22}) + displayMetrics2.densityDpi, colorText2);
                                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-95, 44, 92, 12, -83, -85, -118, -113, -67, 56, 69, 69, -83, -71, -118}, new byte[]{-39, 72, 44, 101, -115, -124, -86, -10}) + displayMetrics2.xdpi + AbstractC1387m.m2421h(new byte[]{-5, 121, -63}, new byte[]{-37, 86, -31, 79, 20, -31, 110, 28}) + displayMetrics2.ydpi, colorText2);
                                StringBuilder sb5 = new StringBuilder();
                                sb5.append(AbstractC1387m.m2421h(new byte[]{-127, 8, -81, 101, -7, 59, 43, -110, -57, 68, -18, 34, -86, 38, 43, -126, -97}, new byte[]{-25, 100, -50, 2, -118, 27, 11, -78}));
                                sb5.append(Integer.toHexString(display.getFlags()));
                                C1652b.m2751w(sb5.toString(), colorText2);
                                C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{-56, -12, -6, -86, 18, 36, 0, -31, -56, -12, -6, -86, 18, 36, 0, -31, -56, -12, -6, -86, 18, 36, 0, -31, -56, -12, -6, -86, 18, 36, 0, -31}, new byte[]{-27, -39, -41, -121, 63, 9, 45, -52}));
                                i16++;
                                i15 = i14;
                            }
                            C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{-14, -30, -85, 59, 74, -16, -78, 68, -14, -30, -85, 59, 74, -16, -78, 68, -14, -30, -85, 59, 74, -16, -78, 68, -14, -30, -85, 59, 74, -16, -78, 68, -14}, new byte[]{-49, -33, -106, 6, 119, -51, -113, 121}));
                        }
                        break;
                    case 1:
                        C3281d c3281d = this.f9614c;
                        Class cls = Integer.TYPE;
                        try {
                            for (Method method : ActivityOptions.class.getDeclaredMethods()) {
                                if (method.getName().contains(AbstractC1387m.m2421h(new byte[]{114, -15, 1, -15, 67, -98, -3, -49, 98}, new byte[]{5, -104, 111, -107, 44, -23, -108, -95}))) {
                                    C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{88, 5, 45, -69, 55, -62, -6, 93, 106, 2, 55, -79, 105, -62}, new byte[]{30, 106, 88, -43, 83, -30, -105, 56}) + method.getName() + AbstractC1387m.m2421h(new byte[]{-7, -66, -78, -2, 31, 102, -31, 12, -7}, new byte[]{-39, -50, -45, -116, 126, 11, -110, 54}) + Arrays.toString(method.getParameterTypes()));
                                }
                            }
                        } catch (Exception e) {
                            C1652b.m2751w(e.getMessage(), ColorText.RED);
                        }
                        try {
                            Intent intent = new Intent(c3281d.requireContext(), (Class<?>) BlackActivity.class);
                            intent.addFlags(134742016);
                            ActivityOptions activityOptionsMakeBasic = ActivityOptions.makeBasic();
                            ActivityOptions.class.getMethod(AbstractC1387m.m2421h(new byte[]{-110, 16, 26, -27, -73, 50, 120, 54, -119, 34, 7, -57, -78, 40, 97, 60, -113, 18, 35, -58, -78, 34}, new byte[]{-31, 117, 110, -87, -42, 71, 22, 85}), cls).invoke(activityOptionsMakeBasic, 6);
                            AbstractC3656k.m5875u(c3281d.requireContext(), intent, activityOptionsMakeBasic.setLaunchBounds(new Rect(100, 100, 300, 600)).toBundle());
                        } catch (Exception e6) {
                            C1652b.m2751w(e6.getMessage(), ColorText.RED);
                        }
                        try {
                            Intent intent2 = new Intent(c3281d.requireContext(), (Class<?>) BlackActivity.class);
                            intent2.addFlags(268435456);
                            ActivityOptions activityOptionsMakeBasic2 = ActivityOptions.makeBasic();
                            activityOptionsMakeBasic2.setLaunchBounds(new Rect(100, 100, 300, 600));
                            try {
                                ActivityOptions.class.getMethod(AbstractC1387m.m2421h(new byte[]{26, 28, -68, 126, -109, 24, -8, Base64.padSymbol, 1, 46, -95, 92, -106, 2, -31, 55, 7, 30, -123, 93, -106, 8}, new byte[]{105, 121, -56, 50, -14, 109, -106, 94}), cls).invoke(activityOptionsMakeBasic2, 5);
                            } catch (Exception e10) {
                                C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{-57, -17, 81, 84, -85, 68, -44, -107, -9, -90, 82, 95, -96, 86, -99, -99, -15, -17, 83, 85, -96, 19, -112, -37}, new byte[]{-112, -122, 63, 48, -60, 51, -67, -5}) + e10.getMessage());
                            }
                            try {
                                ActivityOptions.class.getMethod(AbstractC1387m.m2421h(new byte[]{27, -117, -56, -27, 90, 98, 55, 95, 59, -115, -50, -45, 79, 96, 29, 89, 13, -113, -56, -45, 103, 97, 58, 78}, new byte[]{104, -18, -68, -74, 42, 14, 94, 43}), cls).invoke(activityOptionsMakeBasic2, 1);
                            } catch (Exception e11) {
                                C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{48, -17, -118, ByteCompanionObject.MIN_VALUE, 58, 10, -22, -22, 7, -6, -58, -113, 47, 67, -21, -32, 7, -65, -53, -55}, new byte[]{99, -97, -26, -23, 78, 42, -121, -123}) + e11.getMessage());
                            }
                            c3281d.startActivity(intent2, activityOptionsMakeBasic2.toBundle());
                        } catch (Exception e12) {
                            C1652b.m2751w(e12.getMessage(), ColorText.RED);
                            return;
                        }
                        break;
                    case 2:
                        m5216a(view2);
                        break;
                    default:
                        new C1445y2(AbstractC1387m.m2421h(new byte[]{119, -21}, new byte[]{Base64.padSymbol, -69, -11, 93, -90, -29, -54, 8}), (AppCompatActivity) this.f9614c.getActivity());
                        break;
                }
            }
        });
        ((Button) view.findViewById(R.id.button_split)).setOnClickListener(new View.OnClickListener(this) { // from class: u1.a

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C3281d f9614c;

            {
                this.f9614c = this;
            }

            /* JADX INFO: renamed from: a */
            private final void m5216a(View view2) {
                long j10;
                long totalBytes;
                long availableBytes;
                ActivityManager activityManager = (ActivityManager) this.f9614c.requireContext().getSystemService(AbstractC1387m.m2421h(new byte[]{78, -95, 2, 20, 68, -47, 100, 26}, new byte[]{47, -62, 118, 125, 50, -72, 16, 99}));
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                activityManager.getMemoryInfo(memoryInfo);
                long j11 = memoryInfo.totalMem;
                long j12 = memoryInfo.availMem;
                long j13 = j11 - j12;
                boolean z9 = memoryInfo.lowMemory;
                StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
                long totalBytes2 = statFs.getTotalBytes();
                long availableBytes2 = statFs.getAvailableBytes();
                if (Environment.getExternalStorageState().equals(AbstractC1387m.m2421h(new byte[]{122, 87, 98, 85, 118, -54, -55}, new byte[]{23, 56, 23, 59, 2, -81, -83, -97}))) {
                    j10 = 0;
                    StatFs statFs2 = new StatFs(Environment.getExternalStorageDirectory().getPath());
                    totalBytes = statFs2.getTotalBytes();
                    availableBytes = statFs2.getAvailableBytes();
                } else {
                    j10 = 0;
                    totalBytes = 0;
                    availableBytes = 0;
                }
                Debug.MemoryInfo memoryInfo2 = new Debug.MemoryInfo();
                Debug.getMemoryInfo(memoryInfo2);
                long totalPss = ((long) memoryInfo2.getTotalPss()) * 1024;
                long nativeHeapSize = Debug.getNativeHeapSize();
                long j14 = Runtime.getRuntime().totalMemory();
                StringBuilder sb = new StringBuilder();
                sb.append(AbstractC1387m.m2421h(new byte[]{100, -51, -112, -68, -30, -21, -15, -29, 43, -119, -115, -43, -63, -24, -13, -2, 52, -111, -39, -11, -64, -32, -68, -79, 100, -51, -89, -106}, new byte[]{89, -16, -83, -100, -81, -114, -100, -116}));
                sb.append(AbstractC1387m.m2421h(new byte[]{-117, -100, 95, 33, -119}, new byte[]{-39, -35, 18, 27, -125, -100, 123, 92}));
                Locale locale = Locale.US;
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{39, -23, 87, 5, -11, -71, 87, -108, 39, -20, 112, 96}, new byte[]{7, -55, 3, 106, -127, -40, 59, -82}), AbstractC1031d.m1277g(j11)));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{83, 27, -62, 50, 47, -120, 83, -92, 86, 72, -99}, new byte[]{115, 59, -105, 65, 74, -20, 105, -124}), AbstractC1031d.m1277g(j13)));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{-107, -40, -60, -98, -93, -56, -42, 15, -41, -108, -32, -46, -30, -124, -55, 100}, new byte[]{-75, -8, -123, -24, -62, -95, -70, 110}), AbstractC1031d.m1277g(j12)));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{71, 53, -60, 113, -107, 28, -67, Base64.padSymbol, 71, 48, -65, 51, -110, 94, -3, 13}, new byte[]{103, 21, -111, 2, -12, 123, -40, 7}), Double.valueOf((j13 / j11) * 100.0d)));
                sb.append(AbstractC1387m.m2421h(new byte[]{8, -20, 48, -3, 111, -15, 41, -54, 69, -93, 14, -21, 34, -15}, new byte[]{40, -52, 124, -110, 24, -47, 100, -81}));
                sb.append(z9);
                sb.append("\n\n");
                sb.append(AbstractC1387m.m2421h(new byte[]{103, -33, 23, 71, -7, 53, -30, 12, 14, -30, 23, 77, -7, 58, -28, 5, 20, -69}, new byte[]{46, -79, 99, 34, -117, 91, -125, 96}));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{67, 69, 83, 64, -1, -126, -75, 62, 67, 64, 116, 37}, new byte[]{99, 101, 7, 47, -117, -29, -39, 4}), AbstractC1031d.m1277g(totalBytes2)));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{90, 82, -11, -111, -9, 36, 97, -67, 24, 30, -47, -35, -74, 104, 126, -42}, new byte[]{122, 114, -76, -25, -106, 77, 13, -36}), AbstractC1031d.m1277g(availableBytes2)));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{67, 26, -97, 89, 105, -44, 3, 16, 67, 31, -28, 27, 110, -106, 67, 32}, new byte[]{99, 58, -54, 42, 8, -77, 102, 42}), Double.valueOf(((totalBytes2 - availableBytes2) / totalBytes2) * 100.0d)));
                sb.append("\n");
                if (totalBytes > j10) {
                    sb.append(AbstractC1387m.m2421h(new byte[]{88, -22, -47, -3, 32, -48, -68, -45, Base64.padSymbol, -63, -47, -9, 32, -33, -70, -38, Base64.padSymbol, -70, -10, -36, 114, -3, -68, -51, 121, -69, -97, -110}, new byte[]{29, -110, -91, -104, 82, -66, -35, -65}));
                    sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{-13, 35, 75, 50, 12, 56, -96, -45, -13, 38, 108, 87}, new byte[]{-45, 3, 31, 93, 120, 89, -52, -23}), AbstractC1031d.m1277g(totalBytes)));
                    sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{-118, 120, 101, -101, -77, 67, 99, -94, -56, 52, 65, -41, -14, 15, 124, -55}, new byte[]{-86, 88, 36, -19, -46, 42, 15, -61}), AbstractC1031d.m1277g(availableBytes)));
                    sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{112, 30, 1, Base64.padSymbol, -33, -13, 58, -13, 112, 27, 122, ByteCompanionObject.MAX_VALUE, -40, -79, 122, -61}, new byte[]{80, 62, 84, 78, -66, -108, 95, -55}), Double.valueOf(((totalBytes - availableBytes) / totalBytes) * 100.0d)));
                    sb.append("\n");
                }
                sb.append(AbstractC1387m.m2421h(new byte[]{58, -105, 19, -10, 105, -49, 34, 27, 41, -112, 14, -25, 105, -46, 37, 1, 115}, new byte[]{121, -30, 97, -124, 12, -95, 86, 59}));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{-103, -80, -97, 116, -41, -79, -90, 112, -125, -80, -9, 98, -80}, new byte[]{-71, -112, -46, 17, -70, -34, -44, 9}), AbstractC1031d.m1277g(totalPss)));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{-5, -6, 87, -13, 32, -17, -5, -64, -5, -110, 124, -13, 36, -68, -83, ByteCompanionObject.MIN_VALUE, -88, -48}, new byte[]{-37, -38, 25, -110, 84, -122, -115, -91}), AbstractC1031d.m1277g(nativeHeapSize)));
                sb.append(String.format(locale, AbstractC1387m.m2421h(new byte[]{66, -53, 87, -80, -29, -52, 109, -2, 66, -93, 118, -80, -1, ByteCompanionObject.MIN_VALUE, 36, -80, 17, -31}, new byte[]{98, -21, 19, -47, -113, -70, 4, -107}), AbstractC1031d.m1277g(j14)));
                C1652b.m2750v(sb.toString());
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                String strM2421h2;
                int i14;
                String strM2421h3;
                int i15 = 2;
                switch (i11) {
                    case 0:
                        DisplayManager displayManager = (DisplayManager) this.f9614c.requireContext().getSystemService(AbstractC1387m.m2421h(new byte[]{-109, -89, -109, 118, 27, -48, 88}, new byte[]{-9, -50, -32, 6, 119, -79, 33, 13}));
                        if (displayManager == null) {
                            C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-16, 31, -64, 49, -52, 84, 80, -119, -43, 24, -46, 38, -59, 71, 9, -7, -119, 86, -35, 52, -52, 89}, new byte[]{-76, 118, -77, 65, -96, 53, 41, -60}), ColorText.RED);
                        } else {
                            Display[] displays = displayManager.getDisplays();
                            String strM2421h4 = AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE, -124, -48, 34, 42, 72, 87, 31, ByteCompanionObject.MAX_VALUE, -124, -51, 91, 94, 38, 58, 110, 3, -32, -51, 83, 94, 38, 62, 2, ByteCompanionObject.MAX_VALUE, -124, -48, 34, 42, 72, 87, 31, ByteCompanionObject.MAX_VALUE, -124}, new byte[]{66, -71, -19, 31, 23, 117, 106, 34});
                            ColorText colorText = ColorText.RED;
                            C1652b.m2751w(strM2421h4, colorText);
                            C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-120, -127, 91, 18, ByteCompanionObject.MAX_VALUE, 59, -76, 71, -81, -98, 67, 18, 106, 104, -22, 14}, new byte[]{-36, -18, 47, 115, 19, 27, -48, 46}) + displays.length, colorText);
                            int i16 = 0;
                            while (i16 < displays.length) {
                                Display display = displays[i16];
                                DisplayMetrics displayMetrics = new DisplayMetrics();
                                display.getMetrics(displayMetrics);
                                DisplayMetrics displayMetrics2 = new DisplayMetrics();
                                display.getRealMetrics(displayMetrics2);
                                Point point = new Point();
                                display.getSize(point);
                                Point point2 = new Point();
                                display.getRealSize(point2);
                                StringBuilder sb = new StringBuilder();
                                AbstractC1178q.m2086t(new byte[]{121, -125, -105, 45, 104, 115, 83, -77, 39, -34, -42, 97, 60, 115, 52}, new byte[]{84, -82, -70, 0, 69, 83, 23, -38}, sb, i16);
                                String strM2075i = AbstractC1178q.m2075i(new byte[]{-105, -96, -69, 56, -97, 41}, new byte[]{-73, -115, -106, 21, -78, 4, -88, 10}, sb);
                                ColorText colorText2 = ColorText.RED;
                                C1652b.m2751w(strM2075i, colorText2);
                                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{14, -56, -109, 60, -3, 42, -78, -79, 71, -116, -109, 60, -3, 55, -78}, new byte[]{103, -84, -77, 28, -35, 10, -110, -111}) + display.getDisplayId(), colorText2);
                                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{22, 98, -109, 93, 84, 34, -74, 47, 88, 35, -34, 24, 84, 63, -74}, new byte[]{120, 3, -2, 56, 116, 2, -106, 15}) + display.getName(), colorText2);
                                String strM2421h5 = AbstractC1387m.m2421h(new byte[]{-55, 124, 57, 74, 70, -17, -54, 90, -102, 40, 120, 30, 3, -14, -54}, new byte[]{-70, 8, 88, 62, 35, -49, -22, 122});
                                int state = display.getState();
                                if (state == 1) {
                                    strM2421h2 = AbstractC1387m.m2421h(new byte[]{-63, 73, 123}, new byte[]{-114, 15, Base64.padSymbol, 37, 117, 118, -117, -79});
                                } else if (state == i15) {
                                    byte[] bArr = new byte[i15];
                                    // fill-array-data instruction
                                    bArr[0] = -79;
                                    bArr[1] = 113;
                                    strM2421h2 = AbstractC1387m.m2421h(bArr, new byte[]{-2, 63, -126, -38, 53, -59, 12, 75});
                                } else if (state == 3) {
                                    strM2421h2 = AbstractC1387m.m2421h(new byte[]{-33, -89, -116, 8}, new byte[]{-101, -24, -42, 77, -117, -90, -45, -117});
                                } else if (state != 4) {
                                    StringBuilder sb2 = new StringBuilder();
                                    AbstractC1178q.m2086t(new byte[]{55, 105, -34, -32, -50, -67, 39, 12}, new byte[]{98, 39, -107, -82, -127, -22, 105, 36}, sb2, state);
                                    strM2421h2 = AbstractC1178q.m2075i(new byte[]{51}, new byte[]{26, -39, 97, -78, -27, 107, 59, -87}, sb2);
                                } else {
                                    strM2421h2 = AbstractC1387m.m2421h(new byte[]{-29, -49, -65, -51, 25, 66, 11, 116, -9, -59, -85, -52}, new byte[]{-89, ByteCompanionObject.MIN_VALUE, -27, -120, 70, 17, 94, 39});
                                }
                                C1652b.m2751w(strM2421h5.concat(strM2421h2), colorText2);
                                String strM2421h6 = AbstractC1387m.m2421h(new byte[]{-16, 67, 13, -40, 32, 64, 107, 6, -94, 12, 89, -103, 116, 20, 36}, new byte[]{-126, 44, 121, -71, 84, 41, 4, 104});
                                int rotation = display.getRotation();
                                if (rotation == 0) {
                                    i14 = 2;
                                    strM2421h3 = AbstractC1387m.m2421h(new byte[]{46, -1, -32, 121, 110, 125, 114, 13, 35, ByteCompanionObject.MIN_VALUE}, new byte[]{124, -80, -76, 56, 58, 52, Base64.padSymbol, 67});
                                } else if (rotation != 1) {
                                    i14 = 2;
                                    if (rotation == 2) {
                                        strM2421h3 = AbstractC1387m.m2421h(new byte[]{-117, 35, -28, 5, -74, 7, -3, -66, -122, 93, -120, 116}, new byte[]{-39, 108, -80, 68, -30, 78, -78, -16});
                                    } else if (rotation != 3) {
                                        StringBuilder sb3 = new StringBuilder();
                                        AbstractC1178q.m2086t(new byte[]{49, 20, -2, -96, -51, -57, -30, -87}, new byte[]{100, 90, -75, -18, -126, -112, -84, -127}, sb3, rotation);
                                        strM2421h3 = AbstractC1178q.m2075i(new byte[]{20}, new byte[]{Base64.padSymbol, 90, -102, 45, 75, 31, 54, -56}, sb3);
                                    } else {
                                        strM2421h3 = AbstractC1387m.m2421h(new byte[]{-110, 93, 89, -58, -26, 27, 69, -84, -97, 32, 58, -73}, new byte[]{-64, 18, 13, -121, -78, 82, 10, -30});
                                    }
                                } else {
                                    i14 = 2;
                                    strM2421h3 = AbstractC1387m.m2421h(new byte[]{-8, 55, -118, 25, 122, -14, 83, 52, -11, 65, -18}, new byte[]{-86, 120, -34, 88, 46, -69, 28, 122});
                                }
                                C1652b.m2751w(strM2421h6.concat(strM2421h3), colorText2);
                                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{68, -112, -10, -84, -60, -110, 70, 93, 30, -39, -84, -23, -60, -121, 2}, new byte[]{55, -7, -116, -55, -28, -70, 34, 45}) + point.x + AbstractC1387m.m2421h(new byte[]{-56, -93, 106}, new byte[]{-24, -37, 74, 97, 95, 70, -103, -70}) + point.y, colorText2);
                                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{56, -116, 123, -62, 112, -34, 4, -105, 98, -103, 98, -121, 30, -105}, new byte[]{74, -23, 26, -82, 35, -73, 126, -14}) + point2.x + AbstractC1387m.m2421h(new byte[]{72, 42, -127}, new byte[]{104, 82, -95, 122, -77, -79, -83, -72}) + point2.y, colorText2);
                                StringBuilder sb4 = new StringBuilder();
                                sb4.append(AbstractC1387m.m2421h(new byte[]{60, -45, 80, 38, 126, -117, 52, 121, 40, -33, 30, 117, 55, -62, 109}, new byte[]{88, -74, 62, 85, 23, -1, 77, Base64.padSymbol}));
                                sb4.append(displayMetrics.densityDpi);
                                C1652b.m2751w(sb4.toString(), colorText2);
                                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-39, -104, -96, -84, -6, -46, 59, 37, -99, -35, -18, -1, -77, -101, 98}, new byte[]{-67, -3, -50, -33, -109, -90, 66, 5}) + displayMetrics.density, colorText2);
                                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-107, 110, 8, -120, 95, Base64.padSymbol, Base64.padSymbol, -103, -114, ByteCompanionObject.MAX_VALUE, 16, -96, 107, 49, 115, -41, -57}, new byte[]{-25, 11, 105, -28, 27, 88, 83, -22}) + displayMetrics2.densityDpi, colorText2);
                                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-95, 44, 92, 12, -83, -85, -118, -113, -67, 56, 69, 69, -83, -71, -118}, new byte[]{-39, 72, 44, 101, -115, -124, -86, -10}) + displayMetrics2.xdpi + AbstractC1387m.m2421h(new byte[]{-5, 121, -63}, new byte[]{-37, 86, -31, 79, 20, -31, 110, 28}) + displayMetrics2.ydpi, colorText2);
                                StringBuilder sb5 = new StringBuilder();
                                sb5.append(AbstractC1387m.m2421h(new byte[]{-127, 8, -81, 101, -7, 59, 43, -110, -57, 68, -18, 34, -86, 38, 43, -126, -97}, new byte[]{-25, 100, -50, 2, -118, 27, 11, -78}));
                                sb5.append(Integer.toHexString(display.getFlags()));
                                C1652b.m2751w(sb5.toString(), colorText2);
                                C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{-56, -12, -6, -86, 18, 36, 0, -31, -56, -12, -6, -86, 18, 36, 0, -31, -56, -12, -6, -86, 18, 36, 0, -31, -56, -12, -6, -86, 18, 36, 0, -31}, new byte[]{-27, -39, -41, -121, 63, 9, 45, -52}));
                                i16++;
                                i15 = i14;
                            }
                            C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{-14, -30, -85, 59, 74, -16, -78, 68, -14, -30, -85, 59, 74, -16, -78, 68, -14, -30, -85, 59, 74, -16, -78, 68, -14, -30, -85, 59, 74, -16, -78, 68, -14}, new byte[]{-49, -33, -106, 6, 119, -51, -113, 121}));
                        }
                        break;
                    case 1:
                        C3281d c3281d = this.f9614c;
                        Class cls = Integer.TYPE;
                        try {
                            for (Method method : ActivityOptions.class.getDeclaredMethods()) {
                                if (method.getName().contains(AbstractC1387m.m2421h(new byte[]{114, -15, 1, -15, 67, -98, -3, -49, 98}, new byte[]{5, -104, 111, -107, 44, -23, -108, -95}))) {
                                    C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{88, 5, 45, -69, 55, -62, -6, 93, 106, 2, 55, -79, 105, -62}, new byte[]{30, 106, 88, -43, 83, -30, -105, 56}) + method.getName() + AbstractC1387m.m2421h(new byte[]{-7, -66, -78, -2, 31, 102, -31, 12, -7}, new byte[]{-39, -50, -45, -116, 126, 11, -110, 54}) + Arrays.toString(method.getParameterTypes()));
                                }
                            }
                        } catch (Exception e) {
                            C1652b.m2751w(e.getMessage(), ColorText.RED);
                        }
                        try {
                            Intent intent = new Intent(c3281d.requireContext(), (Class<?>) BlackActivity.class);
                            intent.addFlags(134742016);
                            ActivityOptions activityOptionsMakeBasic = ActivityOptions.makeBasic();
                            ActivityOptions.class.getMethod(AbstractC1387m.m2421h(new byte[]{-110, 16, 26, -27, -73, 50, 120, 54, -119, 34, 7, -57, -78, 40, 97, 60, -113, 18, 35, -58, -78, 34}, new byte[]{-31, 117, 110, -87, -42, 71, 22, 85}), cls).invoke(activityOptionsMakeBasic, 6);
                            AbstractC3656k.m5875u(c3281d.requireContext(), intent, activityOptionsMakeBasic.setLaunchBounds(new Rect(100, 100, 300, 600)).toBundle());
                        } catch (Exception e6) {
                            C1652b.m2751w(e6.getMessage(), ColorText.RED);
                        }
                        try {
                            Intent intent2 = new Intent(c3281d.requireContext(), (Class<?>) BlackActivity.class);
                            intent2.addFlags(268435456);
                            ActivityOptions activityOptionsMakeBasic2 = ActivityOptions.makeBasic();
                            activityOptionsMakeBasic2.setLaunchBounds(new Rect(100, 100, 300, 600));
                            try {
                                ActivityOptions.class.getMethod(AbstractC1387m.m2421h(new byte[]{26, 28, -68, 126, -109, 24, -8, Base64.padSymbol, 1, 46, -95, 92, -106, 2, -31, 55, 7, 30, -123, 93, -106, 8}, new byte[]{105, 121, -56, 50, -14, 109, -106, 94}), cls).invoke(activityOptionsMakeBasic2, 5);
                            } catch (Exception e10) {
                                C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{-57, -17, 81, 84, -85, 68, -44, -107, -9, -90, 82, 95, -96, 86, -99, -99, -15, -17, 83, 85, -96, 19, -112, -37}, new byte[]{-112, -122, 63, 48, -60, 51, -67, -5}) + e10.getMessage());
                            }
                            try {
                                ActivityOptions.class.getMethod(AbstractC1387m.m2421h(new byte[]{27, -117, -56, -27, 90, 98, 55, 95, 59, -115, -50, -45, 79, 96, 29, 89, 13, -113, -56, -45, 103, 97, 58, 78}, new byte[]{104, -18, -68, -74, 42, 14, 94, 43}), cls).invoke(activityOptionsMakeBasic2, 1);
                            } catch (Exception e11) {
                                C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{48, -17, -118, ByteCompanionObject.MIN_VALUE, 58, 10, -22, -22, 7, -6, -58, -113, 47, 67, -21, -32, 7, -65, -53, -55}, new byte[]{99, -97, -26, -23, 78, 42, -121, -123}) + e11.getMessage());
                            }
                            c3281d.startActivity(intent2, activityOptionsMakeBasic2.toBundle());
                        } catch (Exception e12) {
                            C1652b.m2751w(e12.getMessage(), ColorText.RED);
                            return;
                        }
                        break;
                    case 2:
                        m5216a(view2);
                        break;
                    default:
                        new C1445y2(AbstractC1387m.m2421h(new byte[]{119, -21}, new byte[]{Base64.padSymbol, -69, -11, 93, -90, -29, -54, 8}), (AppCompatActivity) this.f9614c.getActivity());
                        break;
                }
            }
        });
    }
}

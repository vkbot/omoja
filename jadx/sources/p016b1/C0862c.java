package p016b1;

import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import android.os.Bundle;
import android.util.Log;
import com.example.navistart.APInAct;
import com.example.navistart.MockGPS.MockGpsService;
import com.example.navistart.OverlayService;
import com.example.navistart.R;
import com.google.protobuf.AbstractC1178q;
import java.util.Objects;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p032c7.RunnableC1001e;
import p043d6.C1308g;
import p047e0.AbstractC1387m;
import p078h0.C1652b;
import p138m7.C2411j;
import p173q0.C3056t;
import p217v1.C3326d;
import p225w0.C3445b1;
import p225w0.C3474l0;

/* JADX INFO: renamed from: b1.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0862c extends BroadcastReceiver {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f544a;

    /* JADX INFO: renamed from: b */
    public final Object f545b;

    public C0862c() {
        this.f544a = 3;
        this.f545b = AbstractC1387m.m2421h(new byte[]{-18, 29, 99, 73, -108, -31, -10, 58, -17, 7}, new byte[]{-67, 68, 48, 36, -25, -122, -37, 120});
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        boolean z9 = false;
        switch (this.f544a) {
            case 0:
                if (AbstractC1387m.m2421h(new byte[]{22, -108, 46, -10, -3, -8, -74, 51, 28, -49, 121, -18, -14, -14, -73, 46, 9, ByteCompanionObject.MIN_VALUE, 112, -4, -78, -37, -101, 24, 45, -84, 65, -33, -61, -60, -105, 23, 32, -72}, new byte[]{100, -31, 0, -113, -100, -106, -46, 86}).equals(intent.getAction()) && ((C0865f) this.f545b).f558f.equals(intent.getStringExtra(AbstractC1387m.m2421h(new byte[]{55, -51, 106, -96, -71}, new byte[]{89, -94, 4, -61, -36, 57, 38, -64})))) {
                    C0865f c0865f = (C0865f) this.f545b;
                    if (c0865f.f557e.isEmpty() || c0865f.f559g != null || c0865f.f564l || c0865f.f565m) {
                        return;
                    }
                    c0865f.f554b.removeCallbacks(c0865f.f567o);
                    Intent component = new Intent().setComponent(new ComponentName(C0865f.f548t, C0865f.f549u));
                    try {
                        c0865f.f565m = true;
                        boolean zBindService = c0865f.f553a.bindService(component, c0865f.f570r, 1);
                        c0865f.f564l = zBindService;
                        if (zBindService) {
                            return;
                        }
                        c0865f.f565m = false;
                        c0865f.m921d();
                        return;
                    } catch (RuntimeException e) {
                        c0865f.f564l = false;
                        c0865f.f565m = false;
                        Log.w(C0865f.f547s, AbstractC1387m.m2421h(new byte[]{71, -53, 118, 89, -16, -67, -96, -15, 123, -118, 109, 89, -7, -75, -7, -13, 104, -38, 32, 67, -14, -82, -94, -9, 106, -49, 32, 89, -28, -4, -95, -16, 104, -36, 97, 89, -5, -67, -74, -14, 108}, new byte[]{9, -86, 0, 48, -105, -36, -44, -98}), e);
                        c0865f.m921d();
                        return;
                    }
                }
                return;
            case 1:
                if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                    ((C1308g) this.f545b).f3119d.post(new RunnableC1001e(this, intent.getIntExtra("plugged", -1) <= 0, 2));
                    return;
                }
                return;
            case 2:
                Log.d(AbstractC1387m.m2421h(new byte[]{31, -57, 13, 16, -64, 0, 94}, new byte[]{94, -105, 68, 126, -127, 99, 42, 83}), AbstractC1387m.m2421h(new byte[]{-84, -70, 43, -34, -122, 1, 83, 81, -90}, new byte[]{-61, -44, 121, -69, -27, 100, 58, 39}));
                APInAct aPInAct = (APInAct) this.f545b;
                if (aPInAct.f1204b != null) {
                    if (AbstractC1387m.m2421h(new byte[]{-117, -78, -104, -98, 30, 87, 6, -57, -58, -68, -123, -64, 0, 70, 14, -44, -115, -13, -76, -13, 39, 123, 46, -24, -73, -108, -69, -29, 39, 115, 45, -22, -73, -113, -80, -29, 38, 126, 53}, new byte[]{-24, -35, -11, -80, 115, 50, 97, -90}).equals(intent.getAction())) {
                        Bundle extras = intent.getExtras();
                        Objects.requireNonNull(extras);
                        String string = extras.getString(AbstractC1387m.m2421h(new byte[]{45, 123, 109, 10, 24, -126}, new byte[]{95, 30, 30, ByteCompanionObject.MAX_VALUE, 116, -10, 118, -115}));
                        if (AbstractC1387m.m2421h(new byte[]{91, -52, 14, -28, -28, 18, 36}, new byte[]{18, -126, 93, -80, -91, 94, 104, -47}).equals(string)) {
                            C3326d.m5242a().m5243b().m5239a(aPInAct.getResources().getString(R.string.install_go));
                        }
                        if (AbstractC1387m.m2421h(new byte[]{-76, 82, 29, 62}, new byte[]{-16, 29, 83, 123, 107, 66, -79, 58}).equals(string)) {
                            C3326d.m5242a().m5243b().m5239a(aPInAct.getResources().getString(R.string.install_done));
                            C3326d.m5242a().m5243b().f9725b.postValue(Boolean.TRUE);
                        }
                        if (AbstractC1387m.m2421h(new byte[]{-86, 18, 125, 36, -76}, new byte[]{-17, 64, 47, 107, -26, -125, 4, -49}).equals(string)) {
                            C3326d.m5242a().m5243b().m5239a(aPInAct.getResources().getString(R.string.install_error));
                            C3326d.m5242a().m5243b().f9725b.postValue(Boolean.TRUE);
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            case 3:
                Log.e((String) this.f545b, AbstractC1387m.m2421h(new byte[]{-72, -51, -82, -14, -64, -94, -30, 67, -78}, new byte[]{-41, -93, -4, -105, -93, -57, -117, 53}));
                C1652b.m2734a();
                C1652b.m2742l().mo2693a(intent);
                return;
            case 4:
                String action = new Intent(intent).getAction();
                if (action != null && action.equals(AbstractC1387m.m2421h(new byte[]{-19, 60, -112, 117, Base64.padSymbol, -2, -35, 17, -2, 63, -104, 117, 54, -25, -54, 21, -3, 39, -100, 41, 44, -88, -50, 9, -32, 125, -82, 43, 49, -27, -44, 82, -56, 60, -98, 46, 43}, new byte[]{-114, 83, -3, 91, 88, -122, -68, 124})) && C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{119, -47, 113, -29, 108, -6, -75, 63, 114, -64, 108, -39, 82, -30, -74, 9, 87, -10}, new byte[]{4, -95, 24, -68, 13, -111, -63, 86}), false)) {
                    C1652b.m2734a();
                    C1652b.m2747q().mo5404c();
                    OverlayService overlayService = (OverlayService) this.f545b;
                    OverlayService overlayService2 = OverlayService.f1499f;
                    overlayService.m1514b();
                    return;
                }
                return;
            case 5:
                C2411j c2411j = (C2411j) this.f545b;
                boolean z10 = c2411j.f6528d;
                if (AbstractC1387m.m2421h(new byte[]{50, -57, -22, -61, 124, 24, -10, -71, Base64.padSymbol, -52, -6, -97, 100, 24, -12, -2, 125, -2, -57, -9, 90, 46, -63, -61, 18, -3, -53, -18, 80, 57, -45, -39, 20, -20, -54}, new byte[]{83, -87, -114, -79, 19, 113, -110, -105}).equals(intent.getAction())) {
                    int intExtra = intent.getIntExtra(AbstractC1387m.m2421h(new byte[]{-96, -113, -33, 33, 42, -95, 23, 123, -93, -125}, new byte[]{-41, -26, -71, 72, 117, -46, 99, 26}), 4);
                    c2411j.f6533i = intExtra;
                    String strM2421h = AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, ByteCompanionObject.MAX_VALUE, -64, 28, -2, -67, -29, -17, -69, 115, -18, 16, -58, -94, -31, -6}, new byte[]{-41, 22, -90, 117, -86, -46, -124, -120});
                    StringBuilder sb = new StringBuilder();
                    AbstractC1178q.m2086t(new byte[]{-113, 64, -119, 53, 124, -12, 118, 67, -71, 93, -63, 83, 118, -68, 100, 89, -65, 76, -64, 73, 53}, new byte[]{-40, 41, -92, 115, 21, -44, 5, 55}, sb, intExtra);
                    sb.append(AbstractC1387m.m2421h(new byte[]{-112, 23, -78, -82, -104, -97, -98, -112, -7, 89, -89, -83, -122, -99, -97, -39}, new byte[]{-68, 55, -58, -49, -22, -8, -5, -28}));
                    sb.append(z10);
                    Log.d(strM2421h, sb.toString());
                    if (!z10 ? intExtra != 1 : intExtra != 3) {
                        c2411j.m3770b();
                        return;
                    } else if (intExtra == 4) {
                        c2411j.m3772d();
                        return;
                    } else {
                        c2411j.m3773e(c2411j.f6535k ? c2411j.f6531g : c2411j.f6529e);
                        return;
                    }
                }
                return;
            case 6:
                C3056t c3056t = (C3056t) this.f545b;
                if (AbstractC1387m.m2421h(new byte[]{-111, 63, 62, 44, -106, -119, 98, -120, -126, 60, 54, 44, -99, -112, 117, -116, -127, 36, 50, 112, -121, -33, 78, -118, -111, 59, 20, 82, -96, -33, 86, -74, -80, 15, 3, 71, -95, -68, 74, -74, -95, 25, 28, 76}, new byte[]{-14, 80, 83, 2, -13, -15, 3, -27}).equals(intent.getAction())) {
                    UsbDevice usbDevice = (UsbDevice) intent.getParcelableExtra(AbstractC1387m.m2421h(new byte[]{-124, -91, -53, -118, -93, 34}, new byte[]{-32, -64, -67, -29, -64, 71, 35, -44}));
                    boolean booleanExtra = intent.getBooleanExtra(AbstractC1387m.m2421h(new byte[]{-95, 31, -101, 14, -19, -110, -28, -8, -66, 20}, new byte[]{-47, 122, -23, 99, -124, -31, -105, -111}), false);
                    MockGpsService mockGpsService = c3056t.f8663b;
                    Context context2 = c3056t.f8662a;
                    String string2 = booleanExtra ? context2.getString(R.string.mock_gps_usb_permission_granted) : context2.getString(R.string.mock_gps_usb_permission_denied);
                    String strM4899f = c3056t.m4899f(usbDevice);
                    mockGpsService.getClass();
                    MockGpsService.m1454j(string2, strM4899f, false);
                    return;
                }
                return;
            default:
                C3445b1 c3445b1 = (C3445b1) this.f545b;
                synchronized (c3445b1) {
                    try {
                        if (!c3445b1.f9936e && intent != null) {
                            c3445b1.f9937f++;
                            try {
                                if (AbstractC1387m.m2421h(new byte[]{-53, -41, -91, 103, -60, -31, 100, -64, -56, -43, -76, 112, -33, -25, 111, -102, -62, -105, -96, 113, -54, -8, 116, -117, -40, -105, -96, 118, -33, -31, 111, ByteCompanionObject.MIN_VALUE, -124, -22, -107, 84, -1, -51, 95, -83, -30, -8, -113, 82, -18, -52}, new byte[]{-86, -71, -63, 21, -85, -120, 0, -18}).equals(intent.getAction())) {
                                    int intExtra2 = intent.getIntExtra(AbstractC1387m.m2421h(new byte[]{-98, -60, 82, 47, 58, 78, 98, -37, -99, -58, 67, 56, 33, 72, 105, -127, -105, -124, 87, 57, 52, 87, 114, -112, -115, -124, 83, 37, 33, 85, 103, -37, -84, -2, 119, 9, 16}, new byte[]{-1, -86, 54, 93, 85, 39, 6, -11}), Integer.MIN_VALUE);
                                    if (intExtra2 == 10 || intExtra2 == 13) {
                                        c3445b1.f9934c.m5441f0("");
                                    }
                                    return;
                                }
                                BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra(AbstractC1387m.m2421h(new byte[]{-39, -12, -40, -118, 35, -24, -101, -13, -38, -10, -55, -99, 56, -18, -112, -87, -48, -76, -40, -99, 58, -24, -100, -72, -106, -1, -60, -116, 62, -32, -47, -103, -3, -52, -11, -69, 9}, new byte[]{-72, -102, -68, -8, 76, -127, -1, -35}));
                                if (bluetoothDevice == null) {
                                    return;
                                }
                                if (AbstractC1387m.m2421h(new byte[]{50, 9, 70, -10, -45, -113, -62, -94, 49, 11, 87, -31, -56, -119, -55, -8, 59, 73, 70, -31, -54, -113, -59, -23, 125, 6, 65, -16, -43, -119, -56, -94, 18, 36, 110, -37, -1, -87, -24, -62, 22, 36, 118, -63, -8}, new byte[]{83, 103, 34, -124, -68, -26, -90, -116}).equals(intent.getAction())) {
                                    BluetoothClass bluetoothClass = bluetoothDevice.getBluetoothClass();
                                    if (bluetoothClass != null && bluetoothClass.getMajorDeviceClass() == 512) {
                                        z9 = true;
                                    }
                                    if (z9) {
                                        c3445b1.f9934c.m5440e0(bluetoothDevice.getAddress());
                                    }
                                } else if (AbstractC1387m.m2421h(new byte[]{103, -108, 107, -107, -79, -35, -56, -83, 100, -106, 122, -126, -86, -37, -61, -9, 110, -44, 107, -126, -88, -35, -49, -26, 40, -101, 108, -109, -73, -37, -62, -83, 71, -71, 67, -72, -102, -3, -1, -64, 73, -76, 65, -94, -99, -32, -23, -57}, new byte[]{6, -6, 15, -25, -34, -76, -84, -125}).equals(intent.getAction())) {
                                    C3474l0 c3474l0 = c3445b1.f9934c;
                                    String address = bluetoothDevice.getAddress();
                                    BluetoothClass bluetoothClass2 = bluetoothDevice.getBluetoothClass();
                                    if (bluetoothClass2 != null && bluetoothClass2.getMajorDeviceClass() == 512) {
                                        z9 = true;
                                    }
                                    c3474l0.m5439d0(address, z9);
                                }
                                return;
                            } catch (RuntimeException unused) {
                                c3445b1.f9934c.m5441f0("");
                                Log.w(AbstractC1387m.m2421h(new byte[]{-31, -91, 105, 38, -81, 18, -58, -45, -39, -81, 66, 42, -91, 41}, new byte[]{-73, -54, 0, 69, -54, 66, -82, -68}), AbstractC1387m.m2421h(new byte[]{111, -101, 42, 124, -67, 28, -72, -36, 85, -43, 57, 123, -80, 29, -72, -40, 82, -102, 37, 123, -15, 26, -9, -58, 84, -112, 40, 106, -72, 22, -10, -120, 73, -127, 42, 106, -76}, new byte[]{58, -11, 75, 30, -47, 121, -104, -88}));
                            }
                        }
                        return;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
        }
    }

    public /* synthetic */ C0862c(int i10, Object obj) {
        this.f544a = i10;
        this.f545b = obj;
    }
}

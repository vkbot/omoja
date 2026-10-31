package com.journeyapps.barcodescanner;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.media.C0090h;
import android.util.Log;
import android.view.KeyEvent;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.example.navistart.R;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;
import p022b7.C0914j;
import p022b7.C0920p;
import p022b7.RunnableC0911g;
import p032c7.C1003g;
import p032c7.C1006j;
import p043d6.AbstractC1306e;
import p043d6.AbstractC1307f;
import p043d6.C1308g;
import p184r5.C3105c;
import p260z5.C3752h;
import p260z5.EnumC3745a;
import p260z5.EnumC3748d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class CaptureActivity extends Activity {

    /* JADX INFO: renamed from: b */
    public C0914j f2814b;

    /* JADX INFO: renamed from: c */
    public DecoratedBarcodeView f2815c;

    /* JADX WARN: Code duplicated, block: B:17:0x0069  */
    /* JADX WARN: Code duplicated, block: B:42:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d3  */
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        boolean z9;
        Set setNoneOf;
        int intExtra;
        int i10;
        super.onCreate(bundle);
        setContentView(R.layout.zxing_capture);
        this.f2815c = (DecoratedBarcodeView) findViewById(R.id.zxing_barcode_scanner);
        DecoratedBarcodeView decoratedBarcodeView = this.f2815c;
        C0914j c0914j = new C0914j(this, decoratedBarcodeView);
        this.f2814b = c0914j;
        Intent intent = getIntent();
        getWindow().addFlags(128);
        if (bundle != null) {
            c0914j.f742c = bundle.getInt("SAVED_ORIENTATION_LOCK", -1);
        }
        if (intent != null) {
            if (intent.getBooleanExtra("SCAN_ORIENTATION_LOCKED", true)) {
                if (c0914j.f742c == -1) {
                    int rotation = getWindowManager().getDefaultDisplay().getRotation();
                    int i11 = getResources().getConfiguration().orientation;
                    if (i11 == 2) {
                        if (rotation == 0 || rotation == 1) {
                            i10 = 0;
                        } else {
                            i10 = 8;
                        }
                    } else if (i11 == 1) {
                        i10 = (rotation == 0 || rotation == 3) ? 1 : 9;
                    } else {
                        i10 = 0;
                    }
                    c0914j.f742c = i10;
                }
                setRequestedOrientation(c0914j.f742c);
            }
            if ("com.google.zxing.client.android.SCAN".equals(intent.getAction())) {
                Pattern pattern = AbstractC1306e.f3113a;
                String stringExtra = intent.getStringExtra("SCAN_FORMATS");
                EnumMap enumMap = null;
                List listAsList = stringExtra != null ? Arrays.asList(AbstractC1306e.f3113a.split(stringExtra)) : null;
                String stringExtra2 = intent.getStringExtra("SCAN_MODE");
                if (listAsList != null) {
                    setNoneOf = EnumSet.noneOf(EnumC3745a.class);
                    try {
                        Iterator it = listAsList.iterator();
                        while (it.hasNext()) {
                            setNoneOf.add(EnumC3745a.valueOf((String) it.next()));
                        }
                    } catch (IllegalArgumentException unused) {
                        if (stringExtra2 != null) {
                            setNoneOf = (Set) AbstractC1306e.f3114b.get(stringExtra2);
                        } else {
                            setNoneOf = null;
                        }
                    }
                } else if (stringExtra2 != null) {
                    setNoneOf = (Set) AbstractC1306e.f3114b.get(stringExtra2);
                } else {
                    setNoneOf = null;
                }
                int i12 = AbstractC1307f.f3115a;
                Bundle extras = intent.getExtras();
                if (extras != null && !extras.isEmpty()) {
                    enumMap = new EnumMap(EnumC3748d.class);
                    for (EnumC3748d enumC3748d : EnumC3748d.values()) {
                        if (enumC3748d != EnumC3748d.f11176f && enumC3748d != EnumC3748d.f11181k && enumC3748d != EnumC3748d.f11174d) {
                            String strName = enumC3748d.name();
                            Class cls = enumC3748d.f11184b;
                            if (extras.containsKey(strName)) {
                                if (cls.equals(Void.class)) {
                                    enumMap.put(enumC3748d, Boolean.TRUE);
                                } else {
                                    Object obj = extras.get(strName);
                                    if (cls.isInstance(obj)) {
                                        enumMap.put(enumC3748d, obj);
                                    } else {
                                        Log.w("f", "Ignoring hint " + enumC3748d + " because it is not assignable from " + obj);
                                    }
                                }
                            }
                        }
                    }
                    Log.i("f", "Hints from the Intent: " + enumMap);
                }
                C1006j c1006j = new C1006j();
                if (intent.hasExtra("SCAN_CAMERA_ID") && (intExtra = intent.getIntExtra("SCAN_CAMERA_ID", -1)) >= 0) {
                    c1006j.f1005a = intExtra;
                }
                if (intent.hasExtra("TORCH_ENABLED") && intent.getBooleanExtra("TORCH_ENABLED", false)) {
                    decoratedBarcodeView.f2816b.setTorch(true);
                }
                String stringExtra3 = intent.getStringExtra("PROMPT_MESSAGE");
                if (stringExtra3 != null) {
                    decoratedBarcodeView.setStatusText(stringExtra3);
                }
                int intExtra2 = intent.getIntExtra("SCAN_TYPE", 0);
                String stringExtra4 = intent.getStringExtra("CHARACTER_SET");
                new C3752h().m5986c(enumMap);
                decoratedBarcodeView.f2816b.setCameraSettings(c1006j);
                BarcodeView barcodeView = decoratedBarcodeView.f2816b;
                C0920p c0920p = new C0920p(0);
                c0920p.f769c = setNoneOf;
                c0920p.f770d = enumMap;
                c0920p.f771e = stringExtra4;
                c0920p.f768b = intExtra2;
                barcodeView.setDecoderFactory(c0920p);
            }
            if (!intent.getBooleanExtra("BEEP_ENABLED", true)) {
                c0914j.f748i.f3111a = false;
            }
            if (intent.hasExtra("SHOW_MISSING_CAMERA_PERMISSION_DIALOG")) {
                boolean booleanExtra = intent.getBooleanExtra("SHOW_MISSING_CAMERA_PERMISSION_DIALOG", true);
                String stringExtra5 = intent.getStringExtra("MISSING_CAMERA_PERMISSION_DIALOG_MESSAGE");
                c0914j.f744e = booleanExtra;
                if (stringExtra5 == null) {
                    stringExtra5 = "";
                }
                c0914j.f745f = stringExtra5;
            }
            if (intent.hasExtra("TIMEOUT")) {
                z9 = true;
                c0914j.f749j.postDelayed(new RunnableC0911g(c0914j, 1), intent.getLongExtra("TIMEOUT", 0L));
            } else {
                z9 = true;
            }
            if (intent.getBooleanExtra("BARCODE_IMAGE_ENABLED", false)) {
                c0914j.f743d = z9;
            }
        }
        C0914j c0914j2 = this.f2814b;
        DecoratedBarcodeView decoratedBarcodeView2 = c0914j2.f741b;
        C3105c c3105c = c0914j2.f751l;
        BarcodeView barcodeView2 = decoratedBarcodeView2.f2816b;
        C0090h c0090h = new C0090h(2, decoratedBarcodeView2, c3105c);
        barcodeView2.f2809B = 2;
        barcodeView2.f2810C = c0090h;
        barcodeView2.m2189h();
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        C0914j c0914j = this.f2814b;
        c0914j.f746g = true;
        c0914j.f747h.m2355a();
        c0914j.f749j.removeCallbacksAndMessages(null);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i10, KeyEvent keyEvent) {
        return this.f2815c.onKeyDown(i10, keyEvent) || super.onKeyDown(i10, keyEvent);
    }

    @Override // android.app.Activity
    public final void onPause() {
        super.onPause();
        C0914j c0914j = this.f2814b;
        c0914j.f747h.m2355a();
        BarcodeView barcodeView = c0914j.f741b.f2816b;
        C1003g cameraInstance = barcodeView.getCameraInstance();
        barcodeView.m2188g();
        long jNanoTime = System.nanoTime();
        while (cameraInstance != null && !cameraInstance.f983g && System.nanoTime() - jNanoTime <= 2000000000) {
            try {
                Thread.sleep(1L);
            } catch (InterruptedException unused) {
                return;
            }
        }
    }

    @Override // android.app.Activity
    public final void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        C0914j c0914j = this.f2814b;
        c0914j.getClass();
        if (i10 == 250) {
            if (iArr.length > 0 && iArr[0] == 0) {
                c0914j.f741b.f2816b.m1047c();
                return;
            }
            Intent intent = new Intent("com.google.zxing.client.android.SCAN");
            intent.putExtra("MISSING_CAMERA_PERMISSION", true);
            c0914j.f740a.setResult(0, intent);
            if (c0914j.f744e) {
                c0914j.m1051b(c0914j.f745f);
            } else {
                c0914j.m1050a();
            }
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        C0914j c0914j = this.f2814b;
        CaptureActivity captureActivity = c0914j.f740a;
        if (ContextCompat.checkSelfPermission(captureActivity, "android.permission.CAMERA") == 0) {
            c0914j.f741b.f2816b.m1047c();
        } else if (!c0914j.f752m) {
            ActivityCompat.requestPermissions(captureActivity, new String[]{"android.permission.CAMERA"}, 250);
            c0914j.f752m = true;
        }
        C1308g c1308g = c0914j.f747h;
        if (!c1308g.f3118c) {
            c1308g.f3116a.registerReceiver(c1308g.f3117b, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            c1308g.f3118c = true;
        }
        Handler handler = c1308g.f3119d;
        handler.removeCallbacksAndMessages(null);
        if (c1308g.f3121f) {
            handler.postDelayed(c1308g.f3120e, 300000L);
        }
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("SAVED_ORIENTATION_LOCK", this.f2814b.f742c);
    }
}

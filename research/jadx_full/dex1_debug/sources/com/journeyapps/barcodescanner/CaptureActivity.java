package com.journeyapps.barcodescanner;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.KeyEvent;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.ItemTouchHelper$Callback;
import b7.g;
import b7.j;
import b7.p;
import d6.e;
import d6.f;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;
import r5.c;
import z5.a;
import z5.d;
import z5.h;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CaptureActivity extends Activity {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public j f1587b;
    public DecoratedBarcodeView c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:17:0x0069  */
    /* JADX WARN: Code duplicated, block: B:42:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d3  */
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        boolean z8;
        Set setNoneOf;
        int intExtra;
        int i9;
        super.onCreate(bundle);
        setContentView(2131493159);
        this.c = (DecoratedBarcodeView) findViewById(2131297787);
        DecoratedBarcodeView decoratedBarcodeView = this.c;
        j jVar = new j(this, decoratedBarcodeView);
        this.f1587b = jVar;
        Intent intent = getIntent();
        getWindow().addFlags(128);
        if (bundle != null) {
            jVar.c = bundle.getInt("SAVED_ORIENTATION_LOCK", -1);
        }
        if (intent != null) {
            if (intent.getBooleanExtra("SCAN_ORIENTATION_LOCKED", true)) {
                if (jVar.c == -1) {
                    int rotation = getWindowManager().getDefaultDisplay().getRotation();
                    int i10 = getResources().getConfiguration().orientation;
                    if (i10 == 2) {
                        if (rotation == 0 || rotation == 1) {
                            i9 = 0;
                        } else {
                            i9 = 8;
                        }
                    } else if (i10 == 1) {
                        i9 = (rotation == 0 || rotation == 3) ? 1 : 9;
                    } else {
                        i9 = 0;
                    }
                    jVar.c = i9;
                }
                setRequestedOrientation(jVar.c);
            }
            if ("com.google.zxing.client.android.SCAN".equals(intent.getAction())) {
                Pattern pattern = e.f1782a;
                String stringExtra = intent.getStringExtra("SCAN_FORMATS");
                EnumMap enumMap = null;
                List listAsList = stringExtra != null ? Arrays.asList(e.f1782a.split(stringExtra)) : null;
                String stringExtra2 = intent.getStringExtra("SCAN_MODE");
                if (listAsList != null) {
                    setNoneOf = EnumSet.noneOf(a.class);
                    try {
                        Iterator it = listAsList.iterator();
                        while (it.hasNext()) {
                            setNoneOf.add(a.valueOf((String) it.next()));
                        }
                    } catch (IllegalArgumentException unused) {
                        if (stringExtra2 != null) {
                            setNoneOf = (Set) e.f1783b.get(stringExtra2);
                        } else {
                            setNoneOf = null;
                        }
                    }
                } else if (stringExtra2 != null) {
                    setNoneOf = (Set) e.f1783b.get(stringExtra2);
                } else {
                    setNoneOf = null;
                }
                int i11 = f.f1784a;
                Bundle extras = intent.getExtras();
                if (extras != null && !extras.isEmpty()) {
                    enumMap = new EnumMap(d.class);
                    for (d dVar : d.values()) {
                        if (dVar != d.f6315f && dVar != d.f6320k && dVar != d.d) {
                            String strName = dVar.name();
                            Class cls = dVar.f6323b;
                            if (extras.containsKey(strName)) {
                                if (cls.equals(Void.class)) {
                                    enumMap.put(dVar, Boolean.TRUE);
                                } else {
                                    Object obj = extras.get(strName);
                                    if (cls.isInstance(obj)) {
                                        enumMap.put(dVar, obj);
                                    } else {
                                        Log.w("f", "Ignoring hint " + dVar + " because it is not assignable from " + obj);
                                    }
                                }
                            }
                        }
                    }
                    Log.i("f", "Hints from the Intent: " + enumMap);
                }
                c7.j jVar2 = new c7.j();
                if (intent.hasExtra("SCAN_CAMERA_ID") && (intExtra = intent.getIntExtra("SCAN_CAMERA_ID", -1)) >= 0) {
                    jVar2.f537a = intExtra;
                }
                if (intent.hasExtra("TORCH_ENABLED") && intent.getBooleanExtra("TORCH_ENABLED", false)) {
                    decoratedBarcodeView.f1588b.setTorch(true);
                }
                String stringExtra3 = intent.getStringExtra("PROMPT_MESSAGE");
                if (stringExtra3 != null) {
                    decoratedBarcodeView.setStatusText(stringExtra3);
                }
                int intExtra2 = intent.getIntExtra("SCAN_TYPE", 0);
                String stringExtra4 = intent.getStringExtra("CHARACTER_SET");
                new h().c(enumMap);
                decoratedBarcodeView.f1588b.setCameraSettings(jVar2);
                BarcodeView barcodeView = decoratedBarcodeView.f1588b;
                p pVar = new p(0);
                pVar.c = setNoneOf;
                pVar.d = enumMap;
                pVar.e = stringExtra4;
                pVar.f385b = intExtra2;
                barcodeView.setDecoderFactory(pVar);
            }
            if (!intent.getBooleanExtra("BEEP_ENABLED", true)) {
                jVar.f368i.f1780a = false;
            }
            if (intent.hasExtra("SHOW_MISSING_CAMERA_PERMISSION_DIALOG")) {
                boolean booleanExtra = intent.getBooleanExtra("SHOW_MISSING_CAMERA_PERMISSION_DIALOG", true);
                String stringExtra5 = intent.getStringExtra("MISSING_CAMERA_PERMISSION_DIALOG_MESSAGE");
                jVar.e = booleanExtra;
                if (stringExtra5 == null) {
                    stringExtra5 = "";
                }
                jVar.f365f = stringExtra5;
            }
            if (intent.hasExtra("TIMEOUT")) {
                z8 = true;
                jVar.f369j.postDelayed(new g(jVar, 1), intent.getLongExtra("TIMEOUT", 0L));
            } else {
                z8 = true;
            }
            if (intent.getBooleanExtra("BARCODE_IMAGE_ENABLED", false)) {
                jVar.d = z8;
            }
        }
        j jVar3 = this.f1587b;
        DecoratedBarcodeView decoratedBarcodeView2 = jVar3.f364b;
        c cVar = jVar3.f371l;
        BarcodeView barcodeView2 = decoratedBarcodeView2.f1588b;
        android.support.v4.media.h hVar = new android.support.v4.media.h(2, decoratedBarcodeView2, cVar);
        barcodeView2.B = 2;
        barcodeView2.C = hVar;
        barcodeView2.h();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        j jVar = this.f1587b;
        jVar.f366g = true;
        jVar.f367h.a();
        jVar.f369j.removeCallbacksAndMessages(null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Activity, android.view.KeyEvent$Callback
    public final boolean onKeyDown(int i9, KeyEvent keyEvent) {
        return this.c.onKeyDown(i9, keyEvent) || super.onKeyDown(i9, keyEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Activity
    public final void onPause() {
        super.onPause();
        j jVar = this.f1587b;
        jVar.f367h.a();
        BarcodeView barcodeView = jVar.f364b.f1588b;
        c7.g cameraInstance = barcodeView.getCameraInstance();
        barcodeView.g();
        long jNanoTime = System.nanoTime();
        while (cameraInstance != null && !cameraInstance.f519g && System.nanoTime() - jNanoTime <= 2000000000) {
            try {
                Thread.sleep(1L);
            } catch (InterruptedException unused) {
                return;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Activity
    public final void onRequestPermissionsResult(int i9, String[] strArr, int[] iArr) {
        j jVar = this.f1587b;
        jVar.getClass();
        if (i9 == 250) {
            if (iArr.length > 0 && iArr[0] == 0) {
                jVar.f364b.f1588b.c();
                return;
            }
            Intent intent = new Intent("com.google.zxing.client.android.SCAN");
            intent.putExtra("MISSING_CAMERA_PERMISSION", true);
            jVar.f363a.setResult(0, intent);
            if (jVar.e) {
                jVar.b(jVar.f365f);
            } else {
                jVar.a();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        j jVar = this.f1587b;
        CaptureActivity captureActivity = jVar.f363a;
        if (ContextCompat.checkSelfPermission(captureActivity, "android.permission.CAMERA") == 0) {
            jVar.f364b.f1588b.c();
        } else if (!jVar.f372m) {
            ActivityCompat.requestPermissions(captureActivity, new String[]{"android.permission.CAMERA"}, ItemTouchHelper$Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
            jVar.f372m = true;
        }
        d6.g gVar = jVar.f367h;
        if (!gVar.c) {
            gVar.f1785a.registerReceiver(gVar.f1786b, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            gVar.c = true;
        }
        Handler handler = gVar.d;
        handler.removeCallbacksAndMessages(null);
        if (gVar.f1787f) {
            handler.postDelayed(gVar.e, 300000L);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("SAVED_ORIENTATION_LOCK", this.f1587b.c);
    }
}

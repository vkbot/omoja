package com.example.navistart;

import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.lifecycle.Observer;
import androidx.navigation.ViewOnClickListenerC0675c;
import com.example.navistart.APInAct;
import com.google.protobuf.AbstractC1178q;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p002a1.RunnableC0003a;
import p016b1.C0862c;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.AbstractC1434w;
import p047e0.C1440x1;
import p047e0.RunnableC1332b;
import p078h0.C1652b;
import p206u0.C3277a;
import p217v1.C3326d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class APInAct extends AppCompatActivity {

    /* JADX INFO: renamed from: f */
    public static final String f1202f = AbstractC1387m.m2421h(new byte[]{-111, -112, -78, 98, -46, -97, 29}, new byte[]{-48, -64, -5, 12, -109, -4, 105, -61});

    /* JADX INFO: renamed from: g */
    public static final String f1203g;

    /* JADX INFO: renamed from: b */
    public TextView f1204b;

    /* JADX INFO: renamed from: c */
    public Button f1205c;

    /* JADX INFO: renamed from: d */
    public ProgressBar f1206d;

    /* JADX INFO: renamed from: e */
    public final C0862c f1207e = new C0862c(2, this);

    static {
        AbstractC1387m.m2421h(new byte[]{59, 52, -17, 7, -107, 113, -21, 67, 118, 58, -14, 89, -117, 96, -29, 80, Base64.padSymbol}, new byte[]{88, 91, -126, 41, -8, 20, -116, 34});
        f1203g = AbstractC1387m.m2421h(new byte[]{-82, -67, -115, -124, 111, -61, 12, -118, -29, -77, -112, -38, 113, -46, 4, -103, -88, -4, -95, -23, 86, -17, 36, -91, -110, -101, -82, -7, 86, -25, 39, -89, -110, ByteCompanionObject.MIN_VALUE, -91, -7, 87, -22, 63}, new byte[]{-51, -46, -32, -86, 2, -90, 107, -21});
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        final int i10 = 1;
        AppCompatDelegate.setDefaultNightMode(1);
        setContentView(R.layout.activity_apinact);
        this.f1204b = (TextView) findViewById(R.id.textView44);
        Button button = (Button) findViewById(R.id.button21);
        this.f1205c = button;
        button.setOnClickListener(new ViewOnClickListenerC0675c(3, this));
        this.f1206d = (ProgressBar) findViewById(R.id.progressBar3);
        ArrayList parcelableArrayListExtra = getIntent().getParcelableArrayListExtra(AbstractC1387m.m2421h(new byte[]{2, 8, -35, 106, 123, 83, -44, -62, 10, 8, -51, 125, 122, 78, -98, -119, 27, 18, -53, 121, 58, 105, -28, -66, 38, 39, -12}, new byte[]{99, 102, -71, 24, 20, 58, -80, -20}));
        final int i11 = 0;
        C3326d.m5242a().m5243b().f9724a.observe(this, new Observer(this) { // from class: e0.a

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ APInAct f3163b;

            {
                this.f3163b = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i12 = i11;
                APInAct aPInAct = this.f3163b;
                switch (i12) {
                    case 0:
                        String str = APInAct.f1202f;
                        new Handler(Looper.getMainLooper()).post(new RunnableC0003a(14, aPInAct, (String) obj));
                        break;
                    default:
                        String str2 = APInAct.f1202f;
                        boolean zBooleanValue = ((Boolean) obj).booleanValue();
                        Button button2 = aPInAct.f1205c;
                        if (!zBooleanValue) {
                            if (button2 != null) {
                                button2.setVisibility(8);
                            }
                            ProgressBar progressBar = aPInAct.f1206d;
                            if (progressBar != null) {
                                progressBar.setVisibility(0);
                            }
                        } else {
                            if (button2 != null) {
                                button2.setVisibility(0);
                            }
                            ProgressBar progressBar2 = aPInAct.f1206d;
                            if (progressBar2 != null) {
                                progressBar2.setVisibility(8);
                            }
                        }
                        break;
                }
            }
        });
        C3326d.m5242a().m5243b().f9725b.observe(this, new Observer(this) { // from class: e0.a

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ APInAct f3163b;

            {
                this.f3163b = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i12 = i10;
                APInAct aPInAct = this.f3163b;
                switch (i12) {
                    case 0:
                        String str = APInAct.f1202f;
                        new Handler(Looper.getMainLooper()).post(new RunnableC0003a(14, aPInAct, (String) obj));
                        break;
                    default:
                        String str2 = APInAct.f1202f;
                        boolean zBooleanValue = ((Boolean) obj).booleanValue();
                        Button button2 = aPInAct.f1205c;
                        if (!zBooleanValue) {
                            if (button2 != null) {
                                button2.setVisibility(8);
                            }
                            ProgressBar progressBar = aPInAct.f1206d;
                            if (progressBar != null) {
                                progressBar.setVisibility(0);
                            }
                        } else {
                            if (button2 != null) {
                                button2.setVisibility(0);
                            }
                            ProgressBar progressBar2 = aPInAct.f1206d;
                            if (progressBar2 != null) {
                                progressBar2.setVisibility(8);
                            }
                        }
                        break;
                }
            }
        });
        AbstractC1434w.m2482c(-1, f1202f).execute(new RunnableC0003a(13, this, parcelableArrayListExtra));
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        try {
            unregisterReceiver(this.f1207e);
        } catch (Exception unused) {
        }
        C3326d.m5242a().m5243b().m5239a(getResources().getString(R.string.install_podgotovka));
        AbstractC1434w.m2482c(-1, f1202f).execute(new RunnableC1332b(this, 1));
    }

    /* JADX INFO: renamed from: s */
    public final Boolean m1381s() {
        StringBuilder sb = new StringBuilder();
        C3277a c3277aM2745o = C1652b.m2745o();
        byte[] bArr = AbstractC1387m.f3322j;
        String[] strArr = AbstractC1406p3.f3368a;
        AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
        AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
        C3277a c3277aM2745o2 = C1652b.m2745o();
        byte[] bArr2 = AbstractC1387m.f3318f;
        if (AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g)) {
            return Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{77}, new byte[]{125, -118, 15, 44, 71, -41, 101, -26}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX WARN: Code duplicated, block: B:64:0x0103 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:? A[SYNTHETIC] */
    /* JADX INFO: renamed from: t */
    public final File m1382t(Uri uri) throws IOException {
        Uri uri2;
        String path;
        int iLastIndexOf;
        int i10;
        int columnIndex;
        File file = new File(getFilesDir(), AbstractC1387m.m2421h(new byte[]{-51, -113, 87, 3, 116, -105, 38, 84, -5, ByteCompanionObject.MIN_VALUE, 68, 7, 106}, new byte[]{-92, -31, 52, 108, 25, -2, 72, 51}));
        if (!file.exists()) {
            file.mkdirs();
        }
        String strM2075i = null;
        if (uri.getScheme().equals(AbstractC1387m.m2421h(new byte[]{-91, 16, -59, -45, 101, -25, -56}, new byte[]{-58, ByteCompanionObject.MAX_VALUE, -85, -89, 0, -119, -68, 33}))) {
            uri2 = uri;
            Cursor cursorQuery = getContentResolver().query(uri2, null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst() && (columnIndex = cursorQuery.getColumnIndex(AbstractC1387m.m2421h(new byte[]{-106, 21, -26, 88, -69, -4, -43, -64, -106, 31, -18, 70, -82}, new byte[]{-55, 113, -113, 43, -53, -112, -76, -71}))) != -1) {
                        strM2075i = cursorQuery.getString(columnIndex);
                    }
                } catch (Throwable th) {
                    try {
                        cursorQuery.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                        throw th;
                    }
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        } else {
            uri2 = uri;
        }
        if (strM2075i == null && (path = uri2.getPath()) != null && (iLastIndexOf = path.lastIndexOf(47)) != -1 && (i10 = iLastIndexOf + 1) < path.length()) {
            strM2075i = path.substring(i10);
        }
        if (strM2075i == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(AbstractC1387m.m2421h(new byte[]{-36, -40, -43, 19}, new byte[]{-67, -88, -66, 76, -79, 113, -34, -105}));
            sb.append(System.currentTimeMillis());
            strM2075i = AbstractC1178q.m2075i(new byte[]{54, 22, 20, -90}, new byte[]{24, 119, 100, -51, -47, 94, 103, 115}, sb);
        }
        File file2 = new File(file, strM2075i);
        InputStream inputStreamOpenInputStream = getContentResolver().openInputStream(uri2);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int i11 = inputStreamOpenInputStream.read(bArr);
                    if (i11 <= 0) {
                        fileOutputStream.close();
                        inputStreamOpenInputStream.close();
                        return file2;
                    }
                    fileOutputStream.write(bArr, 0, i11);
                    if (inputStreamOpenInputStream != null) {
                        throw th;
                    }
                    try {
                        inputStreamOpenInputStream.close();
                        throw th;
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                        throw th;
                    }
                }
            } catch (Throwable th4) {
                try {
                    fileOutputStream.close();
                    throw th4;
                } catch (Throwable th5) {
                    th4.addSuppressed(th5);
                    throw th4;
                }
            }
        } catch (Throwable th6) {
            if (inputStreamOpenInputStream != null) {
                throw th6;
            }
            inputStreamOpenInputStream.close();
            throw th6;
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x028e */
    /* JADX WARN: Bottom block not found for handler: all -> 0x031d */
    /* JADX WARN: Code duplicated, block: B:158:0x01c6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:209:? A[Catch: Exception -> 0x0186, SYNTHETIC, TRY_LEAVE, TryCatch #12 {Exception -> 0x0186, blocks: (B:25:0x00d5, B:66:0x0182, B:71:0x0195, B:80:0x01ce, B:79:0x01cb, B:26:0x00d9, B:28:0x00e4, B:30:0x0104, B:46:0x0142, B:60:0x015d, B:59:0x015a, B:61:0x015e, B:63:0x017a, B:56:0x0155, B:32:0x010a, B:42:0x013b, B:55:0x0154, B:54:0x0151, B:76:0x01c6), top: B:176:0x00d5, inners: #2, #3 }] */
    /* JADX WARN: Code restructure failed: missing block: B:212:?, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:?, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:?, code lost:
    
        throw r0;
     */
    /* JADX INFO: renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void m1383u(java.util.ArrayList r22) {
        /*
            Method dump skipped, instruction units count: 1152
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.example.navistart.APInAct.m1383u(java.util.ArrayList):void");
    }
}

package com.example.navistart;

import android.app.PendingIntent;
import android.app.admin.DevicePolicyManager;
import android.content.Intent;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageInstaller$Session;
import android.content.pm.PackageInstaller$SessionParams;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.util.Log;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDelegate;
import b1.c;
import com.google.protobuf.q;
import e0.a;
import e0.b;
import e0.m;
import e0.p3;
import e0.w;
import e0.x1;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import v1.d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class APInAct extends AppCompatActivity {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f628f = m.h(new byte[]{-111, -112, -78, 98, -46, -97, 29}, new byte[]{-48, -64, -5, 12, -109, -4, 105, -61});

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f629g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TextView f630b;
    public Button c;
    public ProgressBar d;
    public final c e = new c(2, this);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        m.h(new byte[]{59, 52, -17, 7, -107, 113, -21, 67, 118, 58, -14, 89, -117, 96, -29, 80, Base64.padSymbol}, new byte[]{88, 91, -126, 41, -8, 20, -116, 34});
        f629g = m.h(new byte[]{-82, -67, -115, -124, 111, -61, 12, -118, -29, -77, -112, -38, 113, -46, 4, -103, -88, -4, -95, -23, 86, -17, 36, -91, -110, -101, -82, -7, 86, -25, 39, -89, -110, ByteCompanionObject.MIN_VALUE, -91, -7, 87, -22, 63}, new byte[]{-51, -46, -32, -86, 2, -90, 107, -21});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AppCompatDelegate.setDefaultNightMode(1);
        setContentView(2131492892);
        this.f630b = (TextView) findViewById(2131297618);
        Button button = (Button) findViewById(2131296550);
        this.c = button;
        button.setOnClickListener(new androidx.navigation.c(3, this));
        this.d = (ProgressBar) findViewById(2131297216);
        ArrayList parcelableArrayListExtra = getIntent().getParcelableArrayListExtra(m.h(new byte[]{2, 8, -35, 106, 123, 83, -44, -62, 10, 8, -51, 125, 122, 78, -98, -119, 27, 18, -53, 121, 58, 105, -28, -66, 38, 39, -12}, new byte[]{99, 102, -71, 24, 20, 58, -80, -20}));
        d.a().b().f5507a.observe(this, new a(this, 0));
        d.a().b().f5508b.observe(this, new a(this, 1));
        w.c(-1, f628f).execute(new a1.a(13, this, parcelableArrayListExtra));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        try {
            unregisterReceiver(this.e);
        } catch (Exception unused) {
        }
        d.a().b().a(getResources().getString(2131952041));
        w.c(-1, f628f).execute(new b(this, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Boolean s() {
        StringBuilder sb = new StringBuilder();
        u0.a aVarO = h0.b.o();
        byte[] bArr = m.f1896j;
        String[] strArr = p3.f1924a;
        q.s(bArr, aVarO, "", sb);
        q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strG = q.g(sb, x1.f1989q);
        u0.a aVarO2 = h0.b.o();
        byte[] bArr2 = m.f1892f;
        if (q.w(bArr2, aVarO2, "", strG)) {
            return Boolean.valueOf(q.d(Long.MAX_VALUE, h0.b.a().j()) < Long.parseLong(new String(q.x(new byte[]{77}, new byte[]{125, -118, 15, 44, 71, -41, 101, -26}, h0.b.o(), q.h(m.f1893g, h0.b.o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:64:0x0103 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:? A[SYNTHETIC] */
    public final File t(Uri uri) throws IOException {
        Uri uri2;
        String path;
        int iLastIndexOf;
        int i9;
        int columnIndex;
        File file = new File(getFilesDir(), m.h(new byte[]{-51, -113, 87, 3, 116, -105, 38, 84, -5, ByteCompanionObject.MIN_VALUE, 68, 7, 106}, new byte[]{-92, -31, 52, 108, 25, -2, 72, 51}));
        if (!file.exists()) {
            file.mkdirs();
        }
        String strI = null;
        if (uri.getScheme().equals(m.h(new byte[]{-91, 16, -59, -45, 101, -25, -56}, new byte[]{-58, ByteCompanionObject.MAX_VALUE, -85, -89, 0, -119, -68, 33}))) {
            uri2 = uri;
            Cursor cursorQuery = getContentResolver().query(uri2, null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst() && (columnIndex = cursorQuery.getColumnIndex(m.h(new byte[]{-106, 21, -26, 88, -69, -4, -43, -64, -106, 31, -18, 70, -82}, new byte[]{-55, 113, -113, 43, -53, -112, -76, -71}))) != -1) {
                        strI = cursorQuery.getString(columnIndex);
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
        if (strI == null && (path = uri2.getPath()) != null && (iLastIndexOf = path.lastIndexOf(47)) != -1 && (i9 = iLastIndexOf + 1) < path.length()) {
            strI = path.substring(i9);
        }
        if (strI == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(m.h(new byte[]{-36, -40, -43, 19}, new byte[]{-67, -88, -66, 76, -79, 113, -34, -105}));
            sb.append(System.currentTimeMillis());
            strI = q.i(new byte[]{54, 22, 20, -90}, new byte[]{24, 119, 100, -51, -47, 94, 103, 115}, sb);
        }
        File file2 = new File(file, strI);
        InputStream inputStreamOpenInputStream = getContentResolver().openInputStream(uri2);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int i10 = inputStreamOpenInputStream.read(bArr);
                    if (i10 <= 0) {
                        fileOutputStream.close();
                        inputStreamOpenInputStream.close();
                        return file2;
                    }
                    fileOutputStream.write(bArr, 0, i10);
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void u(ArrayList arrayList) {
        int iCreateSession;
        PackageInstaller packageInstaller = getPackageManager().getPackageInstaller();
        PackageInstaller$SessionParams packageInstaller$SessionParams = new PackageInstaller$SessionParams(1);
        int i9 = 8;
        int i10 = 4;
        if (!((DevicePolicyManager) getSystemService(m.h(new byte[]{-74, 71, 62, -34, -113, 67, 111, 76, -67, 78, 33, -44, -107}, new byte[]{-46, 34, 72, -73, -20, 38, 48, 60}))).isDeviceOwnerApp(getPackageName())) {
            if (Build$VERSION.SDK_INT >= 31) {
                androidx.core.app.c.r(packageInstaller$SessionParams);
            }
            int iCreateSession2 = packageInstaller.createSession(packageInstaller$SessionParams);
            PackageInstaller$Session packageInstaller$SessionOpenSession = packageInstaller.openSession(iCreateSession2);
            byte[] bArr = new byte[65536];
            int size = arrayList.size();
            int i11 = 0;
            while (i11 < size) {
                int i12 = i11 + 1;
                File file = (File) arrayList.get(i11);
                String name = file.getName();
                Locale locale = Locale.ROOT;
                if (name.toLowerCase(locale).endsWith(m.h(new byte[]{-84, -43, -117, 43}, new byte[]{-126, -76, -5, 64, 22, -17, 31, -126}))) {
                    OutputStream outputStreamOpenWrite = packageInstaller$SessionOpenSession.openWrite(file.getName(), 0L, file.length());
                    FileInputStream fileInputStream = new FileInputStream(file);
                    while (true) {
                        try {
                            int i13 = fileInputStream.read(bArr);
                            if (i13 < 0) {
                                break;
                            } else {
                                outputStreamOpenWrite.write(bArr, 0, i13);
                            }
                        } catch (Throwable th) {
                            try {
                                fileInputStream.close();
                                throw th;
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                                throw th;
                            }
                        }
                    }
                    packageInstaller$SessionOpenSession.fsync(outputStreamOpenWrite);
                    fileInputStream.close();
                    if (outputStreamOpenWrite != null) {
                        outputStreamOpenWrite.close();
                    }
                } else {
                    if (!file.getName().toLowerCase(locale).endsWith(m.h(new byte[]{23, 21, -101, 8}, new byte[]{57, 111, -14, 120, 67, -14, 56, 22}))) {
                        throw new IllegalArgumentException(m.h(new byte[]{121, 90, -116, -14, -108, 30, -82, 105, 88, 81, -101, -89, -126, 7, -83, 126, 12, 64, -122, -9, -127, 84, -31}, new byte[]{44, 52, -1, -121, -28, 110, -63, 27}) + file.getName());
                    }
                    ZipInputStream zipInputStream = new ZipInputStream(new FileInputStream(file));
                    while (true) {
                        ZipEntry nextEntry = zipInputStream.getNextEntry();
                        if (nextEntry == null) {
                            break;
                        }
                        if (nextEntry.getName().toLowerCase(Locale.ROOT).endsWith(m.h(new byte[]{-81, -68, -120, -85}, new byte[]{-127, -35, -8, -64, 112, 40, 54, -42}))) {
                            OutputStream outputStreamOpenWrite2 = packageInstaller$SessionOpenSession.openWrite(nextEntry.getName(), 0L, nextEntry.getSize());
                            while (true) {
                                try {
                                    int i14 = zipInputStream.read(bArr);
                                    if (i14 < 0) {
                                        break;
                                    } else {
                                        outputStreamOpenWrite2.write(bArr, 0, i14);
                                    }
                                } catch (Throwable th3) {
                                    if (outputStreamOpenWrite2 == null) {
                                        throw th3;
                                    }
                                    try {
                                        outputStreamOpenWrite2.close();
                                        throw th3;
                                    } catch (Throwable th4) {
                                        th3.addSuppressed(th4);
                                        throw th3;
                                    }
                                }
                            }
                            packageInstaller$SessionOpenSession.fsync(outputStreamOpenWrite2);
                            if (outputStreamOpenWrite2 != null) {
                                outputStreamOpenWrite2.close();
                            }
                        }
                    }
                    zipInputStream.close();
                }
                i11 = i12;
            }
            packageInstaller$SessionOpenSession.commit(PendingIntent.getBroadcast(getApplicationContext(), iCreateSession2, new Intent(getApplicationContext(), (Class<?>) InstallResultReceiver.class), 167772160).getIntentSender());
            packageInstaller$SessionOpenSession.close();
            return;
        }
        d.a().b().a(getResources().getString(2131952039));
        PackageManager packageManager = getPackageManager();
        if (!arrayList.isEmpty() && packageManager != null) {
            int size2 = arrayList.size();
            int i15 = 0;
            long length = 0;
            while (i15 < size2) {
                Object obj = arrayList.get(i15);
                i15++;
                File file2 = (File) obj;
                if (file2 == null || !file2.exists()) {
                    Log.e(m.h(new byte[]{-29, 9, -126, 73, -126, -39, -62, 122, -99, 15, -82, 121, -98, -35, -63, 111, -60, 15}, new byte[]{-80, 95, -61, 58, -15, -80, -79, 14}), m.h(new byte[]{-126, ByteCompanionObject.MAX_VALUE, -95, -28, 88, 29, 36, -121, -29, 66, -125, -73, 77, 29, 38, -123, -7, 15}, new byte[]{-61, 47, -22, -60, 62, 116, 72, -30}) + file2);
                } else {
                    length += file2.length();
                }
            }
            packageManager.getPackageArchiveInfo(((File) arrayList.get(0)).getAbsolutePath(), 1);
            PackageInstaller packageInstaller2 = packageManager.getPackageInstaller();
            PackageInstaller$SessionParams packageInstaller$SessionParams2 = new PackageInstaller$SessionParams(1);
            packageInstaller$SessionParams2.setSize(length);
            int i16 = -1;
            try {
                iCreateSession = packageInstaller2.createSession(packageInstaller$SessionParams2);
            } catch (IOException e) {
                e.printStackTrace();
                iCreateSession = -1;
            }
            if (iCreateSession != -1) {
                try {
                    PackageInstaller$Session packageInstaller$SessionOpenSession2 = packageInstaller2.openSession(iCreateSession);
                    try {
                        long[] jArr = {0};
                        int size3 = arrayList.size();
                        int i17 = 0;
                        while (i17 < size3) {
                            Object obj2 = arrayList.get(i17);
                            i17++;
                            File file3 = (File) obj2;
                            byte[] bArr2 = new byte[i10];
                            // fill-array-data instruction
                            bArr2[0] = -70;
                            bArr2[1] = 8;
                            bArr2[2] = -24;
                            bArr2[3] = -108;
                            byte[] bArr3 = new byte[i9];
                            // fill-array-data instruction
                            bArr3[0] = -108;
                            bArr3[1] = 105;
                            bArr3[2] = -104;
                            bArr3[3] = -1;
                            bArr3[4] = 7;
                            bArr3[5] = -37;
                            bArr3[6] = -61;
                            bArr3[7] = -33;
                            if (file3.getName().endsWith(m.h(bArr2, bArr3))) {
                                FileInputStream fileInputStream2 = new FileInputStream(file3);
                                try {
                                    OutputStream outputStreamOpenWrite3 = packageInstaller$SessionOpenSession2.openWrite(file3.getName(), 0L, file3.length());
                                    try {
                                        byte[] bArr4 = new byte[1048576];
                                        while (true) {
                                            int i18 = fileInputStream2.read(bArr4);
                                            if (i18 == i16) {
                                                break;
                                            }
                                            outputStreamOpenWrite3.write(bArr4, 0, i18);
                                            jArr[0] = jArr[0] + ((long) i18);
                                            i16 = -1;
                                        }
                                        packageInstaller$SessionOpenSession2.fsync(outputStreamOpenWrite3);
                                        if (outputStreamOpenWrite3 != null) {
                                            outputStreamOpenWrite3.close();
                                        }
                                        fileInputStream2.close();
                                    } catch (Throwable th5) {
                                        if (outputStreamOpenWrite3 == null) {
                                            throw th5;
                                        }
                                        try {
                                            outputStreamOpenWrite3.close();
                                            throw th5;
                                        } catch (Throwable th6) {
                                            th5.addSuppressed(th6);
                                            throw th5;
                                        }
                                        if (packageInstaller$SessionOpenSession2 != null) {
                                            throw th;
                                        }
                                        try {
                                            packageInstaller$SessionOpenSession2.close();
                                            throw th;
                                        } catch (Throwable th7) {
                                            th.addSuppressed(th7);
                                            throw th;
                                        }
                                        d.a().b().a(getResources().getString(2131952035));
                                        d.a().b().f5508b.postValue(Boolean.TRUE);
                                    }
                                } catch (Throwable th8) {
                                    try {
                                        fileInputStream2.close();
                                        throw th8;
                                    } catch (Throwable th9) {
                                        th8.addSuppressed(th9);
                                        throw th8;
                                    }
                                }
                            } else if (file3.getName().endsWith(m.h(new byte[]{-49, 83, -29, -44}, new byte[]{-31, 41, -118, -92, 51, -65, 114, 4})) && !m.y(packageInstaller$SessionOpenSession2, file3, jArr, length)) {
                                if (packageInstaller$SessionOpenSession2 != null) {
                                    packageInstaller$SessionOpenSession2.close();
                                }
                            }
                            i16 = -1;
                            i9 = 8;
                            i10 = 4;
                        }
                        if (packageInstaller$SessionOpenSession2 != null) {
                            packageInstaller$SessionOpenSession2.close();
                        }
                        if (m.g(this, packageInstaller2, iCreateSession)) {
                            Log.e(m.h(new byte[]{34, -68, 81, -31, 37, 114, 124, 43, 92, -70, 125, -47, 57, 118, ByteCompanionObject.MAX_VALUE, 62, 5, -70}, new byte[]{113, -22, 16, -110, 86, 27, 15, 95}), m.h(new byte[]{77, -126, -57, 42, 21, 83, 100, 75, 109, -122, -54, 47, 13, 18, 121, 76, 113, -100, -117, 39, 14, 29, 104}, new byte[]{30, -14, -85, 67, 97, 115, 13, 37}));
                        }
                    } catch (Throwable th10) {
                        if (packageInstaller$SessionOpenSession2 != null) {
                            throw th10;
                        }
                        packageInstaller$SessionOpenSession2.close();
                        throw th10;
                        d.a().b().a(getResources().getString(2131952035));
                        d.a().b().f5508b.postValue(Boolean.TRUE);
                    }
                } catch (Exception e6) {
                    Log.e(m.h(new byte[]{-46, -86, 12, -87, -94, -77, -19, -13, -84, -84, 32, -103, -66, -73, -18, -26, -11, -84}, new byte[]{-127, -4, 77, -38, -47, -38, -98, -121}), m.h(new byte[]{-113, -64, 45, 79, 48, 50, 30, -90, -85, -63, 45, 84, 59, 50, 11, -94, -79, -34, 33, 95}, new byte[]{-40, -78, 68, 59, 85, 18, 109, -61}), e6);
                }
            }
        }
        d.a().b().a(getResources().getString(2131952035));
        d.a().b().f5508b.postValue(Boolean.TRUE);
    }
}

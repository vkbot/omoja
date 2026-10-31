package com.woha.appmanag;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.documentfile.provider.DocumentFile;
import e0.m;
import h7.a;
import h7.b;
import h7.k;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FilePickerActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f1601j = m.h(new byte[]{-58, 65, -61, -113, 79, -44, 16, -31, -22, 66, -58, -122, 73}, new byte[]{-75, 36, -81, -22, 44, -96, 117, -123});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ListView f1602b;
    public TextView c;
    public Button d;
    public File e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ArrayList f1603f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public k f1604g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f1605h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1606i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean s(ArrayList arrayList, File file) {
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            if (((File) obj).getAbsolutePath().equals(file.getAbsolutePath())) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean t(String str) {
        return str.startsWith(m.h(new byte[]{13, 105, -55, 63, 88, -61, Base64.padSymbol, ByteCompanionObject.MIN_VALUE, 13}, new byte[]{34, 26, -67, 80, 42, -94, 90, -27})) || str.startsWith(m.h(new byte[]{-5, -10, -90, -22, 84, -96, 65, 31, -67, -6, -105, -20, 12, -30}, new byte[]{-44, -101, -56, -98, 123, -51, 36, 123})) || str.startsWith(m.h(new byte[]{-53, 97, 67, -123, 85, -21, -106, -124, -112, 101, 64, -108, 85}, new byte[]{-28, 12, 45, -15, 122, -103, -29, -22})) || str.startsWith(m.h(new byte[]{-3, -59, 32, 65, -110, -120, -9, 20}, new byte[]{-46, -88, 78, 53, -67, -3, -124, 118})) || str.startsWith(m.h(new byte[]{-77, -73, -102, 108, -74, -17, -67, -34, -77, -79, -99, 97}, new byte[]{-100, -60, -18, 3, -60, -114, -38, -69})) || str.startsWith(m.h(new byte[]{9, -62, -27, 4, -11, 116, -34, -127, 85, -60}, new byte[]{38, -81, -117, 112, -38, 1, -70, -24})) || str.startsWith(m.h(new byte[]{-54, 83, -55, -26, -78, 126, -35, 51, -54, 85, -39, -32, -77, 116}, new byte[]{-27, 32, -67, -119, -64, 31, -70, 86})) || str.startsWith(m.h(new byte[]{-120, 31, 113, -29, 58, -72, 110, -47, -120, 9, 125, -8}, new byte[]{-89, 108, 5, -116, 72, -39, 9, -76})) || str.startsWith(m.h(new byte[]{8, ByteCompanionObject.MIN_VALUE, -121, 125, 5, 106, -39, -7}, new byte[]{39, -19, -23, 9, 42, 15, -95, -115})) || str.startsWith(m.h(new byte[]{33, 101, -118, -10, -30, -91, -114, 44, 33, 101, -102, -6, -15, -74, -115}, new byte[]{14, 22, -2, -103, -112, -60, -23, 73}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean u(File file) {
        try {
            String absolutePath = file.getAbsolutePath();
            if (file.isDirectory() && !absolutePath.contains(m.h(new byte[]{-84, -127, -46, 81, 37, -7, -57, 77}, new byte[]{-55, -20, -89, Base64.padSymbol, 68, -115, -94, 41})) && !absolutePath.contains(m.h(new byte[]{111, 2, -100, -35}, new byte[]{28, 103, -16, -69, -46, -9, 117, 38})) && t(absolutePath)) {
                file.getName().matches(m.h(new byte[]{-35, -12, -119, -34, -55, 17, -21, -21, -30, -126, -33, -82, -117, 100, -69, ByteCompanionObject.MIN_VALUE, -40, -97, -108, -54, -79, 125, ByteCompanionObject.MIN_VALUE, -52, -82, -55, -28, -120, -60, 45, -30}, new byte[]{-125, -81, -71, -13, -16, 80, -58, -83}));
                return file.listFiles() != null;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i9, int i10, Intent intent) {
        Uri data;
        super.onActivityResult(i9, i10, intent);
        if ((i9 == 1001 || i9 == 42) && i10 == -1 && (data = intent.getData()) != null) {
            getContentResolver().takePersistableUriPermission(data, 3);
            DocumentFile documentFileFromTreeUri = DocumentFile.fromTreeUri(this, data);
            if (documentFileFromTreeUri == null || !documentFileFromTreeUri.isDirectory()) {
                return;
            }
            this.f1603f.clear();
            ArrayList arrayList = new ArrayList();
            for (DocumentFile documentFile : documentFileFromTreeUri.listFiles()) {
                if (documentFile.isDirectory() || this.f1605h == null || documentFile.getName().toLowerCase().endsWith(this.f1605h.toLowerCase())) {
                    this.f1603f.add(new File(documentFile.getUri().toString()));
                    if (documentFile.isDirectory()) {
                        arrayList.add(m.h(new byte[]{36}, new byte[]{ByteCompanionObject.MAX_VALUE, -85, 80, -93, -127, -62, 59, -98}) + getString(2131951989) + m.h(new byte[]{-88, 63}, new byte[]{-11, 31, -76, 4, 4, 98, -94, -117}) + documentFile.getName());
                    } else {
                        arrayList.add(documentFile.getName());
                    }
                }
            }
            this.f1602b.setAdapter((ListAdapter) new ArrayAdapter(this, 2131492944, arrayList));
            this.c.setText(m.h(new byte[]{24, -120, 26, 41, -62}, new byte[]{77, -37, 88, 19, -30, 80, 114, -97}) + documentFileFromTreeUri.getName());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AppCompatDelegate.setDefaultNightMode(1);
        setContentView(2131492895);
        this.f1605h = getIntent().getStringExtra(m.h(new byte[]{-123, 53, 32, 114, 126, 91, -60, -91, -122, 50, 63, 126, 78, 80}, new byte[]{-29, 92, 76, 23, 33, 62, -68, -47}));
        this.f1606i = getIntent().getIntExtra(m.h(new byte[]{-22, 36, 24, 40, -119, -9, -28, -63, -23, 35, 7, 36, -71, -4, -61, -40, -29, 41, 17, 18, -91, -9, -14, -47}, new byte[]{-116, 77, 116, 77, -42, -110, -100, -75}), 0);
        this.f1602b = (ListView) findViewById(2131296929);
        View viewInflate = getLayoutInflater().inflate(2131492943, (ViewGroup) this.f1602b, false);
        this.f1602b.addHeaderView(viewInflate, null, false);
        this.c = (TextView) viewInflate.findViewById(2131296665);
        this.d = (Button) viewInflate.findViewById(2131297697);
        ((Button) viewInflate.findViewById(2131296602)).setOnClickListener(new a(this, 0));
        this.e = Environment.getExternalStorageDirectory();
        this.f1603f = new ArrayList();
        k kVar = k.f2505o;
        this.f1604g = kVar;
        kVar.v(this);
        this.d.setOnClickListener(new a(this, 1));
        this.f1602b.setOnItemClickListener(new b(0, this));
        ((Button) viewInflate.findViewById(2131297174)).setOnClickListener(new a(this, 2));
        v(this.e);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        k kVar = this.f1604g;
        if (kVar != null) {
            kVar.w();
        }
        super.onDestroy();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void v(File file) {
        this.e = file;
        this.c.setText(file.getAbsolutePath());
        File[] fileArrListFiles = this.e.listFiles();
        if (fileArrListFiles != null) {
            this.f1603f.clear();
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory() || this.f1605h == null || file2.getName().toLowerCase().endsWith(this.f1605h.toLowerCase())) {
                    this.f1603f.add(file2);
                }
            }
            Collections.sort(this.f1603f, new androidx.constraintlayout.core.utils.a(3));
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.f1603f;
        int size = arrayList2.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList2.get(i9);
            i9++;
            File file3 = (File) obj;
            if (file3.isDirectory()) {
                arrayList.add(m.h(new byte[]{-105}, new byte[]{-52, -35, -74, 95, -90, -68, 72, 119}) + getString(2131951989) + m.h(new byte[]{6, 13}, new byte[]{91, 45, -22, -124, 52, 56, -8, -70}) + file3.getName());
            } else {
                arrayList.add(file3.getName());
            }
        }
        this.f1602b.setAdapter((ListAdapter) new ArrayAdapter(this, 2131492944, arrayList));
    }
}

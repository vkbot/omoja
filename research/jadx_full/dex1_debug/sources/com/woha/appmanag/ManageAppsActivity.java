package com.woha.appmanag;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import e0.m;
import e0.y2;
import h7.b;
import h7.c;
import h7.f;
import h7.g;
import java.util.ArrayList;
import y5.k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ManageAppsActivity extends AppCompatActivity {
    public static final String e = m.h(new byte[]{25, -78, 101, -111, -119, -17, -15, -85, 16, -75, 98, -111, -78, -47, -12, -66, 5, -78, 110, -102, -91}, new byte[]{113, -37, 1, -12, -42, -114, -107, -35});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList f1607b;
    public PackageManager c;
    public f d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(m.x(context));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i9, int i10, Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i9 == 1 && i10 == -1 && intent != null) {
            String stringExtra = intent.getStringExtra(m.h(new byte[]{31, 72, -60, -111, 67, -8, 59, -23, 51, 75, -63, -104, 69}, new byte[]{108, 45, -88, -12, 32, -116, 94, -115}));
            if (stringExtra != null) {
                y2.c(stringExtra, this, null);
            } else {
                k.x(this, getString(2131951938));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setStatusBarColor(ContextCompat.getColor(this, 2131034999));
        getWindow().setNavigationBarColor(ContextCompat.getColor(this, 2131034999));
        getWindow().getDecorView().setSystemUiVisibility(0);
        setContentView(2131492899);
        ListView listView = (ListView) findViewById(2131296929);
        Button button = (Button) findViewById(2131296872);
        Button button2 = (Button) findViewById(2131296801);
        Button button3 = (Button) findViewById(2131296607);
        Button button4 = (Button) findViewById(2131296605);
        View viewFindViewById = findViewById(2131296956);
        if (getIntent().getBooleanExtra(e, false)) {
            viewFindViewById.setVisibility(8);
        }
        this.c = getPackageManager();
        this.f1607b = new ArrayList();
        s();
        f fVar = new f(this);
        this.d = fVar;
        listView.setAdapter((ListAdapter) fVar);
        listView.setOnItemClickListener(new b(1, this));
        button.setOnClickListener(new c(this, 0));
        button2.setOnClickListener(new c(this, 1));
        button3.setOnClickListener(new c(this, 2));
        button4.setOnClickListener(new c(this, 3));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        s();
        this.d.notifyDataSetChanged();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void s() {
        this.f1607b.clear();
        Intent intent = new Intent(m.h(new byte[]{-10, -125, 87, -121, 17, -109, -64, 85, -2, -125, 71, -112, 16, -114, -118, 26, -12, -103, 90, -102, 16, -44, -23, 58, -34, -93}, new byte[]{-105, -19, 51, -11, 126, -6, -92, 123}), (Uri) null);
        intent.addCategory(m.h(new byte[]{-16, 105, 115, -64, 19, -89, -109, 39, -8, 105, 99, -41, 18, -70, -39, 106, -16, 115, 114, -43, 19, -68, -114, 39, -35, 70, 66, -4, 63, -122, -78, 91}, new byte[]{-111, 7, 23, -78, 124, -50, -9, 9}));
        for (ResolveInfo resolveInfo : this.c.queryIntentActivities(intent, 0)) {
            String string = resolveInfo.loadLabel(this.c).toString();
            Drawable drawableLoadIcon = resolveInfo.loadIcon(this.c);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            String str = activityInfo.packageName;
            ApplicationInfo applicationInfo = activityInfo.applicationInfo;
            if (!applicationInfo.packageName.contains(m.h(new byte[]{-80, 88, 107, -20, 23, 124, -79, -91, -93, 91, 99, -20, 28, 101, -90, -95, -96, 67, 103, -80, 6}, new byte[]{-45, 55, 6, -62, 114, 4, -48, -56})) && (applicationInfo.flags & 1) == 0) {
                ArrayList arrayList = this.f1607b;
                g gVar = new g();
                gVar.f2494a = string;
                gVar.f2495b = str;
                gVar.c = drawableLoadIcon;
                arrayList.add(gVar);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void t(String str) {
        Intent intent = new Intent(m.h(new byte[]{-73, 25, 76, -33, 27, 11, -70, -87, -65, 25, 92, -56, 26, 22, -16, -26, -75, 3, 65, -62, 26, 76, -102, -62, -102, 50, 124, -24}, new byte[]{-42, 119, 40, -83, 116, 98, -34, -121}));
        intent.setData(Uri.parse(m.h(new byte[]{111, 109, -32, -87, 31, 10, 7, -64}, new byte[]{31, 12, -125, -62, 126, 109, 98, -6}) + str));
        intent.addFlags(268435456);
        k.u(this, intent, null);
    }
}

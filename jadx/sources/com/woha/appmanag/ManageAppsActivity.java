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
import com.example.navistart.R;
import com.woha.appmanag.FilePickerActivity;
import com.woha.appmanag.ManageAppsActivity;
import java.util.ArrayList;
import kotlin.jvm.internal.ByteCompanionObject;
import p047e0.AbstractC1387m;
import p047e0.C1445y2;
import p084h7.C1674b;
import p084h7.C1678f;
import p084h7.C1679g;
import p121l0.C2194a;
import p132m0.C2302i;
import p132m0.C2372y;
import p250y5.AbstractC3656k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class ManageAppsActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: e */
    public static final String f2847e = AbstractC1387m.m2421h(new byte[]{25, -78, 101, -111, -119, -17, -15, -85, 16, -75, 98, -111, -78, -47, -12, -66, 5, -78, 110, -102, -91}, new byte[]{113, -37, 1, -12, -42, -114, -107, -35});

    /* JADX INFO: renamed from: b */
    public ArrayList f2848b;

    /* JADX INFO: renamed from: c */
    public PackageManager f2849c;

    /* JADX INFO: renamed from: d */
    public C1678f f2850d;

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(AbstractC1387m.m2437x(context));
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i10 == 1 && i11 == -1 && intent != null) {
            String stringExtra = intent.getStringExtra(AbstractC1387m.m2421h(new byte[]{31, 72, -60, -111, 67, -8, 59, -23, 51, 75, -63, -104, 69}, new byte[]{108, 45, -88, -12, 32, -116, 94, -115}));
            if (stringExtra != null) {
                C1445y2.m2493c(stringExtra, this, null);
            } else {
                AbstractC3656k.m5878x(this, getString(R.string.error_select_apk));
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setStatusBarColor(ContextCompat.getColor(this, R.color.modern_background));
        getWindow().setNavigationBarColor(ContextCompat.getColor(this, R.color.modern_background));
        getWindow().getDecorView().setSystemUiVisibility(0);
        setContentView(R.layout.activity_manage_apps);
        ListView listView = (ListView) findViewById(R.id.listView);
        Button button = (Button) findViewById(R.id.installApkButton);
        Button button2 = (Button) findViewById(R.id.grantAppPermissionsButton);
        Button button3 = (Button) findViewById(R.id.carPackageToggleButton);
        Button button4 = (Button) findViewById(R.id.cancelinstallApkButton);
        View viewFindViewById = findViewById(R.id.manageAppsAdvancedActions);
        if (getIntent().getBooleanExtra(f2847e, false)) {
            viewFindViewById.setVisibility(8);
        }
        this.f2849c = getPackageManager();
        this.f2848b = new ArrayList();
        m2199s();
        C1678f c1678f = new C1678f(this);
        this.f2850d = c1678f;
        listView.setAdapter((ListAdapter) c1678f);
        listView.setOnItemClickListener(new C1674b(1, this));
        final int i10 = 0;
        button.setOnClickListener(new View.OnClickListener(this) { // from class: h7.c

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ ManageAppsActivity f4295c;

            {
                this.f4295c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i11 = i10;
                ManageAppsActivity manageAppsActivity = this.f4295c;
                switch (i11) {
                    case 0:
                        String str = ManageAppsActivity.f2847e;
                        Intent intent = new Intent(manageAppsActivity, (Class<?>) FilePickerActivity.class);
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{123, 40, -51, 58, 25, 111, 107, 69, 120, 47, -46, 54, 41, 100}, new byte[]{29, 65, -95, 95, 70, 10, 19, 49}), AbstractC1387m.m2421h(new byte[]{78, 124, 70, 33}, new byte[]{96, 29, 54, 74, -105, 51, -106, 25}));
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-65, 80, 49, 67, -43, -54, 85, -86, -68, 87, 46, 79, -27, -63, 114, -77, -74, 93, 56, 121, -7, -54, 67, -70}, new byte[]{-39, 57, 93, 38, -118, -81, 45, -34}), 1);
                        manageAppsActivity.startActivityForResult(intent, 1);
                        break;
                    case 1:
                        String str2 = ManageAppsActivity.f2847e;
                        C2194a.m3500t(C2302i.class, null).show(manageAppsActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{42, -27, -55, -79, 33, -47, -37, 113, 63, -6, -63, -84, 38, -25, -60, 122, 62, -56, -52, -74, 52, -30, -60, 115}, new byte[]{77, -105, -88, -33, 85, -114, -85, 20}));
                        break;
                    case 2:
                        String str3 = ManageAppsActivity.f2847e;
                        C2194a.m3500t(C2372y.class, null).show(manageAppsActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{48, 56, 103, -25, -5, 3, -115, -124, 50, 62, 112, -25, -1, 13, -119, -120, 63, 60, 74, -36, -30, 3, -126, ByteCompanionObject.MIN_VALUE, 52}, new byte[]{83, 89, 21, -72, -117, 98, -18, -17}));
                        break;
                    default:
                        String str4 = ManageAppsActivity.f2847e;
                        manageAppsActivity.finish();
                        break;
                }
            }
        });
        final int i11 = 1;
        button2.setOnClickListener(new View.OnClickListener(this) { // from class: h7.c

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ ManageAppsActivity f4295c;

            {
                this.f4295c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i12 = i11;
                ManageAppsActivity manageAppsActivity = this.f4295c;
                switch (i12) {
                    case 0:
                        String str = ManageAppsActivity.f2847e;
                        Intent intent = new Intent(manageAppsActivity, (Class<?>) FilePickerActivity.class);
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{123, 40, -51, 58, 25, 111, 107, 69, 120, 47, -46, 54, 41, 100}, new byte[]{29, 65, -95, 95, 70, 10, 19, 49}), AbstractC1387m.m2421h(new byte[]{78, 124, 70, 33}, new byte[]{96, 29, 54, 74, -105, 51, -106, 25}));
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-65, 80, 49, 67, -43, -54, 85, -86, -68, 87, 46, 79, -27, -63, 114, -77, -74, 93, 56, 121, -7, -54, 67, -70}, new byte[]{-39, 57, 93, 38, -118, -81, 45, -34}), 1);
                        manageAppsActivity.startActivityForResult(intent, 1);
                        break;
                    case 1:
                        String str2 = ManageAppsActivity.f2847e;
                        C2194a.m3500t(C2302i.class, null).show(manageAppsActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{42, -27, -55, -79, 33, -47, -37, 113, 63, -6, -63, -84, 38, -25, -60, 122, 62, -56, -52, -74, 52, -30, -60, 115}, new byte[]{77, -105, -88, -33, 85, -114, -85, 20}));
                        break;
                    case 2:
                        String str3 = ManageAppsActivity.f2847e;
                        C2194a.m3500t(C2372y.class, null).show(manageAppsActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{48, 56, 103, -25, -5, 3, -115, -124, 50, 62, 112, -25, -1, 13, -119, -120, 63, 60, 74, -36, -30, 3, -126, ByteCompanionObject.MIN_VALUE, 52}, new byte[]{83, 89, 21, -72, -117, 98, -18, -17}));
                        break;
                    default:
                        String str4 = ManageAppsActivity.f2847e;
                        manageAppsActivity.finish();
                        break;
                }
            }
        });
        final int i12 = 2;
        button3.setOnClickListener(new View.OnClickListener(this) { // from class: h7.c

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ ManageAppsActivity f4295c;

            {
                this.f4295c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i13 = i12;
                ManageAppsActivity manageAppsActivity = this.f4295c;
                switch (i13) {
                    case 0:
                        String str = ManageAppsActivity.f2847e;
                        Intent intent = new Intent(manageAppsActivity, (Class<?>) FilePickerActivity.class);
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{123, 40, -51, 58, 25, 111, 107, 69, 120, 47, -46, 54, 41, 100}, new byte[]{29, 65, -95, 95, 70, 10, 19, 49}), AbstractC1387m.m2421h(new byte[]{78, 124, 70, 33}, new byte[]{96, 29, 54, 74, -105, 51, -106, 25}));
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-65, 80, 49, 67, -43, -54, 85, -86, -68, 87, 46, 79, -27, -63, 114, -77, -74, 93, 56, 121, -7, -54, 67, -70}, new byte[]{-39, 57, 93, 38, -118, -81, 45, -34}), 1);
                        manageAppsActivity.startActivityForResult(intent, 1);
                        break;
                    case 1:
                        String str2 = ManageAppsActivity.f2847e;
                        C2194a.m3500t(C2302i.class, null).show(manageAppsActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{42, -27, -55, -79, 33, -47, -37, 113, 63, -6, -63, -84, 38, -25, -60, 122, 62, -56, -52, -74, 52, -30, -60, 115}, new byte[]{77, -105, -88, -33, 85, -114, -85, 20}));
                        break;
                    case 2:
                        String str3 = ManageAppsActivity.f2847e;
                        C2194a.m3500t(C2372y.class, null).show(manageAppsActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{48, 56, 103, -25, -5, 3, -115, -124, 50, 62, 112, -25, -1, 13, -119, -120, 63, 60, 74, -36, -30, 3, -126, ByteCompanionObject.MIN_VALUE, 52}, new byte[]{83, 89, 21, -72, -117, 98, -18, -17}));
                        break;
                    default:
                        String str4 = ManageAppsActivity.f2847e;
                        manageAppsActivity.finish();
                        break;
                }
            }
        });
        final int i13 = 3;
        button4.setOnClickListener(new View.OnClickListener(this) { // from class: h7.c

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ ManageAppsActivity f4295c;

            {
                this.f4295c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i14 = i13;
                ManageAppsActivity manageAppsActivity = this.f4295c;
                switch (i14) {
                    case 0:
                        String str = ManageAppsActivity.f2847e;
                        Intent intent = new Intent(manageAppsActivity, (Class<?>) FilePickerActivity.class);
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{123, 40, -51, 58, 25, 111, 107, 69, 120, 47, -46, 54, 41, 100}, new byte[]{29, 65, -95, 95, 70, 10, 19, 49}), AbstractC1387m.m2421h(new byte[]{78, 124, 70, 33}, new byte[]{96, 29, 54, 74, -105, 51, -106, 25}));
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-65, 80, 49, 67, -43, -54, 85, -86, -68, 87, 46, 79, -27, -63, 114, -77, -74, 93, 56, 121, -7, -54, 67, -70}, new byte[]{-39, 57, 93, 38, -118, -81, 45, -34}), 1);
                        manageAppsActivity.startActivityForResult(intent, 1);
                        break;
                    case 1:
                        String str2 = ManageAppsActivity.f2847e;
                        C2194a.m3500t(C2302i.class, null).show(manageAppsActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{42, -27, -55, -79, 33, -47, -37, 113, 63, -6, -63, -84, 38, -25, -60, 122, 62, -56, -52, -74, 52, -30, -60, 115}, new byte[]{77, -105, -88, -33, 85, -114, -85, 20}));
                        break;
                    case 2:
                        String str3 = ManageAppsActivity.f2847e;
                        C2194a.m3500t(C2372y.class, null).show(manageAppsActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{48, 56, 103, -25, -5, 3, -115, -124, 50, 62, 112, -25, -1, 13, -119, -120, 63, 60, 74, -36, -30, 3, -126, ByteCompanionObject.MIN_VALUE, 52}, new byte[]{83, 89, 21, -72, -117, 98, -18, -17}));
                        break;
                    default:
                        String str4 = ManageAppsActivity.f2847e;
                        manageAppsActivity.finish();
                        break;
                }
            }
        });
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        m2199s();
        this.f2850d.notifyDataSetChanged();
    }

    /* JADX INFO: renamed from: s */
    public final void m2199s() {
        this.f2848b.clear();
        Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{-10, -125, 87, -121, 17, -109, -64, 85, -2, -125, 71, -112, 16, -114, -118, 26, -12, -103, 90, -102, 16, -44, -23, 58, -34, -93}, new byte[]{-105, -19, 51, -11, 126, -6, -92, 123}), (Uri) null);
        intent.addCategory(AbstractC1387m.m2421h(new byte[]{-16, 105, 115, -64, 19, -89, -109, 39, -8, 105, 99, -41, 18, -70, -39, 106, -16, 115, 114, -43, 19, -68, -114, 39, -35, 70, 66, -4, 63, -122, -78, 91}, new byte[]{-111, 7, 23, -78, 124, -50, -9, 9}));
        for (ResolveInfo resolveInfo : this.f2849c.queryIntentActivities(intent, 0)) {
            String string = resolveInfo.loadLabel(this.f2849c).toString();
            Drawable drawableLoadIcon = resolveInfo.loadIcon(this.f2849c);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            String str = activityInfo.packageName;
            ApplicationInfo applicationInfo = activityInfo.applicationInfo;
            if (!applicationInfo.packageName.contains(AbstractC1387m.m2421h(new byte[]{-80, 88, 107, -20, 23, 124, -79, -91, -93, 91, 99, -20, 28, 101, -90, -95, -96, 67, 103, -80, 6}, new byte[]{-45, 55, 6, -62, 114, 4, -48, -56})) && (applicationInfo.flags & 1) == 0) {
                ArrayList arrayList = this.f2848b;
                C1679g c1679g = new C1679g();
                c1679g.f4302a = string;
                c1679g.f4303b = str;
                c1679g.f4304c = drawableLoadIcon;
                arrayList.add(c1679g);
            }
        }
    }

    /* JADX INFO: renamed from: t */
    public final void m2200t(String str) {
        Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{-73, 25, 76, -33, 27, 11, -70, -87, -65, 25, 92, -56, 26, 22, -16, -26, -75, 3, 65, -62, 26, 76, -102, -62, -102, 50, 124, -24}, new byte[]{-42, 119, 40, -83, 116, 98, -34, -121}));
        intent.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{111, 109, -32, -87, 31, 10, 7, -64}, new byte[]{31, 12, -125, -62, 126, 109, 98, -6}) + str));
        intent.addFlags(268435456);
        AbstractC3656k.m5875u(this, intent, null);
    }
}

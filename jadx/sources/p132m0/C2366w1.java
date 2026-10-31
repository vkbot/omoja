package p132m0;

import android.app.admin.DevicePolicyManager;
import android.app.usage.UsageEvents;
import android.app.usage.UsageStatsManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.navigation.ViewOnClickListenerC0675c;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import p016b1.AbstractC0880u;
import p047e0.AbstractC1387m;
import p062f5.RunnableC1556j;
import p121l0.C2194a;
import p121l0.C2195b;

/* JADX INFO: renamed from: m0.w1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2366w1 extends C2195b {

    /* JADX INFO: renamed from: b */
    public RecyclerView f6396b;

    /* JADX INFO: renamed from: c */
    public TextView f6397c;

    /* JADX INFO: renamed from: d */
    public TextView f6398d;

    /* JADX INFO: renamed from: e */
    public C2362v1 f6399e;

    /* JADX INFO: renamed from: f */
    public final ArrayList f6400f = new ArrayList();

    /* JADX INFO: renamed from: g */
    public final ArrayList f6401g = new ArrayList();

    /* JADX INFO: renamed from: h */
    public final Handler f6402h = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: i */
    public int f6403i = 0;

    /* JADX INFO: renamed from: j */
    public Display[] f6404j;

    /* JADX INFO: renamed from: t */
    public static boolean m3737t(Context context, String str) {
        try {
            return (context.getPackageManager().getApplicationInfo(str, 0).flags & 129) == 0;
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: u */
    public static DevicePolicyManager m3738u(Context context) {
        return (DevicePolicyManager) context.getSystemService(AbstractC1387m.m2421h(new byte[]{65, -79, -85, -64, -26, 8, -34, -91, 74, -72, -76, -54, -4}, new byte[]{37, -44, -35, -87, -123, 109, -127, -43}));
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_recent_task_manager, viewGroup, false);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f6403i = arguments.getInt(AbstractC1387m.m2421h(new byte[]{-74, -114, 90}, new byte[]{-46, -25, 41, -74, -16, 77, 56, 59}), 0);
        }
        this.f6396b = (RecyclerView) viewInflate.findViewById(R.id.recyclerRecentTasks);
        this.f6397c = (TextView) viewInflate.findViewById(R.id.emptyRecentTasks);
        this.f6398d = (TextView) viewInflate.findViewById(R.id.recentStopRightsHint);
        this.f6397c.setOnClickListener(new ViewOnClickListenerC0675c(17, this));
        this.f6396b.setLayoutManager(new LinearLayoutManager(requireContext(), 0, false));
        C2362v1 c2362v1 = new C2362v1(this);
        this.f6399e = c2362v1;
        this.f6396b.setAdapter(c2362v1);
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        if (getParentFragment() instanceof C2194a) {
            ((C2194a) getParentFragment()).dismissAllowingStateLoss();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        int i10;
        super.onStart();
        Display[] displays = ((DisplayManager) requireContext().getSystemService(AbstractC1387m.m2421h(new byte[]{-46, -123, 84, 8, 47, 70, 5}, new byte[]{-74, -20, 39, 120, 67, 39, 124, 101}))).getDisplays();
        this.f6404j = displays;
        if (displays != null && (i10 = this.f6403i) >= 0 && i10 < displays.length) {
            Display defaultDisplay = ((WindowManager) requireContext().createDisplayContext(this.f6404j[this.f6403i]).getSystemService(AbstractC1387m.m2421h(new byte[]{-20, 27, 119, -127, 35, -127}, new byte[]{-101, 114, 25, -27, 76, -10, 77, 118}))).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f6396b.getLayoutParams();
            layoutParams.width = (int) (((double) point.x) * 0.92d);
            layoutParams.height = -2;
            this.f6396b.setLayoutParams(layoutParams);
        }
        m3739v();
    }

    /* JADX INFO: renamed from: v */
    public final void m3739v() {
        ArrayList arrayList;
        PackageInfo packageInfo;
        boolean zM1003q = AbstractC0880u.m1003q(requireContext());
        ArrayList arrayList2 = this.f6400f;
        if (!zM1003q) {
            arrayList2.clear();
            this.f6399e.notifyDataSetChanged();
            this.f6397c.setText(R.string.recent_task_manager_usage_access);
            this.f6397c.setVisibility(0);
            this.f6396b.setVisibility(8);
            return;
        }
        PackageManager packageManager = requireContext().getPackageManager();
        Context contextRequireContext = requireContext();
        UsageStatsManager usageStatsManager = (UsageStatsManager) contextRequireContext.getSystemService(AbstractC1387m.m2421h(new byte[]{89, 65, 108, 104, 83, 117, 86, -114, 88, 65}, new byte[]{44, 50, 13, 15, 54, 6, 34, -17}));
        HashMap map = new HashMap();
        if (usageStatsManager == null || !AbstractC0880u.m1003q(contextRequireContext)) {
            arrayList = new ArrayList();
        } else {
            long jCurrentTimeMillis = System.currentTimeMillis();
            UsageEvents usageEventsQueryEvents = usageStatsManager.queryEvents(jCurrentTimeMillis - 604800000, jCurrentTimeMillis);
            UsageEvents.Event event = new UsageEvents.Event();
            String packageName = contextRequireContext.getPackageName();
            while (usageEventsQueryEvents.hasNextEvent()) {
                usageEventsQueryEvents.getNextEvent(event);
                int eventType = event.getEventType();
                boolean z9 = true;
                boolean z10 = eventType == 1;
                if (Build.VERSION.SDK_INT >= 29) {
                    if (!z10 && eventType != 1) {
                        z9 = false;
                    }
                    z10 = z9;
                }
                String packageName2 = event.getPackageName();
                if (z10 && packageName2 != null && !packageName2.equals(packageName)) {
                    map.put(packageName2, Long.valueOf(event.getTimeStamp()));
                }
            }
            ArrayList arrayList3 = new ArrayList(map.entrySet());
            arrayList3.sort(Comparator.comparingLong(new C2346r1()));
            arrayList = new ArrayList();
            for (int iMax = Math.max(0, arrayList3.size() - Math.max(0, 20)); iMax < arrayList3.size(); iMax++) {
                arrayList.add((String) ((Map.Entry) arrayList3.get(iMax)).getKey());
            }
        }
        arrayList2.clear();
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            String str = (String) obj;
            if (!this.f6401g.contains(str)) {
                try {
                    packageInfo = requireContext().getPackageManager().getPackageInfo(str, 0);
                } catch (PackageManager.NameNotFoundException unused) {
                    packageInfo = null;
                }
                if (packageInfo != null && packageManager.getLaunchIntentForPackage(str) != null) {
                    String string = packageManager.getApplicationLabel(packageInfo.applicationInfo).toString();
                    Drawable applicationIcon = packageManager.getApplicationIcon(packageInfo.applicationInfo);
                    C2350s1 c2350s1 = new C2350s1();
                    c2350s1.f6344a = string;
                    c2350s1.f6345b = str;
                    c2350s1.f6346c = applicationIcon;
                    arrayList2.add(c2350s1);
                }
            }
        }
        this.f6399e.notifyDataSetChanged();
        this.f6397c.setText(R.string.recent_task_manager_empty);
        this.f6397c.setVisibility(arrayList2.isEmpty() ? 0 : 8);
        this.f6396b.setVisibility(arrayList2.isEmpty() ? 8 : 0);
        if (arrayList2.isEmpty()) {
            return;
        }
        this.f6396b.post(new RunnableC1556j(8, this));
    }
}

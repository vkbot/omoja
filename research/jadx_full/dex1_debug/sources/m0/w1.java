package m0;

import android.app.admin.DevicePolicyManager;
import android.app.usage.UsageEvents;
import android.app.usage.UsageEvents$Event;
import android.app.usage.UsageStatsManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout$LayoutParams;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map$Entry;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class w1 extends l0.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public RecyclerView f3616b;
    public TextView c;
    public TextView d;
    public v1 e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f3617f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f3618g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Handler f3619h = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3620i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Display[] f3621j;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean t(Context context, String str) {
        try {
            return (context.getPackageManager().getApplicationInfo(str, 0).flags & 129) == 0;
        } catch (Exception unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static DevicePolicyManager u(Context context) {
        return (DevicePolicyManager) context.getSystemService(e0.m.h(new byte[]{65, -79, -85, -64, -26, 8, -34, -91, 74, -72, -76, -54, -4}, new byte[]{37, -44, -35, -87, -123, 109, -127, -43}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(2131492969, viewGroup, false);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f3620i = arguments.getInt(e0.m.h(new byte[]{-74, -114, 90}, new byte[]{-46, -25, 41, -74, -16, 77, 56, 59}), 0);
        }
        this.f3616b = (RecyclerView) viewInflate.findViewById(2131297258);
        this.c = (TextView) viewInflate.findViewById(2131296738);
        this.d = (TextView) viewInflate.findViewById(2131297255);
        this.c.setOnClickListener(new androidx.navigation.c(17, this));
        this.f3616b.setLayoutManager(new LinearLayoutManager(requireContext(), 0, false));
        v1 v1Var = new v1(this);
        this.e = v1Var;
        this.f3616b.setAdapter(v1Var);
        return viewInflate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        if (getParentFragment() instanceof l0.a) {
            ((l0.a) getParentFragment()).dismissAllowingStateLoss();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        int i9;
        super.onStart();
        Display[] displays = ((DisplayManager) requireContext().getSystemService(e0.m.h(new byte[]{-46, -123, 84, 8, 47, 70, 5}, new byte[]{-74, -20, 39, 120, 67, 39, 124, 101}))).getDisplays();
        this.f3621j = displays;
        if (displays != null && (i9 = this.f3620i) >= 0 && i9 < displays.length) {
            Display defaultDisplay = ((WindowManager) requireContext().createDisplayContext(this.f3621j[this.f3620i]).getSystemService(e0.m.h(new byte[]{-20, 27, 119, -127, 35, -127}, new byte[]{-101, 114, 25, -27, 76, -10, 77, 118}))).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            LinearLayout$LayoutParams linearLayout$LayoutParams = (LinearLayout$LayoutParams) this.f3616b.getLayoutParams();
            linearLayout$LayoutParams.width = (int) (((double) point.x) * 0.92d);
            linearLayout$LayoutParams.height = -2;
            this.f3616b.setLayoutParams(linearLayout$LayoutParams);
        }
        v();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void v() {
        ArrayList arrayList;
        PackageInfo packageInfo;
        boolean zQ = b1.u.q(requireContext());
        ArrayList arrayList2 = this.f3617f;
        if (!zQ) {
            arrayList2.clear();
            this.e.notifyDataSetChanged();
            this.c.setText(2131952475);
            this.c.setVisibility(0);
            this.f3616b.setVisibility(8);
            return;
        }
        PackageManager packageManager = requireContext().getPackageManager();
        Context contextRequireContext = requireContext();
        UsageStatsManager usageStatsManager = (UsageStatsManager) contextRequireContext.getSystemService(e0.m.h(new byte[]{89, 65, 108, 104, 83, 117, 86, -114, 88, 65}, new byte[]{44, 50, 13, 15, 54, 6, 34, -17}));
        HashMap map = new HashMap();
        if (usageStatsManager == null || !b1.u.q(contextRequireContext)) {
            arrayList = new ArrayList();
        } else {
            long jCurrentTimeMillis = System.currentTimeMillis();
            UsageEvents usageEventsQueryEvents = usageStatsManager.queryEvents(jCurrentTimeMillis - 604800000, jCurrentTimeMillis);
            UsageEvents$Event usageEvents$Event = new UsageEvents$Event();
            String packageName = contextRequireContext.getPackageName();
            while (usageEventsQueryEvents.hasNextEvent()) {
                usageEventsQueryEvents.getNextEvent(usageEvents$Event);
                int eventType = usageEvents$Event.getEventType();
                boolean z8 = true;
                boolean z9 = eventType == 1;
                if (Build$VERSION.SDK_INT >= 29) {
                    if (!z9 && eventType != 1) {
                        z8 = false;
                    }
                    z9 = z8;
                }
                String packageName2 = usageEvents$Event.getPackageName();
                if (z9 && packageName2 != null && !packageName2.equals(packageName)) {
                    map.put(packageName2, Long.valueOf(usageEvents$Event.getTimeStamp()));
                }
            }
            ArrayList arrayList3 = new ArrayList(map.entrySet());
            arrayList3.sort(Comparator.comparingLong(new r1()));
            arrayList = new ArrayList();
            for (int iMax = Math.max(0, arrayList3.size() - Math.max(0, 20)); iMax < arrayList3.size(); iMax++) {
                arrayList.add((String) ((Map$Entry) arrayList3.get(iMax)).getKey());
            }
        }
        arrayList2.clear();
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            String str = (String) obj;
            if (!this.f3618g.contains(str)) {
                try {
                    packageInfo = requireContext().getPackageManager().getPackageInfo(str, 0);
                } catch (PackageManager$NameNotFoundException unused) {
                    packageInfo = null;
                }
                if (packageInfo != null && packageManager.getLaunchIntentForPackage(str) != null) {
                    String string = packageManager.getApplicationLabel(packageInfo.applicationInfo).toString();
                    Drawable applicationIcon = packageManager.getApplicationIcon(packageInfo.applicationInfo);
                    s1 s1Var = new s1();
                    s1Var.f3584a = string;
                    s1Var.f3585b = str;
                    s1Var.c = applicationIcon;
                    arrayList2.add(s1Var);
                }
            }
        }
        this.e.notifyDataSetChanged();
        this.c.setText(2131952473);
        this.c.setVisibility(arrayList2.isEmpty() ? 0 : 8);
        this.f3616b.setVisibility(arrayList2.isEmpty() ? 8 : 0);
        if (arrayList2.isEmpty()) {
            return;
        }
        this.f3616b.post(new f5.j(8, this));
    }
}

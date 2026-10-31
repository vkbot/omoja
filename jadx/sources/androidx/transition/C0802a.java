package androidx.transition;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.hardware.display.VirtualDisplay;
import android.view.View;
import android.widget.Button;
import androidx.core.os.CancellationSignal;
import com.example.navistart.ModernMainActivity;
import com.example.navistart.home.LauncherWindowService;
import com.example.navistart.mainview.YMovLay;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.p161io.filefilter.PathVisitorFileFilter;
import org.apache.commons.p161io.function.IOSupplier;
import p003a2.C0004a;
import p016b1.C0872m;
import p039d2.C1252h;
import p039d2.C1254j;
import p039d2.C1256l;
import p047e0.C1396n3;
import p050e3.C1461d;
import p069g2.C1605a;
import p069g2.C1606b;
import p069g2.C1608d;
import p069g2.C1609e;
import p069g2.C1610f;
import p069g2.C1611g;
import p069g2.EnumC1607c;
import p078h0.C1652b;
import p111k2.C2029a;
import p111k2.C2030b;
import p111k2.C2036h;
import p111k2.InterfaceC2034f;
import p132m0.C2271b3;
import p132m0.C2349s0;
import p142n0.C2467b;
import p190s1.InterfaceC3177w;
import p198t1.InterfaceC3238p;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: androidx.transition.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0802a implements CancellationSignal.OnCancelListener, InterfaceC3238p, InterfaceC2034f, IOSupplier, InterfaceC3177w {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f517b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f518c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f519d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ Object f520e;

    public /* synthetic */ C0802a(Runnable runnable, Transition transition, Runnable runnable2) {
        this.f517b = 0;
        this.f518c = runnable;
        this.f520e = transition;
        this.f519d = runnable2;
    }

    @Override // p198t1.InterfaceC3238p
    /* JADX INFO: renamed from: a */
    public void mo885a(int i10, boolean z9) {
        ModernMainActivity modernMainActivity = (ModernMainActivity) this.f518c;
        String str = (String) this.f519d;
        YMovLay yMovLay = (YMovLay) this.f520e;
        String str2 = ModernMainActivity.f1436B1;
        if (z9) {
            C1652b.m2745o().saveString(str, String.valueOf(i10));
            yMovLay.setYLayMovX(String.valueOf(i10));
            C1396n3.m2439a(modernMainActivity);
        }
    }

    @Override // p111k2.InterfaceC2034f
    public Object apply(Object obj) {
        int i10;
        int i11 = this.f517b;
        int i12 = 6;
        int i13 = 5;
        int i14 = 4;
        int i15 = 3;
        int i16 = 0;
        int i17 = 1;
        int i18 = 2;
        Object obj2 = this.f520e;
        Object obj3 = this.f519d;
        C2036h c2036h = (C2036h) this.f518c;
        switch (i11) {
            case 2:
                ArrayList arrayList = (ArrayList) obj3;
                C1254j c1254j = (C1254j) obj2;
                Cursor cursor = (Cursor) obj;
                while (cursor.moveToNext()) {
                    long j10 = cursor.getLong(i16);
                    int i19 = cursor.getInt(7) != 0 ? i17 : i16;
                    C1252h c1252h = new C1252h();
                    c1252h.f2957f = new HashMap();
                    String string = cursor.getString(i17);
                    if (string == null) {
                        C2467b.m3828n("Null transportName");
                        return null;
                    }
                    c1252h.f2952a = string;
                    c1252h.f2955d = Long.valueOf(cursor.getLong(i18));
                    c1252h.f2956e = Long.valueOf(cursor.getLong(i15));
                    if (i19 != 0) {
                        String string2 = cursor.getString(i14);
                        c1252h.f2954c = new C1256l(string2 == null ? C2036h.f5552g : new C0004a(string2), cursor.getBlob(5));
                        i10 = i16;
                    } else {
                        String string3 = cursor.getString(i14);
                        C0004a c0004a = string3 == null ? C2036h.f5552g : new C0004a(string3);
                        Cursor cursorQuery = c2036h.m3135b().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j10)}, null, null, "sequence_num");
                        try {
                            ArrayList arrayList2 = new ArrayList();
                            int length = i16;
                            while (cursorQuery.moveToNext()) {
                                byte[] blob = cursorQuery.getBlob(i16);
                                arrayList2.add(blob);
                                length += blob.length;
                            }
                            byte[] bArr = new byte[length];
                            int i20 = i16;
                            int length2 = i20;
                            while (i20 < arrayList2.size()) {
                                byte[] bArr2 = (byte[]) arrayList2.get(i20);
                                ArrayList arrayList3 = arrayList2;
                                System.arraycopy(bArr2, 0, bArr, length2, bArr2.length);
                                length2 += bArr2.length;
                                i20++;
                                arrayList2 = arrayList3;
                            }
                            i10 = 0;
                            cursorQuery.close();
                            c1252h.f2954c = new C1256l(c0004a, bArr);
                        } catch (Throwable th) {
                            cursorQuery.close();
                            throw th;
                        }
                    }
                    if (!cursor.isNull(6)) {
                        c1252h.f2953b = Integer.valueOf(cursor.getInt(6));
                    }
                    arrayList.add(new C2030b(j10, c1254j, c1252h.m2250l()));
                    i16 = i10;
                    i14 = 4;
                    i15 = 3;
                    i17 = 1;
                    i18 = 2;
                }
                return null;
            default:
                HashMap map = (HashMap) obj3;
                C0872m c0872m = (C0872m) obj2;
                ArrayList arrayList4 = (ArrayList) c0872m.f603e;
                Cursor cursor2 = (Cursor) obj;
                c2036h.getClass();
                while (cursor2.moveToNext()) {
                    String string4 = cursor2.getString(0);
                    int i21 = cursor2.getInt(1);
                    EnumC1607c enumC1607c = EnumC1607c.REASON_UNKNOWN;
                    if (i21 != 0) {
                        if (i21 == 1) {
                            enumC1607c = EnumC1607c.MESSAGE_TOO_OLD;
                        } else if (i21 == 2) {
                            enumC1607c = EnumC1607c.CACHE_FULL;
                        } else if (i21 == 3) {
                            enumC1607c = EnumC1607c.PAYLOAD_TOO_BIG;
                        } else if (i21 == 4) {
                            enumC1607c = EnumC1607c.MAX_RETRIES_REACHED;
                        } else if (i21 == i13) {
                            enumC1607c = EnumC1607c.INVALID_PAYLOD;
                        } else if (i21 == i12) {
                            enumC1607c = EnumC1607c.SERVER_ERROR;
                        } else {
                            C1461d.m2505d(Integer.valueOf(i21), "SQLiteEventStore", "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN");
                        }
                    }
                    long j11 = cursor2.getLong(2);
                    if (!map.containsKey(string4)) {
                        map.put(string4, new ArrayList());
                    }
                    ((List) map.get(string4)).add(new C1608d(j11, enumC1607c));
                    i12 = 6;
                    i13 = 5;
                }
                for (Map.Entry entry : map.entrySet()) {
                    int i22 = C1609e.f4048c;
                    new ArrayList();
                    arrayList4.add(new C1609e((String) entry.getKey(), Collections.unmodifiableList((List) entry.getValue())));
                }
                final long jMo1142d = c2036h.f5554c.mo1142d();
                c0872m.f601c = (C1611g) c2036h.m3137y(new InterfaceC2034f() { // from class: k2.e
                    @Override // p111k2.InterfaceC2034f
                    public final Object apply(Object obj4) {
                        long j12 = jMo1142d;
                        Cursor cursorRawQuery = ((SQLiteDatabase) obj4).rawQuery("SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1", new String[0]);
                        try {
                            cursorRawQuery.moveToNext();
                            return new C1611g(cursorRawQuery.getLong(0), j12);
                        } finally {
                            cursorRawQuery.close();
                        }
                    }
                });
                c0872m.f604f = new C1606b(new C1610f(c2036h.m3135b().compileStatement("PRAGMA page_size").simpleQueryForLong() * c2036h.m3135b().compileStatement("PRAGMA page_count").simpleQueryForLong(), C2029a.f5540f.f5541a));
                c0872m.f602d = (String) c2036h.f5557f.get();
                return new C1605a((C1611g) c0872m.f601c, Collections.unmodifiableList(arrayList4), (C1606b) c0872m.f604f, (String) c0872m.f602d);
        }
    }

    @Override // p190s1.InterfaceC3177w
    /* JADX INFO: renamed from: b */
    public void mo886b(String str, boolean z9) {
        LauncherWindowService launcherWindowService = (LauncherWindowService) this.f518c;
        String str2 = (String) this.f519d;
        VirtualDisplay virtualDisplay = (VirtualDisplay) this.f520e;
        HashMap map = launcherWindowService.f1736b;
        if (z9 && launcherWindowService.f1737c.remove(str2) && map.get(str2) == virtualDisplay) {
            map.remove(str2);
            virtualDisplay.release();
            if (map.isEmpty() && launcherWindowService.f1738d.isEmpty()) {
                launcherWindowService.stopSelf();
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public void m887c(C2271b3 c2271b3) {
        C2349s0 c2349s0 = (C2349s0) this.f518c;
        View view = (View) this.f519d;
        Button button = (Button) this.f520e;
        if (c2349s0.isAdded() && c2349s0.getView() == view) {
            button.setEnabled(true);
            button.setText(com.example.navistart.R.string.launcher_shortcuts_cleanup);
            AbstractC3656k.m5878x(c2349s0.requireContext(), c2349s0.getString(c2271b3.f5946b != null ? com.example.navistart.R.string.launcher_shortcuts_reset_error : com.example.navistart.R.string.launcher_shortcuts_reset_done));
        }
    }

    @Override // org.apache.commons.p161io.function.IOSupplier
    public Object get() {
        return ((PathVisitorFileFilter) this.f518c).lambda$accept$0((Path) this.f519d, (BasicFileAttributes) this.f520e);
    }

    @Override // androidx.core.os.CancellationSignal.OnCancelListener
    public void onCancel() {
        FragmentTransitionSupport.lambda$setListenerForTransitionEnd$0((Runnable) this.f518c, (Transition) this.f520e, (Runnable) this.f519d);
    }

    public /* synthetic */ C0802a(Object obj, Object obj2, Object obj3, int i10) {
        this.f517b = i10;
        this.f518c = obj;
        this.f519d = obj2;
        this.f520e = obj3;
    }
}

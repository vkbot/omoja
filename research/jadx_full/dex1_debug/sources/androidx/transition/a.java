package androidx.transition;

import android.database.Cursor;
import android.hardware.display.VirtualDisplay;
import android.view.View;
import android.widget.Button;
import androidx.core.os.CancellationSignal$OnCancelListener;
import b1.m;
import com.example.navistart.ModernMainActivity;
import com.example.navistart.home.LauncherWindowService;
import com.example.navistart.mainview.YMovLay;
import d2.j;
import d2.l;
import e0.n3;
import g2.e;
import g2.g;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map$Entry;
import k2.f;
import k2.h;
import m0.b3;
import m0.s0;
import org.apache.commons.io.filefilter.PathVisitorFileFilter;
import org.apache.commons.io.function.IOSupplier;
import s1.w;
import t1.p;
import y5.k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements CancellationSignal$OnCancelListener, p, f, IOSupplier, w {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f216b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(Runnable runnable, Transition transition, Runnable runnable2) {
        this.f216b = 0;
        this.c = runnable;
        this.e = transition;
        this.d = runnable2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t1.p
    public void a(int i9, boolean z8) {
        ModernMainActivity modernMainActivity = (ModernMainActivity) this.c;
        String str = (String) this.d;
        YMovLay yMovLay = (YMovLay) this.e;
        String str2 = ModernMainActivity.B1;
        if (z8) {
            h0.b.o().saveString(str, String.valueOf(i9));
            yMovLay.setYLayMovX(String.valueOf(i9));
            n3.a(modernMainActivity);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k2.f
    public Object apply(Object obj) {
        int i9;
        int i10 = this.f216b;
        int i11 = 6;
        int i12 = 5;
        int i13 = 4;
        int i14 = 3;
        int i15 = 0;
        int i16 = 1;
        int i17 = 2;
        Object obj2 = this.e;
        Object obj3 = this.d;
        h hVar = (h) this.c;
        switch (i10) {
            case 2:
                ArrayList arrayList = (ArrayList) obj3;
                j jVar = (j) obj2;
                Cursor cursor = (Cursor) obj;
                while (cursor.moveToNext()) {
                    long j9 = cursor.getLong(i15);
                    int i18 = cursor.getInt(7) != 0 ? i16 : i15;
                    d2.h hVar2 = new d2.h();
                    hVar2.f1679f = new HashMap();
                    String string = cursor.getString(i16);
                    if (string == null) {
                        n0.b.n("Null transportName");
                        return null;
                    }
                    hVar2.f1677a = string;
                    hVar2.d = Long.valueOf(cursor.getLong(i17));
                    hVar2.e = Long.valueOf(cursor.getLong(i14));
                    if (i18 != 0) {
                        String string2 = cursor.getString(i13);
                        hVar2.c = new l(string2 == null ? h.f3165g : new a2.a(string2), cursor.getBlob(5));
                        i9 = i15;
                    } else {
                        String string3 = cursor.getString(i13);
                        a2.a aVar = string3 == null ? h.f3165g : new a2.a(string3);
                        Cursor cursorQuery = hVar.b().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j9)}, null, null, "sequence_num");
                        try {
                            ArrayList arrayList2 = new ArrayList();
                            int length = i15;
                            while (cursorQuery.moveToNext()) {
                                byte[] blob = cursorQuery.getBlob(i15);
                                arrayList2.add(blob);
                                length += blob.length;
                            }
                            byte[] bArr = new byte[length];
                            int i19 = i15;
                            int length2 = i19;
                            while (i19 < arrayList2.size()) {
                                byte[] bArr2 = (byte[]) arrayList2.get(i19);
                                ArrayList arrayList3 = arrayList2;
                                System.arraycopy(bArr2, 0, bArr, length2, bArr2.length);
                                length2 += bArr2.length;
                                i19++;
                                arrayList2 = arrayList3;
                            }
                            i9 = 0;
                            cursorQuery.close();
                            hVar2.c = new l(aVar, bArr);
                        } catch (Throwable th) {
                            cursorQuery.close();
                            throw th;
                        }
                    }
                    if (!cursor.isNull(6)) {
                        hVar2.f1678b = Integer.valueOf(cursor.getInt(6));
                    }
                    arrayList.add(new k2.b(j9, jVar, hVar2.l()));
                    i15 = i9;
                    i13 = 4;
                    i14 = 3;
                    i16 = 1;
                    i17 = 2;
                }
                return null;
            default:
                HashMap map = (HashMap) obj3;
                m mVar = (m) obj2;
                ArrayList arrayList4 = (ArrayList) mVar.e;
                Cursor cursor2 = (Cursor) obj;
                hVar.getClass();
                while (cursor2.moveToNext()) {
                    String string4 = cursor2.getString(0);
                    int i20 = cursor2.getInt(1);
                    g2.c cVar = g2.c.REASON_UNKNOWN;
                    if (i20 != 0) {
                        if (i20 == 1) {
                            cVar = g2.c.MESSAGE_TOO_OLD;
                        } else if (i20 == 2) {
                            cVar = g2.c.CACHE_FULL;
                        } else if (i20 == 3) {
                            cVar = g2.c.PAYLOAD_TOO_BIG;
                        } else if (i20 == 4) {
                            cVar = g2.c.MAX_RETRIES_REACHED;
                        } else if (i20 == i12) {
                            cVar = g2.c.INVALID_PAYLOD;
                        } else if (i20 == i11) {
                            cVar = g2.c.SERVER_ERROR;
                        } else {
                            e3.d.d(Integer.valueOf(i20), "SQLiteEventStore", "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN");
                        }
                    }
                    long j10 = cursor2.getLong(2);
                    if (!map.containsKey(string4)) {
                        map.put(string4, new ArrayList());
                    }
                    ((List) map.get(string4)).add(new g2.d(j10, cVar));
                    i11 = 6;
                    i12 = 5;
                }
                for (Map$Entry map$Entry : map.entrySet()) {
                    int i21 = e.c;
                    new ArrayList();
                    arrayList4.add(new e((String) map$Entry.getKey(), Collections.unmodifiableList((List) map$Entry.getValue())));
                }
                mVar.c = (g) hVar.y(new k2.e(hVar.c.d()));
                mVar.f270f = new g2.b(new g2.f(hVar.b().compileStatement("PRAGMA page_size").simpleQueryForLong() * hVar.b().compileStatement("PRAGMA page_count").simpleQueryForLong(), k2.a.f3157f.f3158a));
                mVar.d = (String) hVar.f3167f.get();
                return new g2.a((g) mVar.c, Collections.unmodifiableList(arrayList4), (g2.b) mVar.f270f, (String) mVar.d);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // s1.w
    public void b(String str, boolean z8) {
        LauncherWindowService launcherWindowService = (LauncherWindowService) this.c;
        String str2 = (String) this.d;
        VirtualDisplay virtualDisplay = (VirtualDisplay) this.e;
        HashMap map = launcherWindowService.f909b;
        if (z8 && launcherWindowService.c.remove(str2) && map.get(str2) == virtualDisplay) {
            map.remove(str2);
            virtualDisplay.release();
            if (map.isEmpty() && launcherWindowService.d.isEmpty()) {
                launcherWindowService.stopSelf();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void c(b3 b3Var) {
        s0 s0Var = (s0) this.c;
        View view = (View) this.d;
        Button button = (Button) this.e;
        if (s0Var.isAdded() && s0Var.getView() == view) {
            button.setEnabled(true);
            button.setText(2131952111);
            k.x(s0Var.requireContext(), s0Var.getString(b3Var.f3342b != null ? 2131952123 : 2131952122));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object get() {
        return PathVisitorFileFilter.a((PathVisitorFileFilter) this.c, (Path) this.d, (BasicFileAttributes) this.e);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.os.CancellationSignal$OnCancelListener
    public void onCancel() {
        FragmentTransitionSupport.a((Runnable) this.c, (Transition) this.e, (Runnable) this.d);
    }

    public /* synthetic */ a(Object obj, Object obj2, Object obj3, int i9) {
        this.f216b = i9;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }
}

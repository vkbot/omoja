package p132m0;

import android.location.Location;
import androidx.lifecycle.Observer;
import com.example.navistart.cores.LogcatRule;
import com.google.protobuf.AbstractC1178q;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.ByteCompanionObject;
import p047e0.AbstractC1387m;
import p047e0.RunnableC1375j2;
import p098j0.C1919e;
import p121l0.C2195b;
import p142n0.EnumC2469d;

/* JADX INFO: renamed from: m0.x0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2369x0 implements Observer {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f6410a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C2195b f6411b;

    public /* synthetic */ C2369x0(C2195b c2195b, int i10) {
        this.f6410a = i10;
        this.f6411b = c2195b;
    }

    /* JADX WARN: Code duplicated, block: B:55:0x0192 A[LOOP:2: B:47:0x0171->B:55:0x0192, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:63:0x01ad A[SYNTHETIC] */
    @Override // androidx.lifecycle.Observer
    public final void onChanged(Object obj) {
        String str;
        int iIndexOf;
        int i10 = this.f6410a;
        C2195b c2195b = this.f6411b;
        switch (i10) {
            case 0:
                C2377z0 c2377z0 = (C2377z0) c2195b;
                String str2 = (String) obj;
                LinkedHashMap linkedHashMap = c2377z0.f6437c;
                ArrayList arrayList = c2377z0.f6436b;
                if (c2377z0.f6444j && str2 != null && !c2377z0.f6445k.isEmpty() && (str = c2377z0.f6445k) != null) {
                    int length = str.length();
                    if (length != 0) {
                        for (int i11 = 0; i11 <= str2.length() - length; i11++) {
                            if (!str2.regionMatches(true, i11, str, 0, length)) {
                            }
                        }
                    }
                    LogcatRule capturedLine = LogcatRule.parseCapturedLine(str2);
                    if (capturedLine != null) {
                        String storageValue = capturedLine.toStorageValue();
                        C2353t0 c2353t0 = (C2353t0) linkedHashMap.get(storageValue);
                        if (c2353t0 == null) {
                            c2353t0 = new C2353t0(capturedLine, C1919e.m3000c(EnumC2469d.f6756e, c2377z0.requireContext()), false);
                            linkedHashMap.put(storageValue, c2353t0);
                        } else if (!c2353t0.f6355c && (iIndexOf = arrayList.indexOf(c2353t0)) >= 0) {
                            arrayList.remove(iIndexOf);
                            c2377z0.f6443i.notifyItemRemoved(iIndexOf);
                        }
                        if (!c2353t0.f6355c) {
                            int size = arrayList.size();
                            int i12 = 0;
                            int i13 = 0;
                            while (i13 < size) {
                                Object obj2 = arrayList.get(i13);
                                i13++;
                                if (((C2353t0) obj2).f6355c) {
                                    i12++;
                                } else {
                                    arrayList.add(i12, c2353t0);
                                    c2377z0.f6443i.notifyItemInserted(i12);
                                    c2377z0.f6442h.scrollToPosition(i12);
                                }
                            }
                            arrayList.add(i12, c2353t0);
                            c2377z0.f6443i.notifyItemInserted(i12);
                            c2377z0.f6442h.scrollToPosition(i12);
                        }
                        while (true) {
                            int size2 = arrayList.size();
                            int size3 = arrayList.size();
                            int i14 = 0;
                            int i15 = 0;
                            while (i15 < size3) {
                                Object obj3 = arrayList.get(i15);
                                i15++;
                                if (((C2353t0) obj3).f6355c) {
                                    i14++;
                                } else if (size2 - i14 > 200) {
                                    c2377z0.m3744u();
                                } else {
                                    int size4 = arrayList.size() - 1;
                                    linkedHashMap.remove(((C2353t0) arrayList.remove(size4)).f6353a.toStorageValue());
                                    c2377z0.f6443i.notifyItemRemoved(size4);
                                }
                                break;
                            }
                            if (size2 - i14 > 200) {
                                c2377z0.m3744u();
                            } else {
                                int size5 = arrayList.size() - 1;
                                linkedHashMap.remove(((C2353t0) arrayList.remove(size5)).f6353a.toStorageValue());
                                c2377z0.f6443i.notifyItemRemoved(size5);
                            }
                            break;
                        }
                    }
                    break;
                }
                break;
            default:
                C2319l1 c2319l1 = (C2319l1) c2195b;
                Location location = (Location) obj;
                int i16 = C2319l1.f6209d;
                if (location != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(AbstractC1387m.m2421h(new byte[]{-70, 11, 64, 113, -30, 115, -10}, new byte[]{-63, 41, 44, 16, -106, 81, -52, 110}));
                    sb.append(location.getLatitude());
                    sb.append(AbstractC1387m.m2421h(new byte[]{111, -6, 108, 58, -125, 107, -44}, new byte[]{67, -40, 0, 85, -19, 73, -18, 118}));
                    sb.append(location.getLongitude());
                    sb.append(AbstractC1387m.m2421h(new byte[]{-80, 80, -127, -22, 68, -51, -66, 4, -90}, new byte[]{-100, 114, -14, -102, 33, -88, -38, 38}));
                    sb.append(location.getSpeed());
                    sb.append(AbstractC1387m.m2421h(new byte[]{-55, -38, 5, -78, -76, -96, 113, -44, -126, -38, 87}, new byte[]{-27, -8, 109, -41, -43, -60, 24, -70}));
                    sb.append(location.getBearing());
                    String strM2075i = AbstractC1178q.m2075i(new byte[]{7}, new byte[]{122, -52, 27, -53, -78, 46, -82, -99}, sb);
                    String strM2421h = AbstractC1387m.m2421h(new byte[]{-103, 101, -13}, new byte[]{-2, 21, ByteCompanionObject.MIN_VALUE, -63, 101, -122, 77, -79});
                    if (c2319l1.f6211c != null) {
                        StringBuilder sb2 = new StringBuilder();
                        AbstractC1178q.m2087u(new byte[]{-10, -8, 91, -10, -97, 8, -79, 83, -17, -48, 91, -10, -126, 16, -10, 88, -60, -25, 80, -4, -124, 95, -71, 26, -95, -26, 92, -4, -108, 16, -24, 18, -18, -1, 116, -4, -108, 13, -16, 85, -27, -44, 67, -9, -98, 11, -73, 27}, new byte[]{-127, -111, 53, -110, -16, ByteCompanionObject.MAX_VALUE, -97, 60}, sb2, strM2421h);
                        AbstractC1178q.m2087u(new byte[]{3, 39, 55}, new byte[]{36, 11, 23, -10, 56, 92, -75, -49}, sb2, strM2075i);
                        c2319l1.f6211c.post(new RunnableC1375j2(19, c2319l1, AbstractC1178q.m2075i(new byte[]{-69, -89}, new byte[]{-110, -100, -33, 77, 124, 98, 78, -87}, sb2)));
                        break;
                    }
                }
                break;
        }
    }
}

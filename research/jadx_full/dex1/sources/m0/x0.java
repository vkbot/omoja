package m0;

import android.location.Location;
import androidx.lifecycle.Observer;
import com.example.navistart.cores.LogcatRule;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class x0 implements Observer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3625a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l0.b f3626b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ x0(l0.b bVar, int i9) {
        this.f3625a = i9;
        this.f3626b = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:55:0x0192 A[LOOP:2: B:47:0x0171->B:55:0x0192, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:63:0x01ad A[SYNTHETIC] */
    @Override // androidx.lifecycle.Observer
    public final void onChanged(Object obj) {
        String str;
        int iIndexOf;
        int i9 = this.f3625a;
        l0.b bVar = this.f3626b;
        switch (i9) {
            case 0:
                z0 z0Var = (z0) bVar;
                String str2 = (String) obj;
                LinkedHashMap linkedHashMap = z0Var.c;
                ArrayList arrayList = z0Var.f3638b;
                if (z0Var.f3643j && str2 != null && !z0Var.f3644k.isEmpty() && (str = z0Var.f3644k) != null) {
                    int length = str.length();
                    if (length != 0) {
                        for (int i10 = 0; i10 <= str2.length() - length; i10++) {
                            if (!str2.regionMatches(true, i10, str, 0, length)) {
                            }
                        }
                    }
                    LogcatRule capturedLine = LogcatRule.parseCapturedLine(str2);
                    if (capturedLine != null) {
                        String storageValue = capturedLine.toStorageValue();
                        t0 t0Var = (t0) linkedHashMap.get(storageValue);
                        if (t0Var == null) {
                            t0Var = new t0(capturedLine, j0.e.c(n0.d.e, z0Var.requireContext()), false);
                            linkedHashMap.put(storageValue, t0Var);
                        } else if (!t0Var.c && (iIndexOf = arrayList.indexOf(t0Var)) >= 0) {
                            arrayList.remove(iIndexOf);
                            z0Var.f3642i.notifyItemRemoved(iIndexOf);
                        }
                        if (!t0Var.c) {
                            int size = arrayList.size();
                            int i11 = 0;
                            int i12 = 0;
                            while (i12 < size) {
                                Object obj2 = arrayList.get(i12);
                                i12++;
                                if (((t0) obj2).c) {
                                    i11++;
                                } else {
                                    arrayList.add(i11, t0Var);
                                    z0Var.f3642i.notifyItemInserted(i11);
                                    z0Var.f3641h.scrollToPosition(i11);
                                }
                            }
                            arrayList.add(i11, t0Var);
                            z0Var.f3642i.notifyItemInserted(i11);
                            z0Var.f3641h.scrollToPosition(i11);
                        }
                        while (true) {
                            int size2 = arrayList.size();
                            int size3 = arrayList.size();
                            int i13 = 0;
                            int i14 = 0;
                            while (i14 < size3) {
                                Object obj3 = arrayList.get(i14);
                                i14++;
                                if (((t0) obj3).c) {
                                    i13++;
                                } else if (size2 - i13 > 200) {
                                    z0Var.u();
                                } else {
                                    int size4 = arrayList.size() - 1;
                                    linkedHashMap.remove(((t0) arrayList.remove(size4)).f3589a.toStorageValue());
                                    z0Var.f3642i.notifyItemRemoved(size4);
                                }
                                break;
                            }
                            if (size2 - i13 > 200) {
                                z0Var.u();
                            } else {
                                int size5 = arrayList.size() - 1;
                                linkedHashMap.remove(((t0) arrayList.remove(size5)).f3589a.toStorageValue());
                                z0Var.f3642i.notifyItemRemoved(size5);
                            }
                            break;
                        }
                    }
                    break;
                }
                break;
            default:
                l1 l1Var = (l1) bVar;
                Location location = (Location) obj;
                int i15 = l1.d;
                if (location != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(e0.m.h(new byte[]{-70, 11, 64, 113, -30, 115, -10}, new byte[]{-63, 41, 44, 16, -106, 81, -52, 110}));
                    sb.append(location.getLatitude());
                    sb.append(e0.m.h(new byte[]{111, -6, 108, 58, -125, 107, -44}, new byte[]{67, -40, 0, 85, -19, 73, -18, 118}));
                    sb.append(location.getLongitude());
                    sb.append(e0.m.h(new byte[]{-80, 80, -127, -22, 68, -51, -66, 4, -90}, new byte[]{-100, 114, -14, -102, 33, -88, -38, 38}));
                    sb.append(location.getSpeed());
                    sb.append(e0.m.h(new byte[]{-55, -38, 5, -78, -76, -96, 113, -44, -126, -38, 87}, new byte[]{-27, -8, 109, -41, -43, -60, 24, -70}));
                    sb.append(location.getBearing());
                    String strI = com.google.protobuf.q.i(new byte[]{7}, new byte[]{122, -52, 27, -53, -78, 46, -82, -99}, sb);
                    String strH = e0.m.h(new byte[]{-103, 101, -13}, new byte[]{-2, 21, ByteCompanionObject.MIN_VALUE, -63, 101, -122, 77, -79});
                    if (l1Var.c != null) {
                        StringBuilder sb2 = new StringBuilder();
                        com.google.protobuf.q.u(new byte[]{-10, -8, 91, -10, -97, 8, -79, 83, -17, -48, 91, -10, -126, 16, -10, 88, -60, -25, 80, -4, -124, 95, -71, 26, -95, -26, 92, -4, -108, 16, -24, 18, -18, -1, 116, -4, -108, 13, -16, 85, -27, -44, 67, -9, -98, 11, -73, 27}, new byte[]{-127, -111, 53, -110, -16, ByteCompanionObject.MAX_VALUE, -97, 60}, sb2, strH);
                        com.google.protobuf.q.u(new byte[]{3, 39, 55}, new byte[]{36, 11, 23, -10, 56, 92, -75, -49}, sb2, strI);
                        l1Var.c.post(new e0.j2(19, l1Var, com.google.protobuf.q.i(new byte[]{-69, -89}, new byte[]{-110, -100, -33, 77, 124, 98, 78, -87}, sb2)));
                        break;
                    }
                }
                break;
        }
    }
}

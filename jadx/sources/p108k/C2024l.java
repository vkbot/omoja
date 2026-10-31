package p108k;

import ai.onnxruntime.AbstractC0074a;
import android.graphics.Bitmap;
import android.os.Build;
import android.support.v4.media.C0090h;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
import p025c0.AbstractC0947p;

/* JADX INFO: renamed from: k.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2024l {

    /* JADX INFO: renamed from: d */
    public static final Bitmap.Config[] f5527d;

    /* JADX INFO: renamed from: e */
    public static final Bitmap.Config[] f5528e;

    /* JADX INFO: renamed from: f */
    public static final Bitmap.Config[] f5529f;

    /* JADX INFO: renamed from: g */
    public static final Bitmap.Config[] f5530g;

    /* JADX INFO: renamed from: h */
    public static final Bitmap.Config[] f5531h;

    /* JADX INFO: renamed from: a */
    public final C2018f f5532a = new C2018f(1);

    /* JADX INFO: renamed from: b */
    public final C0090h f5533b = new C0090h(25);

    /* JADX INFO: renamed from: c */
    public final HashMap f5534c = new HashMap();

    static {
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        if (Build.VERSION.SDK_INT >= 26) {
            configArr = (Bitmap.Config[]) Arrays.copyOf(configArr, 3);
            configArr[configArr.length - 1] = Bitmap.Config.RGBA_F16;
        }
        f5527d = configArr;
        f5528e = configArr;
        f5529f = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        f5530g = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        f5531h = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    /* JADX INFO: renamed from: c */
    public static String m3114c(int i10, Bitmap.Config config) {
        return "[" + i10 + "](" + config + ")";
    }

    /* JADX INFO: renamed from: a */
    public final void m3115a(Integer num, Bitmap bitmap) {
        NavigableMap navigableMapM3117d = m3117d(bitmap.getConfig());
        Integer num2 = (Integer) navigableMapM3117d.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                navigableMapM3117d.remove(num);
                return;
            } else {
                navigableMapM3117d.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        StringBuilder sb = new StringBuilder("Tried to decrement empty size, size: ");
        sb.append(num);
        String strM3114c = m3114c(AbstractC0947p.m1086c(bitmap), bitmap.getConfig());
        sb.append(", removed: ");
        sb.append(strM3114c);
        sb.append(", this: ");
        sb.append(this);
        throw new NullPointerException(sb.toString());
    }

    /* JADX INFO: renamed from: b */
    public final Bitmap m3116b(int i10, int i11, Bitmap.Config config) {
        Bitmap.Config[] configArr;
        int iM1087d = AbstractC0947p.m1087d(config) * i10 * i11;
        C2018f c2018f = this.f5532a;
        InterfaceC2021i interfaceC2021iM3103e = (InterfaceC2021i) ((ArrayDeque) c2018f.f5497b).poll();
        if (interfaceC2021iM3103e == null) {
            interfaceC2021iM3103e = c2018f.m3103e();
        }
        C2023k c2023k = (C2023k) interfaceC2021iM3103e;
        c2023k.f5525b = iM1087d;
        c2023k.f5526c = config;
        if (Build.VERSION.SDK_INT < 26 || !Bitmap.Config.RGBA_F16.equals(config)) {
            int i12 = AbstractC2022j.f5523a[config.ordinal()];
            if (i12 == 1) {
                configArr = f5527d;
            } else if (i12 == 2) {
                configArr = f5529f;
            } else if (i12 != 3) {
                configArr = i12 != 4 ? new Bitmap.Config[]{config} : f5531h;
            } else {
                configArr = f5530g;
            }
        } else {
            configArr = f5528e;
        }
        for (Bitmap.Config config2 : configArr) {
            Integer num = (Integer) m3117d(config2).ceilingKey(Integer.valueOf(iM1087d));
            if (num != null && num.intValue() <= iM1087d * 8) {
                if (num.intValue() == iM1087d && (config2 != null ? config2.equals(config) : config == null)) {
                    break;
                    break;
                }
                c2018f.m3097c(c2023k);
                int iIntValue = num.intValue();
                InterfaceC2021i interfaceC2021iM3103e2 = (InterfaceC2021i) ((ArrayDeque) c2018f.f5497b).poll();
                if (interfaceC2021iM3103e2 == null) {
                    interfaceC2021iM3103e2 = c2018f.m3103e();
                }
                c2023k = (C2023k) interfaceC2021iM3103e2;
                c2023k.f5525b = iIntValue;
                c2023k.f5526c = config2;
                break;
            }
        }
        Bitmap bitmap = (Bitmap) this.f5533b.m244h(c2023k);
        if (bitmap != null) {
            m3115a(Integer.valueOf(c2023k.f5525b), bitmap);
            bitmap.reconfigure(i10, i11, config);
        }
        return bitmap;
    }

    /* JADX INFO: renamed from: d */
    public final NavigableMap m3117d(Bitmap.Config config) {
        HashMap map = this.f5534c;
        NavigableMap navigableMap = (NavigableMap) map.get(config);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        map.put(config, treeMap);
        return treeMap;
    }

    /* JADX INFO: renamed from: e */
    public final void m3118e(Bitmap bitmap) {
        int iM1086c = AbstractC0947p.m1086c(bitmap);
        Bitmap.Config config = bitmap.getConfig();
        C2018f c2018f = this.f5532a;
        InterfaceC2021i interfaceC2021iM3103e = (InterfaceC2021i) ((ArrayDeque) c2018f.f5497b).poll();
        if (interfaceC2021iM3103e == null) {
            interfaceC2021iM3103e = c2018f.m3103e();
        }
        C2023k c2023k = (C2023k) interfaceC2021iM3103e;
        c2023k.f5525b = iM1086c;
        c2023k.f5526c = config;
        this.f5533b.m251q(c2023k, bitmap);
        NavigableMap navigableMapM3117d = m3117d(bitmap.getConfig());
        Integer num = (Integer) navigableMapM3117d.get(Integer.valueOf(c2023k.f5525b));
        navigableMapM3117d.put(Integer.valueOf(c2023k.f5525b), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    public final String toString() {
        StringBuilder sbM170u = AbstractC0074a.m170u("SizeConfigStrategy{groupedMap=");
        sbM170u.append(this.f5533b);
        sbM170u.append(", sortedSizes=(");
        HashMap map = this.f5534c;
        for (Map.Entry entry : map.entrySet()) {
            sbM170u.append(entry.getKey());
            sbM170u.append('[');
            sbM170u.append(entry.getValue());
            sbM170u.append("], ");
        }
        if (!map.isEmpty()) {
            sbM170u.replace(sbM170u.length() - 2, sbM170u.length(), "");
        }
        sbM170u.append(")}");
        return sbM170u.toString();
    }
}

package p206u0;

import android.content.Context;
import android.content.SharedPreferences;
import com.example.navistart.cores.SettingsdProxy;
import java.util.concurrent.ConcurrentHashMap;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: u0.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3277a implements SettingsdProxy {

    /* JADX INFO: renamed from: c */
    public static final String f9610c = AbstractC1387m.m2421h(new byte[]{5, 97, 124}, new byte[]{117, 10, 27, -12, 67, 108, -58, 110});

    /* JADX INFO: renamed from: a */
    public final SharedPreferences f9611a;

    /* JADX INFO: renamed from: b */
    public final ConcurrentHashMap f9612b = new ConcurrentHashMap();

    public C3277a(Context context) {
        this.f9611a = context.getSharedPreferences(f9610c, 0);
    }

    /* JADX INFO: renamed from: a */
    public final void m5215a(Object obj, String str) {
        if (obj != null) {
            this.f9612b.put(str, obj);
        }
    }

    @Override // com.example.navistart.cores.SettingsdProxy
    public final boolean loadBoolean(String str, boolean z9) {
        ConcurrentHashMap concurrentHashMap = this.f9612b;
        if (concurrentHashMap.containsKey(str)) {
            return ((Boolean) concurrentHashMap.get(str)).booleanValue();
        }
        boolean z10 = this.f9611a.getBoolean(str, z9);
        m5215a(Boolean.valueOf(z10), str);
        return z10;
    }

    @Override // com.example.navistart.cores.SettingsdProxy
    public final int loadInt(String str, int i10) {
        ConcurrentHashMap concurrentHashMap = this.f9612b;
        if (concurrentHashMap.containsKey(str)) {
            return ((Integer) concurrentHashMap.get(str)).intValue();
        }
        int i11 = this.f9611a.getInt(str, i10);
        m5215a(Integer.valueOf(i11), str);
        return i11;
    }

    @Override // com.example.navistart.cores.SettingsdProxy
    public final long loadLong(String str, long j10) {
        ConcurrentHashMap concurrentHashMap = this.f9612b;
        if (concurrentHashMap.containsKey(str)) {
            return ((Long) concurrentHashMap.get(str)).longValue();
        }
        long j11 = this.f9611a.getLong(str, j10);
        m5215a(Long.valueOf(j11), str);
        return j11;
    }

    @Override // com.example.navistart.cores.SettingsdProxy
    public final String loadString(String str, String str2) {
        ConcurrentHashMap concurrentHashMap = this.f9612b;
        if (concurrentHashMap.containsKey(str)) {
            return (String) concurrentHashMap.get(str);
        }
        String string = this.f9611a.getString(str, str2);
        m5215a(string, str);
        return string;
    }

    @Override // com.example.navistart.cores.SettingsdProxy
    public final void saveBoolean(String str, boolean z9) {
        m5215a(Boolean.valueOf(z9), str);
        this.f9611a.edit().putBoolean(str, z9).apply();
    }

    @Override // com.example.navistart.cores.SettingsdProxy
    public final void saveInt(String str, int i10) {
        m5215a(Integer.valueOf(i10), str);
        this.f9611a.edit().putInt(str, i10).apply();
    }

    @Override // com.example.navistart.cores.SettingsdProxy
    public final void saveLong(String str, long j10) {
        m5215a(Long.valueOf(j10), str);
        this.f9611a.edit().putLong(str, j10).apply();
    }

    @Override // com.example.navistart.cores.SettingsdProxy
    public final void saveString(String str, String str2) {
        m5215a(str2, str);
        this.f9611a.edit().putString(str, str2).apply();
    }
}

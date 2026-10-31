package u0;

import android.content.Context;
import android.content.SharedPreferences;
import com.example.navistart.cores.SettingsdProxy;
import e0.m;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a implements SettingsdProxy {
    public static final String c = m.h(new byte[]{5, 97, 124}, new byte[]{117, 10, 27, -12, 67, 108, -58, 110});

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SharedPreferences f5453a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f5454b = new ConcurrentHashMap();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(Context context) {
        this.f5453a = context.getSharedPreferences(c, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(Object obj, String str) {
        if (obj != null) {
            this.f5454b.put(str, obj);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.SettingsdProxy
    public final boolean loadBoolean(String str, boolean z8) {
        ConcurrentHashMap concurrentHashMap = this.f5454b;
        if (concurrentHashMap.containsKey(str)) {
            return ((Boolean) concurrentHashMap.get(str)).booleanValue();
        }
        boolean z9 = this.f5453a.getBoolean(str, z8);
        a(Boolean.valueOf(z9), str);
        return z9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.SettingsdProxy
    public final int loadInt(String str, int i9) {
        ConcurrentHashMap concurrentHashMap = this.f5454b;
        if (concurrentHashMap.containsKey(str)) {
            return ((Integer) concurrentHashMap.get(str)).intValue();
        }
        int i10 = this.f5453a.getInt(str, i9);
        a(Integer.valueOf(i10), str);
        return i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.SettingsdProxy
    public final long loadLong(String str, long j9) {
        ConcurrentHashMap concurrentHashMap = this.f5454b;
        if (concurrentHashMap.containsKey(str)) {
            return ((Long) concurrentHashMap.get(str)).longValue();
        }
        long j10 = this.f5453a.getLong(str, j9);
        a(Long.valueOf(j10), str);
        return j10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.SettingsdProxy
    public final String loadString(String str, String str2) {
        ConcurrentHashMap concurrentHashMap = this.f5454b;
        if (concurrentHashMap.containsKey(str)) {
            return (String) concurrentHashMap.get(str);
        }
        String string = this.f5453a.getString(str, str2);
        a(string, str);
        return string;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.SettingsdProxy
    public final void saveBoolean(String str, boolean z8) {
        a(Boolean.valueOf(z8), str);
        this.f5453a.edit().putBoolean(str, z8).apply();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.SettingsdProxy
    public final void saveInt(String str, int i9) {
        a(Integer.valueOf(i9), str);
        this.f5453a.edit().putInt(str, i9).apply();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.SettingsdProxy
    public final void saveLong(String str, long j9) {
        a(Long.valueOf(j9), str);
        this.f5453a.edit().putLong(str, j9).apply();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.SettingsdProxy
    public final void saveString(String str, String str2) {
        a(str2, str);
        this.f5453a.edit().putString(str, str2).apply();
    }
}

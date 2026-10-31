package c5;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;
import android.os.Build$VERSION;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map$Entry;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SharedPreferences f499a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i(Context context, String str) {
        this.f499a = context.getSharedPreferences("FirebaseHeartBeat".concat(str), 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void a() {
        try {
            long j9 = this.f499a.getLong("fire-count", 0L);
            String key = "";
            String str = null;
            for (Map$Entry<String, ?> map$Entry : this.f499a.getAll().entrySet()) {
                if (map$Entry.getValue() instanceof Set) {
                    for (String str2 : (Set) map$Entry.getValue()) {
                        if (str == null || str.compareTo(str2) > 0) {
                            key = map$Entry.getKey();
                            str = str2;
                        }
                    }
                }
            }
            HashSet hashSet = new HashSet(this.f499a.getStringSet(key, new HashSet()));
            hashSet.remove(str);
            this.f499a.edit().putStringSet(key, hashSet).putLong("fire-count", j9 - 1).commit();
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void b() {
        try {
            SharedPreferences$Editor sharedPreferences$EditorEdit = this.f499a.edit();
            int i9 = 0;
            for (Map$Entry<String, ?> map$Entry : this.f499a.getAll().entrySet()) {
                if (map$Entry.getValue() instanceof Set) {
                    Set set = (Set) map$Entry.getValue();
                    String strD = d(System.currentTimeMillis());
                    String key = map$Entry.getKey();
                    if (set.contains(strD)) {
                        HashSet hashSet = new HashSet();
                        hashSet.add(strD);
                        i9++;
                        sharedPreferences$EditorEdit.putStringSet(key, hashSet);
                    } else {
                        sharedPreferences$EditorEdit.remove(key);
                    }
                }
            }
            if (i9 == 0) {
                sharedPreferences$EditorEdit.remove("fire-count");
            } else {
                sharedPreferences$EditorEdit.putLong("fire-count", i9);
            }
            sharedPreferences$EditorEdit.commit();
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized ArrayList c() {
        try {
            ArrayList arrayList = new ArrayList();
            for (Map$Entry<String, ?> map$Entry : this.f499a.getAll().entrySet()) {
                if (map$Entry.getValue() instanceof Set) {
                    HashSet hashSet = new HashSet((Set) map$Entry.getValue());
                    hashSet.remove(d(System.currentTimeMillis()));
                    if (!hashSet.isEmpty()) {
                        arrayList.add(new a(map$Entry.getKey(), new ArrayList(hashSet)));
                    }
                }
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            synchronized (this) {
                this.f499a.edit().putLong("fire-global", jCurrentTimeMillis).commit();
            }
            return arrayList;
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized String d(long j9) {
        if (Build$VERSION.SDK_INT < 26) {
            return new SimpleDateFormat("yyyy-MM-dd", Locale.UK).format(new Date(j9));
        }
        Instant instantR = androidx.core.graphics.a.r(new Date(j9));
        h.n();
        LocalDateTime localDateTimeL = h.l(h.m(instantR));
        h.o();
        return h.h(localDateTimeL);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized String e(String str) {
        for (Map$Entry<String, ?> map$Entry : this.f499a.getAll().entrySet()) {
            if (map$Entry.getValue() instanceof Set) {
                Iterator it = ((Set) map$Entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (str.equals((String) it.next())) {
                        return map$Entry.getKey();
                    }
                }
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void f(String str) {
        try {
            String strE = e(str);
            if (strE == null) {
                return;
            }
            HashSet hashSet = new HashSet(this.f499a.getStringSet(strE, new HashSet()));
            hashSet.remove(str);
            boolean zIsEmpty = hashSet.isEmpty();
            SharedPreferences sharedPreferences = this.f499a;
            if (zIsEmpty) {
                sharedPreferences.edit().remove(strE).commit();
            } else {
                sharedPreferences.edit().putStringSet(strE, hashSet).commit();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void g(long j9, String str) {
        String strD = d(j9);
        if (this.f499a.getString("last-used-date", "").equals(strD)) {
            String strE = e(strD);
            if (strE == null) {
                return;
            }
            if (strE.equals(str)) {
                return;
            }
            h(str, strD);
            return;
        }
        long j10 = this.f499a.getLong("fire-count", 0L);
        if (j10 + 1 == 30) {
            a();
            j10 = this.f499a.getLong("fire-count", 0L);
        }
        HashSet hashSet = new HashSet(this.f499a.getStringSet(str, new HashSet()));
        hashSet.add(strD);
        this.f499a.edit().putStringSet(str, hashSet).putLong("fire-count", j10 + 1).putString("last-used-date", strD).commit();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void h(String str, String str2) {
        f(str2);
        HashSet hashSet = new HashSet(this.f499a.getStringSet(str, new HashSet()));
        hashSet.add(str2);
        this.f499a.edit().putStringSet(str, hashSet).commit();
    }
}

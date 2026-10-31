package p030c5;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* JADX INFO: renamed from: c5.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0994i {

    /* JADX INFO: renamed from: a */
    public final SharedPreferences f948a;

    public C0994i(Context context, String str) {
        this.f948a = context.getSharedPreferences("FirebaseHeartBeat".concat(str), 0);
    }

    /* JADX INFO: renamed from: a */
    public final synchronized void m1184a() {
        try {
            long j10 = this.f948a.getLong("fire-count", 0L);
            String key = "";
            String str = null;
            for (Map.Entry<String, ?> entry : this.f948a.getAll().entrySet()) {
                if (entry.getValue() instanceof Set) {
                    for (String str2 : (Set) entry.getValue()) {
                        if (str == null || str.compareTo(str2) > 0) {
                            key = entry.getKey();
                            str = str2;
                        }
                    }
                }
            }
            HashSet hashSet = new HashSet(this.f948a.getStringSet(key, new HashSet()));
            hashSet.remove(str);
            this.f948a.edit().putStringSet(key, hashSet).putLong("fire-count", j10 - 1).commit();
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: renamed from: b */
    public final synchronized void m1185b() {
        try {
            SharedPreferences.Editor editorEdit = this.f948a.edit();
            int i10 = 0;
            for (Map.Entry<String, ?> entry : this.f948a.getAll().entrySet()) {
                if (entry.getValue() instanceof Set) {
                    Set set = (Set) entry.getValue();
                    String strM1187d = m1187d(System.currentTimeMillis());
                    String key = entry.getKey();
                    if (set.contains(strM1187d)) {
                        HashSet hashSet = new HashSet();
                        hashSet.add(strM1187d);
                        i10++;
                        editorEdit.putStringSet(key, hashSet);
                    } else {
                        editorEdit.remove(key);
                    }
                }
            }
            if (i10 == 0) {
                editorEdit.remove("fire-count");
            } else {
                editorEdit.putLong("fire-count", i10);
            }
            editorEdit.commit();
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: renamed from: c */
    public final synchronized ArrayList m1186c() {
        try {
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<String, ?> entry : this.f948a.getAll().entrySet()) {
                if (entry.getValue() instanceof Set) {
                    HashSet hashSet = new HashSet((Set) entry.getValue());
                    hashSet.remove(m1187d(System.currentTimeMillis()));
                    if (!hashSet.isEmpty()) {
                        arrayList.add(new C0986a(entry.getKey(), new ArrayList(hashSet)));
                    }
                }
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            synchronized (this) {
                this.f948a.edit().putLong("fire-global", jCurrentTimeMillis).commit();
            }
            return arrayList;
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: d */
    public final synchronized String m1187d(long j10) {
        if (Build.VERSION.SDK_INT < 26) {
            return new SimpleDateFormat("yyyy-MM-dd", Locale.UK).format(new Date(j10));
        }
        Instant instant = new Date(j10).toInstant();
        ZoneOffset unused = ZoneOffset.UTC;
        LocalDateTime localDateTime = instant.atOffset(ZoneOffset.UTC).toLocalDateTime();
        DateTimeFormatter unused2 = DateTimeFormatter.ISO_LOCAL_DATE;
        return localDateTime.format(DateTimeFormatter.ISO_LOCAL_DATE);
    }

    /* JADX INFO: renamed from: e */
    public final synchronized String m1188e(String str) {
        for (Map.Entry<String, ?> entry : this.f948a.getAll().entrySet()) {
            if (entry.getValue() instanceof Set) {
                Iterator it = ((Set) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (str.equals((String) it.next())) {
                        return entry.getKey();
                    }
                }
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: f */
    public final synchronized void m1189f(String str) {
        try {
            String strM1188e = m1188e(str);
            if (strM1188e == null) {
                return;
            }
            HashSet hashSet = new HashSet(this.f948a.getStringSet(strM1188e, new HashSet()));
            hashSet.remove(str);
            boolean zIsEmpty = hashSet.isEmpty();
            SharedPreferences sharedPreferences = this.f948a;
            if (zIsEmpty) {
                sharedPreferences.edit().remove(strM1188e).commit();
            } else {
                sharedPreferences.edit().putStringSet(strM1188e, hashSet).commit();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: renamed from: g */
    public final synchronized void m1190g(long j10, String str) {
        String strM1187d = m1187d(j10);
        if (this.f948a.getString("last-used-date", "").equals(strM1187d)) {
            String strM1188e = m1188e(strM1187d);
            if (strM1188e == null) {
                return;
            }
            if (strM1188e.equals(str)) {
                return;
            }
            m1191h(str, strM1187d);
            return;
        }
        long j11 = this.f948a.getLong("fire-count", 0L);
        if (j11 + 1 == 30) {
            m1184a();
            j11 = this.f948a.getLong("fire-count", 0L);
        }
        HashSet hashSet = new HashSet(this.f948a.getStringSet(str, new HashSet()));
        hashSet.add(strM1187d);
        this.f948a.edit().putStringSet(str, hashSet).putLong("fire-count", j11 + 1).putString("last-used-date", strM1187d).commit();
    }

    /* JADX INFO: renamed from: h */
    public final synchronized void m1191h(String str, String str2) {
        m1189f(str2);
        HashSet hashSet = new HashSet(this.f948a.getStringSet(str, new HashSet()));
        hashSet.add(str2);
        this.f948a.edit().putStringSet(str, hashSet).commit();
    }
}

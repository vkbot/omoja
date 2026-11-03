package com.android.launcher3;

import android.os.Handler;
import android.os.Looper;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.Predicate;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BadgeRepository.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\u001b\u001cB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\rJ\u0016\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013J(\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0002J\u000e\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\rJ\u001e\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u0006R*\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/android/launcher3/BadgeRepository;", "", "()V", "badges", "Ljava/util/HashMap;", "Lcom/android/launcher3/BadgeRepository$BadgeKey;", "", "Lkotlin/collections/HashMap;", "handler", "Landroid/os/Handler;", "listeners", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Ljava/lang/ref/WeakReference;", "Lcom/android/launcher3/BadgeRepository$BadgeChangeListener;", "addListener", "", "listener", "getBadge", "packageName", "", "className", "notifyChanged", "old", "new", "removeListener", "setBadge", "badgeCount", "BadgeChangeListener", "BadgeKey", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class BadgeRepository {
    public static final BadgeRepository INSTANCE = new BadgeRepository();
    private static final HashMap<BadgeKey, Integer> badges = new HashMap<>();
    private static final CopyOnWriteArrayList<WeakReference<BadgeChangeListener>> listeners = new CopyOnWriteArrayList<>();
    private static final Handler handler = new Handler(Looper.getMainLooper());

    /* JADX INFO: compiled from: BadgeRepository.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH&¨\u0006\n"}, d2 = {"Lcom/android/launcher3/BadgeRepository$BadgeChangeListener;", "", "onBadgeChanged", "", "packageName", "", "className", "fromBadgeCount", "", "toBadgeCount", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public interface BadgeChangeListener {
        void onBadgeChanged(String packageName, String className, int fromBadgeCount, int toBadgeCount);
    }

    private BadgeRepository() {
    }

    public final void setBadge(String packageName, String className, int badgeCount) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(className, "className");
        BadgeKey badgeKey = new BadgeKey(packageName, className);
        HashMap<BadgeKey, Integer> map = badges;
        Integer num = map.get(badgeKey);
        if (num != null && num.intValue() == badgeCount) {
            return;
        }
        map.put(badgeKey, Integer.valueOf(badgeCount));
        notifyChanged(packageName, className, num != null ? num.intValue() : 0, badgeCount);
    }

    public final int getBadge(String packageName, String className) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(className, "className");
        Integer num = badges.get(new BadgeKey(packageName, className));
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public final void addListener(BadgeChangeListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        listeners.add(new WeakReference<>(listener));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean removeListener$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    public final void removeListener(final BadgeChangeListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        CopyOnWriteArrayList<WeakReference<BadgeChangeListener>> copyOnWriteArrayList = listeners;
        final Function1<WeakReference<BadgeChangeListener>, Boolean> function1 = new Function1<WeakReference<BadgeChangeListener>, Boolean>() { // from class: com.android.launcher3.BadgeRepository.removeListener.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(WeakReference<BadgeChangeListener> weakReference) {
                return Boolean.valueOf(weakReference.get() == null || Intrinsics.areEqual(weakReference.get(), listener));
            }
        };
        copyOnWriteArrayList.removeIf(new Predicate() { // from class: com.android.launcher3.BadgeRepository$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return BadgeRepository.removeListener$lambda$0(function1, obj);
            }
        });
    }

    private final void notifyChanged(final String packageName, final String className, final int old, final int i) {
        Iterator<T> it = listeners.iterator();
        while (it.hasNext()) {
            final WeakReference weakReference = (WeakReference) it.next();
            handler.post(new Runnable() { // from class: com.android.launcher3.BadgeRepository$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    BadgeRepository.notifyChanged$lambda$2$lambda$1(weakReference, packageName, className, old, i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void notifyChanged$lambda$2$lambda$1(WeakReference weakReference, String packageName, String className, int i, int i2) {
        Intrinsics.checkNotNullParameter(packageName, "$packageName");
        Intrinsics.checkNotNullParameter(className, "$className");
        BadgeChangeListener badgeChangeListener = (BadgeChangeListener) weakReference.get();
        if (badgeChangeListener != null) {
            badgeChangeListener.onBadgeChanged(packageName, className, i, i2);
        }
    }

    /* JADX INFO: compiled from: BadgeRepository.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/android/launcher3/BadgeRepository$BadgeKey;", "", "packageName", "", "className", "(Ljava/lang/String;Ljava/lang/String;)V", "getClassName", "()Ljava/lang/String;", "getPackageName", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final /* data */ class BadgeKey {
        private final String className;
        private final String packageName;

        public static /* synthetic */ BadgeKey copy$default(BadgeKey badgeKey, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = badgeKey.packageName;
            }
            if ((i & 2) != 0) {
                str2 = badgeKey.className;
            }
            return badgeKey.copy(str, str2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getPackageName() {
            return this.packageName;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getClassName() {
            return this.className;
        }

        public final BadgeKey copy(String packageName, String className) {
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            Intrinsics.checkNotNullParameter(className, "className");
            return new BadgeKey(packageName, className);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof BadgeKey)) {
                return false;
            }
            BadgeKey badgeKey = (BadgeKey) other;
            return Intrinsics.areEqual(this.packageName, badgeKey.packageName) && Intrinsics.areEqual(this.className, badgeKey.className);
        }

        public final String getClassName() {
            return this.className;
        }

        public final String getPackageName() {
            return this.packageName;
        }

        public int hashCode() {
            return (this.packageName.hashCode() * 31) + this.className.hashCode();
        }

        public String toString() {
            return "BadgeKey(packageName=" + this.packageName + ", className=" + this.className + ')';
        }

        public BadgeKey(String packageName, String className) {
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            Intrinsics.checkNotNullParameter(className, "className");
            this.packageName = packageName;
            this.className = className;
        }
    }
}

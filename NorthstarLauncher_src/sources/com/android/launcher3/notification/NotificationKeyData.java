package com.android.launcher3.notification;

import android.app.Notification;
import android.app.Person;
import android.service.notification.StatusBarNotification;
import com.android.launcher3.Utilities;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
public class NotificationKeyData {
    public int count;
    public final String notificationKey;
    public final String[] personKeysFromNotification;
    public final String shortcutId;

    private NotificationKeyData(String notificationKey, String shortcutId, int count, String[] personKeysFromNotification) {
        this.notificationKey = notificationKey;
        this.shortcutId = shortcutId;
        this.count = Math.max(1, count);
        this.personKeysFromNotification = personKeysFromNotification;
    }

    public static NotificationKeyData fromNotification(StatusBarNotification sbn) {
        Notification notification = sbn.getNotification();
        return new NotificationKeyData(sbn.getKey(), notification.getShortcutId(), notification.number, extractPersonKeyOnly(notification.extras.getParcelableArrayList("android.people.list")));
    }

    public static List<String> extractKeysOnly(List<NotificationKeyData> notificationKeys) {
        ArrayList arrayList = new ArrayList(notificationKeys.size());
        Iterator<NotificationKeyData> it = notificationKeys.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().notificationKey);
        }
        return arrayList;
    }

    private static String[] extractPersonKeyOnly(ArrayList<Person> people) {
        if (people == null || people.isEmpty()) {
            return Utilities.EMPTY_STRING_ARRAY;
        }
        return (String[]) people.stream().filter(new Predicate() { // from class: com.android.launcher3.notification.NotificationKeyData$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return NotificationKeyData.lambda$extractPersonKeyOnly$0((Person) obj);
            }
        }).map(new Function() { // from class: com.android.launcher3.notification.NotificationKeyData$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((Person) obj).getKey();
            }
        }).sorted().toArray(new IntFunction() { // from class: com.android.launcher3.notification.NotificationKeyData$$ExternalSyntheticLambda2
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                return NotificationKeyData.lambda$extractPersonKeyOnly$1(i);
            }
        });
    }

    static /* synthetic */ boolean lambda$extractPersonKeyOnly$0(Person person) {
        return person.getKey() != null;
    }

    static /* synthetic */ String[] lambda$extractPersonKeyOnly$1(int i) {
        return new String[i];
    }

    public boolean equals(Object obj) {
        if (obj instanceof NotificationKeyData) {
            return ((NotificationKeyData) obj).notificationKey.equals(this.notificationKey);
        }
        return false;
    }
}

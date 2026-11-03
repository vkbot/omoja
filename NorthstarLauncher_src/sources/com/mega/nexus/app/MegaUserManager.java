package com.mega.nexus.app;

import android.os.Parcel;
import android.os.UserHandle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public class MegaUserManager {
    public static HashMap<UserHandle, Integer> getMatchingListOfDisplayTypeAndUser(List<UserHandle> list) {
        if (list.size() < 3) {
            throw new IllegalArgumentException("At least 3 profile users need to be passed in, otherwise is current os support multi-user feature?");
        }
        final HashMap<UserHandle, Integer> map = new HashMap<>();
        final ArrayList arrayList = new ArrayList();
        arrayList.add(3);
        arrayList.add(7);
        list.forEach(new Consumer() { // from class: com.mega.nexus.app.MegaUserManager$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                MegaUserManager.lambda$getMatchingListOfDisplayTypeAndUser$0(arrayList, map, (UserHandle) obj);
            }
        });
        return map;
    }

    static /* synthetic */ void lambda$getMatchingListOfDisplayTypeAndUser$0(ArrayList arrayList, HashMap map, UserHandle userHandle) {
        if (getIdFromUserHandle(userHandle) == 0 || arrayList.isEmpty()) {
            return;
        }
        map.put(userHandle, (Integer) arrayList.remove(0));
    }

    public static int getIdFromUserHandle(UserHandle userHandle) {
        Parcel parcelObtain = Parcel.obtain();
        userHandle.writeToParcel(parcelObtain, 0);
        parcelObtain.setDataPosition(0);
        return parcelObtain.readInt();
    }
}

package com.example.navistart.cores;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface BTProxy$Listener {
    void onContactsChanged(List<BTProxy$Contact> list, int i9, int i10);

    void onError(String str, Throwable th);
}

package com.example.navistart.cores;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class BTProxy$Contact {
    public final String bluetoothAddress;
    public final String id;
    public final String name;
    public final List<BTProxy$PhoneNumber> numbers;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public BTProxy$Contact(String str, String str2, String str3, List<BTProxy$PhoneNumber> list) {
        this.id = str;
        this.name = str2;
        this.bluetoothAddress = str3;
        this.numbers = Collections.unmodifiableList(new ArrayList(list));
    }
}

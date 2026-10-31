package com.sun.jna;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CallbackReference$AttachOptions extends Structure {
    public static final List<String> FIELDS = Structure.createFieldsOrder("daemon", "detach", "name");
    public boolean daemon;
    public boolean detach;
    public String name;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CallbackReference$AttachOptions() {
        setStringEncoding("utf8");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Structure
    public List<String> getFieldOrder() {
        return FIELDS;
    }
}

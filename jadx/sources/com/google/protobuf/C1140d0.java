package com.google.protobuf;

import java.io.IOException;

/* JADX INFO: renamed from: com.google.protobuf.d0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C1140d0 extends IOException {

    /* JADX INFO: renamed from: b */
    public boolean f2654b;

    /* JADX INFO: renamed from: a */
    public static C1140d0 m1936a() {
        return new C1140d0("Protocol message had invalid UTF-8.");
    }

    /* JADX INFO: renamed from: b */
    public static C1137c0 m1937b() {
        return new C1137c0("Protocol message tag had invalid wire type.");
    }

    /* JADX INFO: renamed from: c */
    public static C1140d0 m1938c() {
        return new C1140d0("CodedInputStream encountered a malformed varint.");
    }

    /* JADX INFO: renamed from: d */
    public static C1140d0 m1939d() {
        return new C1140d0("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* JADX INFO: renamed from: e */
    public static C1140d0 m1940e() {
        return new C1140d0("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }
}

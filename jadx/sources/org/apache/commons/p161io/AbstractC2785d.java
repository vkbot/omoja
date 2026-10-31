package org.apache.commons.p161io;

import java.nio.channels.AsynchronousChannel;
import java.nio.file.FileStore;
import java.nio.file.StandardOpenOption;
import java.nio.file.attribute.FileTime;
import java.nio.file.attribute.UserPrincipal;

/* JADX INFO: renamed from: org.apache.commons.io.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2785d {
    /* JADX INFO: renamed from: g */
    public static /* bridge */ /* synthetic */ Class m4331g() {
        return AsynchronousChannel.class;
    }

    /* JADX INFO: renamed from: i */
    public static /* bridge */ /* synthetic */ FileStore m4333i(Object obj) {
        return (FileStore) obj;
    }

    /* JADX INFO: renamed from: k */
    public static /* bridge */ /* synthetic */ StandardOpenOption m4335k(Object obj) {
        return (StandardOpenOption) obj;
    }

    /* JADX INFO: renamed from: l */
    public static /* bridge */ /* synthetic */ FileTime m4336l(Object obj) {
        return (FileTime) obj;
    }

    /* JADX INFO: renamed from: m */
    public static /* bridge */ /* synthetic */ UserPrincipal m4337m(Object obj) {
        return (UserPrincipal) obj;
    }

    /* JADX INFO: renamed from: v */
    public static /* bridge */ /* synthetic */ boolean m4346v(Object obj) {
        return obj instanceof StandardOpenOption;
    }
}

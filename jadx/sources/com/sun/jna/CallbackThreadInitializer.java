package com.sun.jna;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class CallbackThreadInitializer {
    private boolean daemon;
    private boolean detach;
    private ThreadGroup group;
    private String name;

    public CallbackThreadInitializer(boolean z9, boolean z10, String str, ThreadGroup threadGroup) {
        this.daemon = z9;
        this.detach = z10;
        this.name = str;
        this.group = threadGroup;
    }

    public boolean detach(Callback callback) {
        return this.detach;
    }

    public String getName(Callback callback) {
        return this.name;
    }

    public ThreadGroup getThreadGroup(Callback callback) {
        return this.group;
    }

    public boolean isDaemon(Callback callback) {
        return this.daemon;
    }

    public CallbackThreadInitializer(boolean z9) {
        this(z9, false);
    }

    public CallbackThreadInitializer(boolean z9, boolean z10) {
        this(z9, z10, null);
    }

    public CallbackThreadInitializer(boolean z9, boolean z10, String str) {
        this(z9, z10, str, null);
    }

    public CallbackThreadInitializer() {
        this(true);
    }
}

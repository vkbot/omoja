package com.sun.jna;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CallbackThreadInitializer {
    private boolean daemon;
    private boolean detach;
    private ThreadGroup group;
    private String name;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CallbackThreadInitializer(boolean z8, boolean z9, String str, ThreadGroup threadGroup) {
        this.daemon = z8;
        this.detach = z9;
        this.name = str;
        this.group = threadGroup;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean detach(Callback callback) {
        return this.detach;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getName(Callback callback) {
        return this.name;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ThreadGroup getThreadGroup(Callback callback) {
        return this.group;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isDaemon(Callback callback) {
        return this.daemon;
    }

    public CallbackThreadInitializer(boolean z8) {
        this(z8, false);
    }

    public CallbackThreadInitializer(boolean z8, boolean z9) {
        this(z8, z9, null);
    }

    public CallbackThreadInitializer(boolean z8, boolean z9, String str) {
        this(z8, z9, str, null);
    }

    public CallbackThreadInitializer() {
        this(true);
    }
}

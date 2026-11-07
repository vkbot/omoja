package com.android.server.am;

import java.util.function.Consumer;

/* JADX INFO: renamed from: com.android.server.am.-$$Lambda$wajKhQOjpilT0K4j-1sLOJKYftw, reason: invalid class name */
/* JADX INFO: compiled from: lambda */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class $$Lambda$wajKhQOjpilT0K4j1sLOJKYftw implements Consumer {
    public static final /* synthetic */ $$Lambda$wajKhQOjpilT0K4j1sLOJKYftw INSTANCE = new $$Lambda$wajKhQOjpilT0K4j1sLOJKYftw();

    private /* synthetic */ $$Lambda$wajKhQOjpilT0K4j1sLOJKYftw() {
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        ((BaseErrorDialog) obj).dismiss();
    }
}

package com.android.server.people.data;

import java.io.File;
import java.io.FileFilter;

/* JADX INFO: renamed from: com.android.server.people.data.-$$Lambda$k1LMnpJLlrYtcSsQvSbPW-daMgg, reason: invalid class name */
/* JADX INFO: compiled from: lambda */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class $$Lambda$k1LMnpJLlrYtcSsQvSbPWdaMgg implements FileFilter {
    public static final /* synthetic */ $$Lambda$k1LMnpJLlrYtcSsQvSbPWdaMgg INSTANCE = new $$Lambda$k1LMnpJLlrYtcSsQvSbPWdaMgg();

    private /* synthetic */ $$Lambda$k1LMnpJLlrYtcSsQvSbPWdaMgg() {
    }

    @Override // java.io.FileFilter
    public final boolean accept(File file) {
        return file.isDirectory();
    }
}

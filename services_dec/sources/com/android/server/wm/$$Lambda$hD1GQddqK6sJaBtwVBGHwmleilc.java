package com.android.server.wm;

import java.util.ArrayList;
import java.util.function.Consumer;

/* JADX INFO: renamed from: com.android.server.wm.-$$Lambda$hD1GQddqK6sJaBtwVBGHwmleilc, reason: invalid class name */
/* JADX INFO: compiled from: lambda */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class $$Lambda$hD1GQddqK6sJaBtwVBGHwmleilc implements Consumer {
    public final /* synthetic */ ArrayList f$0;

    public /* synthetic */ $$Lambda$hD1GQddqK6sJaBtwVBGHwmleilc(ArrayList arrayList) {
        this.f$0 = arrayList;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f$0.add((ActivityRecord) obj);
    }
}

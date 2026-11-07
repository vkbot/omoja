package com.android.server.soundtrigger_middleware;

/* JADX INFO: renamed from: com.android.server.soundtrigger_middleware.-$$Lambda$SoundTriggerModule$Session$Model$SKjuNdt0iPC81BScKlVMeotxUlg, reason: invalid class name */
/* JADX INFO: compiled from: lambda */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class $$Lambda$SoundTriggerModule$Session$Model$SKjuNdt0iPC81BScKlVMeotxUlg implements Runnable {
    public final /* synthetic */ SoundTriggerModule.Session.Model f$0;

    public /* synthetic */ $$Lambda$SoundTriggerModule$Session$Model$SKjuNdt0iPC81BScKlVMeotxUlg(SoundTriggerModule.Session.Model model) {
        this.f$0 = model;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.notifyAbort();
    }
}

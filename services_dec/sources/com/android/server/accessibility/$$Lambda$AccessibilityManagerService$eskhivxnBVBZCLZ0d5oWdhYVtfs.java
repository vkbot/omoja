package com.android.server.accessibility;

import com.android.internal.util.function.QuadConsumer;

/* JADX INFO: renamed from: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$eskhivxnBVBZCLZ0d5oWdhYVtfs, reason: invalid class name */
/* JADX INFO: compiled from: lambda */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class $$Lambda$AccessibilityManagerService$eskhivxnBVBZCLZ0d5oWdhYVtfs implements QuadConsumer {
    public static final /* synthetic */ $$Lambda$AccessibilityManagerService$eskhivxnBVBZCLZ0d5oWdhYVtfs INSTANCE = new $$Lambda$AccessibilityManagerService$eskhivxnBVBZCLZ0d5oWdhYVtfs();

    private /* synthetic */ $$Lambda$AccessibilityManagerService$eskhivxnBVBZCLZ0d5oWdhYVtfs() {
    }

    public final void accept(Object obj, Object obj2, Object obj3, Object obj4) {
        ((AccessibilityManagerService) obj).performAccessibilityShortcutInternal(((Integer) obj2).intValue(), ((Integer) obj3).intValue(), (String) obj4);
    }
}

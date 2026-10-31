package org.apache.commons.p161io.file;

import java.util.stream.Stream;
import org.apache.commons.p161io.IOUtils;
import p094i7.C1762k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public enum StandardDeleteOption implements DeleteOption {
    OVERRIDE_READ_ONLY;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$overrideReadOnly$0(DeleteOption deleteOption) {
        return OVERRIDE_READ_ONLY == deleteOption;
    }

    public static boolean overrideReadOnly(DeleteOption[] deleteOptionArr) {
        if (IOUtils.length(deleteOptionArr) == 0) {
            return false;
        }
        return Stream.of((Object[]) deleteOptionArr).anyMatch(new C1762k(4));
    }
}

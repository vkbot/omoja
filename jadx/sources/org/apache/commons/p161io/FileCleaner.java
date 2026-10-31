package org.apache.commons.p161io;

import java.io.File;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class FileCleaner {
    private static final FileCleaningTracker INSTANCE = new FileCleaningTracker();

    @Deprecated
    public static synchronized void exitWhenFinished() {
        INSTANCE.exitWhenFinished();
    }

    public static FileCleaningTracker getInstance() {
        return INSTANCE;
    }

    @Deprecated
    public static int getTrackCount() {
        return INSTANCE.getTrackCount();
    }

    @Deprecated
    public static void track(File file, Object obj) {
        INSTANCE.track(file, obj);
    }

    @Deprecated
    public static void track(File file, Object obj, FileDeleteStrategy fileDeleteStrategy) {
        INSTANCE.track(file, obj, fileDeleteStrategy);
    }

    @Deprecated
    public static void track(String str, Object obj) {
        INSTANCE.track(str, obj);
    }

    @Deprecated
    public static void track(String str, Object obj, FileDeleteStrategy fileDeleteStrategy) {
        INSTANCE.track(str, obj, fileDeleteStrategy);
    }
}

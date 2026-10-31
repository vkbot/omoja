package org.apache.commons.p161io;

import ai.onnxruntime.AbstractC0074a;
import java.io.File;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class FileDeleteStrategy {
    private final String name;
    public static final FileDeleteStrategy NORMAL = new FileDeleteStrategy("Normal");
    public static final FileDeleteStrategy FORCE = new ForceFileDeleteStrategy();

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class ForceFileDeleteStrategy extends FileDeleteStrategy {
        public ForceFileDeleteStrategy() {
            super("Force");
        }

        @Override // org.apache.commons.p161io.FileDeleteStrategy
        public boolean doDelete(File file) throws IOException {
            FileUtils.forceDelete(file);
            return true;
        }
    }

    public FileDeleteStrategy(String str) {
        this.name = str;
    }

    public void delete(File file) throws IOException {
        if (!file.exists() || doDelete(file)) {
            return;
        }
        C2786e.m4354f(file, "Deletion failed: ");
    }

    public boolean deleteQuietly(File file) {
        if (file == null || !file.exists()) {
            return true;
        }
        try {
            return doDelete(file);
        } catch (IOException unused) {
            return false;
        }
    }

    public boolean doDelete(File file) throws IOException {
        FileUtils.delete(file);
        return true;
    }

    public String toString() {
        return AbstractC0074a.m165p(new StringBuilder("FileDeleteStrategy["), this.name, "]");
    }
}

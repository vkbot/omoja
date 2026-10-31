package org.apache.commons.p161io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.nio.file.FileVisitResult;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.time.Instant;
import java.util.Date;
import org.apache.commons.p161io.FileUtils;
import org.apache.commons.p161io.file.PathUtils;
import p062f5.C1548f;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class AgeFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = -2132740084016138541L;
    private final boolean acceptOlder;
    private final Instant cutoffInstant;

    public AgeFileFilter(long j10) {
        this(Instant.ofEpochMilli(j10), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ FileVisitResult lambda$accept$0(Path path) {
        return toFileVisitResult(this.acceptOlder != PathUtils.isNewer(path, this.cutoffInstant, new LinkOption[0]));
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter, org.apache.commons.p161io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return this.acceptOlder != FileUtils.isFileNewer(file, this.cutoffInstant);
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter
    public String toString() {
        return super.toString() + "(" + (this.acceptOlder ? "<=" : ">") + this.cutoffInstant + ")";
    }

    public AgeFileFilter(Date date, boolean z9) {
        this(date.toInstant(), z9);
    }

    public AgeFileFilter(File file) {
        this(file, true);
    }

    public AgeFileFilter(File file, boolean z9) {
        this(FileUtils.lastModifiedUnchecked(file), z9);
    }

    public AgeFileFilter(Instant instant) {
        this(instant, true);
    }

    public AgeFileFilter(Instant instant, boolean z9) {
        this.acceptOlder = z9;
        this.cutoffInstant = instant;
    }

    @Override // org.apache.commons.p161io.filefilter.IOFileFilter, org.apache.commons.p161io.file.PathFilter
    public FileVisitResult accept(Path path, BasicFileAttributes basicFileAttributes) {
        return get(new C1548f(14, this, path));
    }

    public AgeFileFilter(Date date) {
        this(date, true);
    }

    public AgeFileFilter(long j10, boolean z9) {
        this(Instant.ofEpochMilli(j10), z9);
    }
}

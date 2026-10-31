package org.apache.commons.p161io.monitor;

import java.io.File;
import java.io.FileFilter;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.stream.Stream;
import org.apache.commons.p161io.C2890k;
import org.apache.commons.p161io.FileUtils;
import org.apache.commons.p161io.IOCase;
import org.apache.commons.p161io.build.AbstractOriginSupplier;
import org.apache.commons.p161io.comparator.C2784a;
import org.apache.commons.p161io.comparator.NameFileComparator;
import org.apache.commons.p161io.filefilter.TrueFileFilter;
import p094i7.C1754c;
import p098j0.C1915a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class FileAlterationObserver implements Serializable {
    private static final long serialVersionUID = 1185122225658782848L;
    private final Comparator<File> comparator;
    private final transient FileFilter fileFilter;
    private final transient List<FileAlterationListener> listeners;
    private final FileEntry rootEntry;

    /* JADX INFO: renamed from: org.apache.commons.io.monitor.FileAlterationObserver$1 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static /* synthetic */ class C28931 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$commons$io$IOCase;

        static {
            int[] iArr = new int[IOCase.values().length];
            $SwitchMap$org$apache$commons$io$IOCase = iArr;
            try {
                iArr[IOCase.SYSTEM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$io$IOCase[IOCase.INSENSITIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private FileAlterationObserver(FileEntry fileEntry, FileFilter fileFilter, Comparator<File> comparator) {
        this.listeners = new CopyOnWriteArrayList();
        Objects.requireNonNull(fileEntry, "rootEntry");
        Objects.requireNonNull(fileEntry.getFile(), "rootEntry.getFile()");
        this.rootEntry = fileEntry;
        this.fileFilter = fileFilter == null ? TrueFileFilter.INSTANCE : fileFilter;
        Objects.requireNonNull(comparator, "comparator");
        this.comparator = comparator;
    }

    public static Builder builder() {
        return new Builder(null);
    }

    private void checkAndFire(FileEntry fileEntry, FileEntry[] fileEntryArr, File[] fileArr) {
        FileEntry[] fileEntryArr2 = fileArr.length > 0 ? new FileEntry[fileArr.length] : FileEntry.EMPTY_FILE_ENTRY_ARRAY;
        int i10 = 0;
        for (FileEntry fileEntry2 : fileEntryArr) {
            while (i10 < fileArr.length && this.comparator.compare(fileEntry2.getFile(), fileArr[i10]) > 0) {
                FileEntry fileEntryLambda$listFileEntries$5 = lambda$listFileEntries$5(fileEntry, fileArr[i10]);
                fileEntryArr2[i10] = fileEntryLambda$listFileEntries$5;
                fireOnCreate(fileEntryLambda$listFileEntries$5);
                i10++;
            }
            if (i10 >= fileArr.length || this.comparator.compare(fileEntry2.getFile(), fileArr[i10]) != 0) {
                checkAndFire(fileEntry2, fileEntry2.getChildren(), FileUtils.EMPTY_FILE_ARRAY);
                fireOnDelete(fileEntry2);
            } else {
                fireOnChange(fileEntry2, fileArr[i10]);
                checkAndFire(fileEntry2, fileEntry2.getChildren(), listFiles(fileArr[i10]));
                fileEntryArr2[i10] = fileEntry2;
                i10++;
            }
        }
        while (i10 < fileArr.length) {
            FileEntry fileEntryLambda$listFileEntries$6 = lambda$listFileEntries$5(fileEntry, fileArr[i10]);
            fileEntryArr2[i10] = fileEntryLambda$listFileEntries$6;
            fireOnCreate(fileEntryLambda$listFileEntries$6);
            i10++;
        }
        fileEntry.setChildren(fileEntryArr2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: createFileEntry, reason: merged with bridge method [inline-methods] */
    public FileEntry lambda$listFileEntries$5(FileEntry fileEntry, File file) {
        FileEntry fileEntryNewChildInstance = fileEntry.newChildInstance(file);
        fileEntryNewChildInstance.refresh(file);
        fileEntryNewChildInstance.setChildren(listFileEntries(file, fileEntryNewChildInstance));
        return fileEntryNewChildInstance;
    }

    private void fireOnChange(FileEntry fileEntry, File file) {
        if (fileEntry.refresh(file)) {
            this.listeners.forEach(new C2890k(1, fileEntry, file));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fireOnCreate(FileEntry fileEntry) {
        this.listeners.forEach(new C2895b(fileEntry, 0));
        Stream.of((Object[]) fileEntry.getChildren()).forEach(new C2896c(this, 0));
    }

    private void fireOnDelete(FileEntry fileEntry) {
        this.listeners.forEach(new C2895b(fileEntry, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkAndNotify$0(FileAlterationListener fileAlterationListener) {
        fileAlterationListener.onStart(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkAndNotify$1(FileAlterationListener fileAlterationListener) {
        fileAlterationListener.onStop(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$fireOnChange$2(FileEntry fileEntry, File file, FileAlterationListener fileAlterationListener) {
        if (fileEntry.isDirectory()) {
            fileAlterationListener.onDirectoryChange(file);
        } else {
            fileAlterationListener.onFileChange(file);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$fireOnCreate$3(FileEntry fileEntry, FileAlterationListener fileAlterationListener) {
        if (fileEntry.isDirectory()) {
            fileAlterationListener.onDirectoryCreate(fileEntry.getFile());
        } else {
            fileAlterationListener.onFileCreate(fileEntry.getFile());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$fireOnDelete$4(FileEntry fileEntry, FileAlterationListener fileAlterationListener) {
        if (fileEntry.isDirectory()) {
            fileAlterationListener.onDirectoryDelete(fileEntry.getFile());
        } else {
            fileAlterationListener.onFileDelete(fileEntry.getFile());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ FileEntry[] lambda$listFileEntries$6(int i10) {
        return new FileEntry[i10];
    }

    private FileEntry[] listFileEntries(File file, FileEntry fileEntry) {
        return (FileEntry[]) Stream.of((Object[]) listFiles(file)).map(new C2784a(this, fileEntry, 1)).toArray(new C1915a(2));
    }

    private File[] listFiles(File file) {
        return file.isDirectory() ? sort(file.listFiles(this.fileFilter)) : FileUtils.EMPTY_FILE_ARRAY;
    }

    private File[] sort(File[] fileArr) {
        if (fileArr == null) {
            return FileUtils.EMPTY_FILE_ARRAY;
        }
        if (fileArr.length > 1) {
            Arrays.sort(fileArr, this.comparator);
        }
        return fileArr;
    }

    private static Comparator<File> toComparator(IOCase iOCase) {
        int i10 = C28931.$SwitchMap$org$apache$commons$io$IOCase[IOCase.value(iOCase, IOCase.SYSTEM).ordinal()];
        if (i10 != 1) {
            return i10 != 2 ? NameFileComparator.NAME_COMPARATOR : NameFileComparator.NAME_INSENSITIVE_COMPARATOR;
        }
        return NameFileComparator.NAME_SYSTEM_COMPARATOR;
    }

    public void addListener(FileAlterationListener fileAlterationListener) {
        if (fileAlterationListener != null) {
            this.listeners.add(fileAlterationListener);
        }
    }

    public void checkAndNotify() {
        this.listeners.forEach(new C2896c(this, 1));
        File file = this.rootEntry.getFile();
        boolean zExists = file.exists();
        FileEntry fileEntry = this.rootEntry;
        if (zExists) {
            checkAndFire(fileEntry, fileEntry.getChildren(), listFiles(file));
        } else if (fileEntry.isExists()) {
            FileEntry fileEntry2 = this.rootEntry;
            checkAndFire(fileEntry2, fileEntry2.getChildren(), FileUtils.EMPTY_FILE_ARRAY);
        }
        this.listeners.forEach(new C2896c(this, 2));
    }

    public Comparator<File> getComparator() {
        return this.comparator;
    }

    public File getDirectory() {
        return this.rootEntry.getFile();
    }

    public FileFilter getFileFilter() {
        return this.fileFilter;
    }

    public Iterable<FileAlterationListener> getListeners() {
        return new ArrayList(this.listeners);
    }

    public void initialize() {
        FileEntry fileEntry = this.rootEntry;
        fileEntry.refresh(fileEntry.getFile());
        FileEntry fileEntry2 = this.rootEntry;
        fileEntry2.setChildren(listFileEntries(fileEntry2.getFile(), this.rootEntry));
    }

    public void removeListener(FileAlterationListener fileAlterationListener) {
        if (fileAlterationListener != null) {
            this.listeners.removeIf(new C1754c(7, fileAlterationListener));
        }
    }

    public String toString() {
        return getClass().getSimpleName() + "[file='" + getDirectory().getPath() + "', " + this.fileFilter.toString() + ", listeners=" + this.listeners.size() + "]";
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static final class Builder extends AbstractOriginSupplier<FileAlterationObserver, Builder> {
        private FileFilter fileFilter;
        private IOCase ioCase;
        private FileEntry rootEntry;

        public /* synthetic */ Builder(C28931 c28931) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public File checkOriginFile() {
            return checkOrigin().getFile();
        }

        @Override // org.apache.commons.p161io.function.IOSupplier
        public FileAlterationObserver get() {
            return new FileAlterationObserver(this, (C28931) null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder setFileFilter(FileFilter fileFilter) {
            this.fileFilter = fileFilter;
            return (Builder) asThis();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder setIOCase(IOCase iOCase) {
            this.ioCase = iOCase;
            return (Builder) asThis();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder setRootEntry(FileEntry fileEntry) {
            this.rootEntry = fileEntry;
            return (Builder) asThis();
        }

        private Builder() {
        }
    }

    private FileAlterationObserver(Builder builder) {
        this(builder.rootEntry != null ? builder.rootEntry : new FileEntry(builder.checkOriginFile()), builder.fileFilter, toComparator(builder.ioCase));
    }

    @Deprecated
    public FileAlterationObserver(File file) {
        this(file, (FileFilter) null);
    }

    @Deprecated
    public FileAlterationObserver(File file, FileFilter fileFilter) {
        this(file, fileFilter, (IOCase) null);
    }

    @Deprecated
    public FileAlterationObserver(File file, FileFilter fileFilter, IOCase iOCase) {
        this(new FileEntry(file), fileFilter, iOCase);
    }

    public /* synthetic */ FileAlterationObserver(Builder builder, C28931 c28931) {
        this(builder);
    }

    public FileAlterationObserver(FileEntry fileEntry, FileFilter fileFilter, IOCase iOCase) {
        this(fileEntry, fileFilter, toComparator(iOCase));
    }

    @Deprecated
    public FileAlterationObserver(String str) {
        this(new File(str));
    }

    @Deprecated
    public FileAlterationObserver(String str, FileFilter fileFilter) {
        this(new File(str), fileFilter);
    }

    @Deprecated
    public FileAlterationObserver(String str, FileFilter fileFilter, IOCase iOCase) {
        this(new File(str), fileFilter, iOCase);
    }

    public void destroy() {
    }
}

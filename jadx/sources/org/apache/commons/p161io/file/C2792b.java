package org.apache.commons.p161io.file;

import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.file.CopyOption;
import java.nio.file.FileVisitOption;
import java.nio.file.FileVisitor;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.Set;
import java.util.function.BiPredicate;
import org.apache.commons.p161io.function.IOFunction;
import org.apache.commons.p161io.function.IOQuadFunction;
import org.apache.commons.p161io.function.IOTriFunction;

/* JADX INFO: renamed from: org.apache.commons.io.file.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2792b implements IOTriFunction, IOFunction, IOQuadFunction {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f7950b;

    @Override // org.apache.commons.p161io.function.IOTriFunction
    public Object apply(Object obj, Object obj2, Object obj3) {
        switch (this.f7950b) {
            case 0:
                return Files.createTempDirectory((Path) obj, (String) obj2, (FileAttribute[]) obj3);
            case 1:
                return Long.valueOf(Files.copy((InputStream) obj, (Path) obj2, (CopyOption[]) obj3));
            case 2:
                return Files.write((Path) obj, (byte[]) obj2, (OpenOption[]) obj3);
            case 3:
            case 5:
            case 9:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 21:
            default:
                return Files.copy((Path) obj, (Path) obj2, (CopyOption[]) obj3);
            case 4:
                return Files.walk((Path) obj, ((Integer) obj2).intValue(), (FileVisitOption[]) obj3);
            case 6:
                return Files.getAttribute((Path) obj, (String) obj2, (LinkOption[]) obj3);
            case 7:
                return Files.move((Path) obj, (Path) obj2, (CopyOption[]) obj3);
            case 8:
                return Files.readAttributes((Path) obj, (Class) obj2, (LinkOption[]) obj3);
            case 10:
                return Files.createTempFile((String) obj, (String) obj2, (FileAttribute[]) obj3);
            case 11:
                return Files.newBufferedWriter((Path) obj, (Charset) obj2, (OpenOption[]) obj3);
            case 19:
                return Files.write((Path) obj, (Iterable<? extends CharSequence>) obj2, (OpenOption[]) obj3);
            case 20:
                return Files.newByteChannel((Path) obj, (Set) obj2, (FileAttribute[]) obj3);
            case 22:
                return Files.createSymbolicLink((Path) obj, (Path) obj2, (FileAttribute[]) obj3);
        }
    }

    @Override // org.apache.commons.p161io.function.IOFunction
    public Object apply(Object obj) {
        Path path = (Path) obj;
        switch (this.f7950b) {
            case 3:
                return Files.list(path);
            case 5:
                return Files.readAllBytes(path);
            case 9:
                return Long.valueOf(Files.size(path));
            case 13:
                return Files.newBufferedReader(path);
            case 15:
                return Files.readSymbolicLink(path);
            case 17:
                return Files.probeContentType(path);
            case 21:
                return Boolean.valueOf(Files.isHidden(path));
            case 23:
                return Boolean.valueOf(Files.deleteIfExists(path));
            case 24:
                return Files.readAllLines(path);
            case 26:
                return Files.lines(path);
            default:
                return Files.newDirectoryStream(path);
        }
    }

    @Override // org.apache.commons.p161io.function.IOQuadFunction
    public Object apply(Object obj, Object obj2, Object obj3, Object obj4) {
        Path path = (Path) obj;
        switch (this.f7950b) {
            case 12:
                return Files.find(path, ((Integer) obj2).intValue(), (BiPredicate) obj3, (FileVisitOption[]) obj4);
            case 13:
            case 15:
            case 17:
            default:
                return Files.walkFileTree(path, (Set) obj2, ((Integer) obj3).intValue(), (FileVisitor) obj4);
            case 14:
                return Files.setAttribute(path, (String) obj2, obj3, (LinkOption[]) obj4);
            case 16:
                return Files.write(path, (Iterable) obj2, (Charset) obj3, (OpenOption[]) obj4);
            case 18:
                return Files.createTempFile(path, (String) obj2, (String) obj3, (FileAttribute[]) obj4);
        }
    }
}

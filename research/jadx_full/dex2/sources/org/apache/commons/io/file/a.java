package org.apache.commons.io.file;

import java.io.OutputStream;
import java.nio.charset.Charset;
import java.nio.file.DirectoryStream$Filter;
import java.nio.file.FileVisitOption;
import java.nio.file.FileVisitor;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.FileTime;
import java.nio.file.attribute.UserPrincipal;
import java.util.Set;
import org.apache.commons.io.function.IOBiFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class a implements IOBiFunction {
    public final /* synthetic */ int a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(int i) {
        this.a = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOBiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                return Files.walkFileTree((Path) obj, (FileVisitor) obj2);
            case 1:
                return Files.createDirectories((Path) obj, (FileAttribute[]) obj2);
            case 2:
                return Files.createLink((Path) obj, (Path) obj2);
            case 3:
                return Long.valueOf(Files.copy((Path) obj, (OutputStream) obj2));
            case 4:
                return Files.newBufferedReader((Path) obj, (Charset) obj2);
            case 5:
                return Files.newDirectoryStream((Path) obj, (DirectoryStream$Filter<? super Path>) obj2);
            case 6:
                return Files.getPosixFilePermissions((Path) obj, (LinkOption[]) obj2);
            case 7:
                return Files.newDirectoryStream((Path) obj, (String) obj2);
            case 8:
                return Files.setLastModifiedTime((Path) obj, (FileTime) obj2);
            case 9:
                return Files.getOwner((Path) obj, (LinkOption[]) obj2);
            case 10:
                return Files.readAllLines((Path) obj, (Charset) obj2);
            case 11:
                return Files.setOwner((Path) obj, (UserPrincipal) obj2);
            case 12:
                return Files.lines((Path) obj, (Charset) obj2);
            case 13:
                return Files.newByteChannel((Path) obj, (OpenOption[]) obj2);
            case 14:
                return Files.setPosixFilePermissions((Path) obj, (Set) obj2);
            case 15:
                return Files.createFile((Path) obj, (FileAttribute[]) obj2);
            case 16:
                return Files.newInputStream((Path) obj, (OpenOption[]) obj2);
            case 17:
                return Files.walk((Path) obj, (FileVisitOption[]) obj2);
            case 18:
                return Files.createTempDirectory((String) obj, (FileAttribute[]) obj2);
            case 19:
                return Boolean.valueOf(Files.isSameFile((Path) obj, (Path) obj2));
            case 20:
                return Files.getLastModifiedTime((Path) obj, (LinkOption[]) obj2);
            case 21:
                return Files.newBufferedWriter((Path) obj, (OpenOption[]) obj2);
            case 22:
                return Files.createDirectory((Path) obj, (FileAttribute[]) obj2);
            default:
                return Files.newOutputStream((Path) obj, (OpenOption[]) obj2);
        }
    }
}

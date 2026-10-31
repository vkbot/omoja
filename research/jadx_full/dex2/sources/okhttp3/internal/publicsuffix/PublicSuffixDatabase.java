package okhttp3.internal.publicsuffix;

import j1.i;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import l9.a0;
import l9.f;
import l9.j0;
import l9.t;
import l9.v;
import okhttp3.HttpUrl;
import okhttp3.internal.platform.Platform;
import org.apache.commons.io.FilenameUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000f\u001a\u00020\fJ\b\u0010\u0010\u001a\u00020\u0011H\u0002J\b\u0010\u0012\u001a\u00020\u0011H\u0002J\u0016\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u000f\u001a\u00020\fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;", HttpUrl.FRAGMENT_ENCODE_SET, "()V", "listRead", "Ljava/util/concurrent/atomic/AtomicBoolean;", "publicSuffixExceptionListBytes", HttpUrl.FRAGMENT_ENCODE_SET, "publicSuffixListBytes", "readCompleteLatch", "Ljava/util/concurrent/CountDownLatch;", "findMatchingRule", HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET, "domainLabels", "getEffectiveTldPlusOne", "domain", "readTheList", HttpUrl.FRAGMENT_ENCODE_SET, "readTheListUninterruptibly", "setListBytes", "splitDomain", "Companion", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class PublicSuffixDatabase {
    private static final char EXCEPTION_MARKER = '!';
    public static final String PUBLIC_SUFFIX_RESOURCE = "publicsuffixes.gz";
    private byte[] publicSuffixExceptionListBytes;
    private byte[] publicSuffixListBytes;
    public static final PublicSuffixDatabase$Companion Companion = new PublicSuffixDatabase$Companion(null);
    private static final byte[] WILDCARD_LABEL = {42};
    private static final List<String> PREVAILING_RULE = CollectionsKt.listOf("*");
    private static final PublicSuffixDatabase instance = new PublicSuffixDatabase();
    private final AtomicBoolean listRead = new AtomicBoolean(false);
    private final CountDownLatch readCompleteLatch = new CountDownLatch(1);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ PublicSuffixDatabase access$getInstance$cp() {
        return instance;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final List<String> findMatchingRule(List<String> domainLabels) {
        String strAccess$binarySearch;
        String strAccess$binarySearch2;
        List<String> listEmptyList;
        List<String> listEmptyList2;
        if (this.listRead.get() || !this.listRead.compareAndSet(false, true)) {
            try {
                this.readCompleteLatch.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        } else {
            readTheListUninterruptibly();
        }
        String str = null;
        if (this.publicSuffixListBytes == null) {
            i.l("Unable to load publicsuffixes.gz resource from the classpath.");
            return null;
        }
        int size = domainLabels.size();
        byte[][] bArr = new byte[size][];
        for (int i = 0; i < size; i++) {
            String str2 = domainLabels.get(i);
            Charset charset = StandardCharsets.UTF_8;
            charset.getClass();
            byte[] bytes = str2.getBytes(charset);
            bytes.getClass();
            bArr[i] = bytes;
        }
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                strAccess$binarySearch = null;
                break;
            }
            PublicSuffixDatabase$Companion publicSuffixDatabase$Companion = Companion;
            byte[] bArr2 = this.publicSuffixListBytes;
            if (bArr2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("publicSuffixListBytes");
                bArr2 = null;
            }
            strAccess$binarySearch = PublicSuffixDatabase$Companion.access$binarySearch(publicSuffixDatabase$Companion, bArr2, bArr, i2);
            if (strAccess$binarySearch != null) {
                break;
            }
            i2++;
        }
        if (size <= 1) {
            strAccess$binarySearch2 = null;
            break;
        }
        byte[][] bArr3 = (byte[][]) bArr.clone();
        int length = bArr3.length - 1;
        int i3 = 0;
        while (true) {
            if (i3 >= length) {
                strAccess$binarySearch2 = null;
                break;
            }
            bArr3[i3] = WILDCARD_LABEL;
            PublicSuffixDatabase$Companion publicSuffixDatabase$Companion2 = Companion;
            byte[] bArr4 = this.publicSuffixListBytes;
            if (bArr4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("publicSuffixListBytes");
                bArr4 = null;
            }
            strAccess$binarySearch2 = PublicSuffixDatabase$Companion.access$binarySearch(publicSuffixDatabase$Companion2, bArr4, bArr3, i3);
            if (strAccess$binarySearch2 != null) {
                break;
            }
            i3++;
        }
        if (strAccess$binarySearch2 != null) {
            int i4 = size - 1;
            for (int i5 = 0; i5 < i4; i5++) {
                PublicSuffixDatabase$Companion publicSuffixDatabase$Companion3 = Companion;
                byte[] bArr5 = this.publicSuffixExceptionListBytes;
                if (bArr5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("publicSuffixExceptionListBytes");
                    bArr5 = null;
                }
                String strAccess$binarySearch3 = PublicSuffixDatabase$Companion.access$binarySearch(publicSuffixDatabase$Companion3, bArr5, bArr, i5);
                if (strAccess$binarySearch3 != null) {
                    str = strAccess$binarySearch3;
                    break;
                }
            }
        }
        if (str != null) {
            return StringsKt.H("!".concat(str), new char[]{FilenameUtils.EXTENSION_SEPARATOR});
        }
        if (strAccess$binarySearch == null && strAccess$binarySearch2 == null) {
            return PREVAILING_RULE;
        }
        if (strAccess$binarySearch == null || (listEmptyList = StringsKt.H(strAccess$binarySearch, new char[]{FilenameUtils.EXTENSION_SEPARATOR})) == null) {
            listEmptyList = CollectionsKt.emptyList();
        }
        if (strAccess$binarySearch2 == null || (listEmptyList2 = StringsKt.H(strAccess$binarySearch2, new char[]{FilenameUtils.EXTENSION_SEPARATOR})) == null) {
            listEmptyList2 = CollectionsKt.emptyList();
        }
        return listEmptyList.size() > listEmptyList2.size() ? listEmptyList : listEmptyList2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void readTheList() {
        try {
            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream(PUBLIC_SUFFIX_RESOURCE);
            if (resourceAsStream != null) {
                Logger logger = v.a;
                a0 a0Var = new a0(new t(new f(resourceAsStream, new j0())));
                try {
                    long j = a0Var.readInt();
                    a0Var.Y(j);
                    ref$ObjectRef.element = a0Var.c.f0(j);
                    long j2 = a0Var.readInt();
                    a0Var.Y(j2);
                    ref$ObjectRef2.element = a0Var.c.f0(j2);
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(a0Var, (Throwable) null);
                    synchronized (this) {
                        Object obj = ref$ObjectRef.element;
                        obj.getClass();
                        this.publicSuffixListBytes = (byte[]) obj;
                        Object obj2 = ref$ObjectRef2.element;
                        obj2.getClass();
                        this.publicSuffixExceptionListBytes = (byte[]) obj2;
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(a0Var, th);
                        throw th2;
                    }
                }
            }
            this.readCompleteLatch.countDown();
        } catch (Throwable th3) {
            this.readCompleteLatch.countDown();
            throw th3;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void readTheListUninterruptibly() {
        boolean z = false;
        while (true) {
            try {
                try {
                    readTheList();
                    break;
                } catch (InterruptedIOException unused) {
                    Thread.interrupted();
                    z = true;
                } catch (IOException e) {
                    Platform.Companion.get().log("Failed to read public suffix list", 5, e);
                    if (!z) {
                        return;
                    }
                }
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (!z) {
            return;
        }
        Thread.currentThread().interrupt();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final List<String> splitDomain(String domain) {
        List<String> listH = StringsKt.H(domain, new char[]{FilenameUtils.EXTENSION_SEPARATOR});
        return Intrinsics.areEqual(CollectionsKt.last(listH), HttpUrl.FRAGMENT_ENCODE_SET) ? CollectionsKt.h(listH) : listH;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String getEffectiveTldPlusOne(String domain) {
        int size;
        int size2;
        domain.getClass();
        String unicode = IDN.toUnicode(domain);
        unicode.getClass();
        List<String> listSplitDomain = splitDomain(unicode);
        List<String> listFindMatchingRule = findMatchingRule(listSplitDomain);
        if (listSplitDomain.size() == listFindMatchingRule.size() && listFindMatchingRule.get(0).charAt(0) != '!') {
            return null;
        }
        if (listFindMatchingRule.get(0).charAt(0) == '!') {
            size = listSplitDomain.size();
            size2 = listFindMatchingRule.size();
        } else {
            size = listSplitDomain.size();
            size2 = listFindMatchingRule.size() + 1;
        }
        return SequencesKt.r(SequencesKt.drop(CollectionsKt.asSequence(splitDomain(domain)), size - size2), ".");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setListBytes(byte[] publicSuffixListBytes, byte[] publicSuffixExceptionListBytes) {
        publicSuffixListBytes.getClass();
        publicSuffixExceptionListBytes.getClass();
        this.publicSuffixListBytes = publicSuffixListBytes;
        this.publicSuffixExceptionListBytes = publicSuffixExceptionListBytes;
        this.listRead.set(true);
        this.readCompleteLatch.countDown();
    }
}

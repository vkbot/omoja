package f7;

import java.io.BufferedReader;
import java.io.IOException;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Optional;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final h f2277a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f2278b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(android.support.v4.media.h hVar) {
        h hVar2 = (h) hVar.d;
        Objects.requireNonNull(hVar2, "An [Interface] section is required");
        this.f2277a = hVar2;
        this.f2278b = Collections.unmodifiableList(new ArrayList((ArrayList) hVar.c));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static c a(BufferedReader bufferedReader) throws IOException, b {
        int i9;
        android.support.v4.media.h hVar = new android.support.v4.media.h(9);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i10 = 0;
        boolean z8 = false;
        boolean z9 = false;
        while (true) {
            boolean z10 = z9;
            while (true) {
                String line = bufferedReader.readLine();
                int i11 = -1;
                if (line == null) {
                    if (z8) {
                        hVar.o(arrayList2);
                    }
                    if (!z9) {
                        throw new b(null);
                    }
                    f5.i iVar = new f5.i();
                    LinkedHashSet linkedHashSet = (LinkedHashSet) iVar.e;
                    LinkedHashSet linkedHashSet2 = (LinkedHashSet) iVar.f2203f;
                    int size = arrayList.size();
                    int i12 = 0;
                    while (i12 < size) {
                        int i13 = i12 + 1;
                        a aVar = (a) a.a((CharSequence) arrayList.get(i12)).orElseThrow(new androidx.emoji2.text.flatbuffer.a(1));
                        String str = aVar.f2275a;
                        String str2 = aVar.f2276b;
                        String lowerCase = str.toLowerCase(Locale.ENGLISH);
                        lowerCase.getClass();
                        switch (lowerCase.hashCode()) {
                            case -2018040851:
                                i9 = lowerCase.equals("excludedapplications") ? i10 : i11;
                                break;
                            case -1876040196:
                                i9 = lowerCase.equals("privatekey") ? 1 : i11;
                                break;
                            case -1147692044:
                                i9 = lowerCase.equals("address") ? 2 : i11;
                                break;
                            case 99625:
                                i9 = lowerCase.equals("dns") ? 3 : i11;
                                break;
                            case 108462:
                                i9 = lowerCase.equals("mtu") ? 4 : i11;
                                break;
                            case 496413663:
                                i9 = lowerCase.equals("includedapplications") ? 5 : i11;
                                break;
                            case 874736328:
                                i9 = lowerCase.equals("listenport") ? 6 : i11;
                                break;
                            default:
                                i9 = i11;
                                break;
                        }
                        switch (i9) {
                            case 0:
                                String[] strArrSplit = a.d.split(str2);
                                ArrayList arrayList3 = new ArrayList(strArrSplit.length);
                                for (String str3 : strArrSplit) {
                                    Objects.requireNonNull(str3);
                                    arrayList3.add(str3);
                                }
                                linkedHashSet.addAll(Collections.unmodifiableList(arrayList3));
                                break;
                            case 1:
                                try {
                                    iVar.f2204g = new android.support.v4.media.h(g7.b.c(str2));
                                } catch (g7.c e) {
                                    throw new b(e);
                                }
                                break;
                            case 2:
                                try {
                                    for (String str4 : a.d.split(str2)) {
                                        ((LinkedHashSet) iVar.f2202b).add(f.a(str4));
                                    }
                                } catch (i e6) {
                                    throw new b(e6);
                                }
                                break;
                            case 3:
                                try {
                                    String[] strArrSplit2 = a.d.split(str2);
                                    int length = strArrSplit2.length;
                                    for (int i14 = i10; i14 < length; i14++) {
                                        String str5 = strArrSplit2[i14];
                                        try {
                                            ((LinkedHashSet) iVar.c).add(d.a(str5));
                                        } catch (i e9) {
                                            if (e9.f2294b != InetAddress.class || !d.c.matcher(str5).matches()) {
                                                throw e9;
                                            }
                                            ((LinkedHashSet) iVar.d).add(str5);
                                        }
                                    }
                                } catch (i e10) {
                                    throw new b(e10);
                                }
                                break;
                            case 4:
                                try {
                                    int i15 = Integer.parseInt(str2);
                                    if (i15 < 0) {
                                        String.valueOf(i15);
                                        throw new b(null);
                                    }
                                    iVar.f2206i = i15 == 0 ? Optional.empty() : Optional.of(Integer.valueOf(i15));
                                } catch (NumberFormatException e11) {
                                    throw new b(e11);
                                }
                                break;
                            case 5:
                                String[] strArrSplit3 = a.d.split(str2);
                                ArrayList arrayList4 = new ArrayList(strArrSplit3.length);
                                int length2 = strArrSplit3.length;
                                for (int i16 = i10; i16 < length2; i16++) {
                                    String str6 = strArrSplit3[i16];
                                    Objects.requireNonNull(str6);
                                    arrayList4.add(str6);
                                }
                                linkedHashSet2.addAll(Collections.unmodifiableList(arrayList4));
                                break;
                            case 6:
                                try {
                                    int i17 = Integer.parseInt(str2);
                                    if (i17 < 0 || i17 > 65535) {
                                        String.valueOf(i17);
                                        throw new b(null);
                                    }
                                    iVar.f2205h = i17 == 0 ? Optional.empty() : Optional.of(Integer.valueOf(i17));
                                } catch (NumberFormatException e12) {
                                    throw new b(e12);
                                }
                                break;
                            default:
                                throw new b(null);
                        }
                        i12 = i13;
                        i10 = 0;
                        i11 = -1;
                    }
                    if (((android.support.v4.media.h) iVar.f2204g) == null) {
                        throw new b(null);
                    }
                    if (!linkedHashSet2.isEmpty() && !linkedHashSet.isEmpty()) {
                        throw new b(null);
                    }
                    hVar.d = new h(iVar);
                    return new c(hVar);
                }
                int iIndexOf = line.indexOf(35);
                if (iIndexOf != -1) {
                    line = line.substring(0, iIndexOf);
                }
                String strTrim = line.trim();
                if (!strTrim.isEmpty()) {
                    if (strTrim.startsWith("[")) {
                        if (z8) {
                            hVar.o(arrayList2);
                            arrayList2.clear();
                        }
                        if ("[Interface]".equalsIgnoreCase(strTrim)) {
                            break;
                        }
                        if (!"[Peer]".equalsIgnoreCase(strTrim)) {
                            throw new b(null);
                        }
                        z10 = false;
                        z8 = true;
                    } else if (z10) {
                        arrayList.add(strTrim);
                    } else {
                        if (!z8) {
                            throw new b(null);
                        }
                        arrayList2.add(strTrim);
                    }
                }
            }
            z8 = false;
            z9 = true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f2277a.equals(cVar.f2277a) && this.f2278b.equals(cVar.f2278b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return this.f2278b.hashCode() + (this.f2277a.hashCode() * 31);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "(Config " + this.f2277a + " (" + this.f2278b.size() + " peers))";
    }
}

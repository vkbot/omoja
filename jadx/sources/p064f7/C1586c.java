package p064f7;

import android.support.v4.media.C0090h;
import androidx.emoji2.text.flatbuffer.C0489a;
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
import p062f5.C1554i;
import p074g7.C1623b;
import p074g7.C1624c;

/* JADX INFO: renamed from: f7.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1586c {

    /* JADX INFO: renamed from: a */
    public final C1591h f3936a;

    /* JADX INFO: renamed from: b */
    public final List f3937b;

    public C1586c(C0090h c0090h) {
        C1591h c1591h = (C1591h) c0090h.f192d;
        Objects.requireNonNull(c1591h, "An [Interface] section is required");
        this.f3936a = c1591h;
        this.f3937b = Collections.unmodifiableList(new ArrayList((ArrayList) c0090h.f191c));
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX INFO: renamed from: a */
    public static C1586c m2670a(BufferedReader bufferedReader) throws IOException, C1585b {
        int i10;
        C0090h c0090h = new C0090h(9);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i11 = 0;
        boolean z9 = false;
        boolean z10 = false;
        while (true) {
            boolean z11 = z10;
            while (true) {
                String line = bufferedReader.readLine();
                int i12 = -1;
                if (line == null) {
                    if (z9) {
                        c0090h.m249o(arrayList2);
                    }
                    if (!z10) {
                        throw new C1585b(null);
                    }
                    C1554i c1554i = new C1554i();
                    LinkedHashSet linkedHashSet = (LinkedHashSet) c1554i.f3819e;
                    LinkedHashSet linkedHashSet2 = (LinkedHashSet) c1554i.f3820f;
                    int size = arrayList.size();
                    int i13 = 0;
                    while (i13 < size) {
                        int i14 = i13 + 1;
                        C1584a c1584a = (C1584a) C1584a.m2669a((CharSequence) arrayList.get(i13)).orElseThrow(new C0489a(1));
                        String str = c1584a.f3934a;
                        String str2 = c1584a.f3935b;
                        String lowerCase = str.toLowerCase(Locale.ENGLISH);
                        lowerCase.getClass();
                        switch (lowerCase.hashCode()) {
                            case -2018040851:
                                i10 = lowerCase.equals("excludedapplications") ? i11 : i12;
                                break;
                            case -1876040196:
                                i10 = lowerCase.equals("privatekey") ? 1 : i12;
                                break;
                            case -1147692044:
                                i10 = lowerCase.equals("address") ? 2 : i12;
                                break;
                            case 99625:
                                i10 = lowerCase.equals("dns") ? 3 : i12;
                                break;
                            case 108462:
                                i10 = lowerCase.equals("mtu") ? 4 : i12;
                                break;
                            case 496413663:
                                i10 = lowerCase.equals("includedapplications") ? 5 : i12;
                                break;
                            case 874736328:
                                i10 = lowerCase.equals("listenport") ? 6 : i12;
                                break;
                            default:
                                i10 = i12;
                                break;
                        }
                        switch (i10) {
                            case 0:
                                String[] strArrSplit = C1584a.f3933d.split(str2);
                                ArrayList arrayList3 = new ArrayList(strArrSplit.length);
                                for (String str3 : strArrSplit) {
                                    Objects.requireNonNull(str3);
                                    arrayList3.add(str3);
                                }
                                linkedHashSet.addAll(Collections.unmodifiableList(arrayList3));
                                break;
                            case 1:
                                try {
                                    c1554i.f3821g = new C0090h(C1623b.m2712c(str2));
                                } catch (C1624c e) {
                                    throw new C1585b(e);
                                }
                                break;
                            case 2:
                                try {
                                    for (String str4 : C1584a.f3933d.split(str2)) {
                                        ((LinkedHashSet) c1554i.f3816b).add(C1589f.m2674a(str4));
                                    }
                                } catch (C1592i e6) {
                                    throw new C1585b(e6);
                                }
                                break;
                            case 3:
                                try {
                                    String[] strArrSplit2 = C1584a.f3933d.split(str2);
                                    int length = strArrSplit2.length;
                                    for (int i15 = i11; i15 < length; i15++) {
                                        String str5 = strArrSplit2[i15];
                                        try {
                                            ((LinkedHashSet) c1554i.f3817c).add(AbstractC1587d.m2671a(str5));
                                        } catch (C1592i e10) {
                                            if (e10.f3961b != InetAddress.class || !AbstractC1587d.f3940c.matcher(str5).matches()) {
                                                throw e10;
                                            }
                                            ((LinkedHashSet) c1554i.f3818d).add(str5);
                                        }
                                    }
                                } catch (C1592i e11) {
                                    throw new C1585b(e11);
                                }
                                break;
                            case 4:
                                try {
                                    int i16 = Integer.parseInt(str2);
                                    if (i16 < 0) {
                                        String.valueOf(i16);
                                        throw new C1585b(null);
                                    }
                                    c1554i.f3823i = i16 == 0 ? Optional.empty() : Optional.of(Integer.valueOf(i16));
                                } catch (NumberFormatException e12) {
                                    throw new C1585b(e12);
                                }
                                break;
                            case 5:
                                String[] strArrSplit3 = C1584a.f3933d.split(str2);
                                ArrayList arrayList4 = new ArrayList(strArrSplit3.length);
                                int length2 = strArrSplit3.length;
                                for (int i17 = i11; i17 < length2; i17++) {
                                    String str6 = strArrSplit3[i17];
                                    Objects.requireNonNull(str6);
                                    arrayList4.add(str6);
                                }
                                linkedHashSet2.addAll(Collections.unmodifiableList(arrayList4));
                                break;
                            case 6:
                                try {
                                    int i18 = Integer.parseInt(str2);
                                    if (i18 < 0 || i18 > 65535) {
                                        String.valueOf(i18);
                                        throw new C1585b(null);
                                    }
                                    c1554i.f3822h = i18 == 0 ? Optional.empty() : Optional.of(Integer.valueOf(i18));
                                } catch (NumberFormatException e13) {
                                    throw new C1585b(e13);
                                }
                                break;
                            default:
                                throw new C1585b(null);
                        }
                        i13 = i14;
                        i11 = 0;
                        i12 = -1;
                    }
                    if (((C0090h) c1554i.f3821g) == null) {
                        throw new C1585b(null);
                    }
                    if (!linkedHashSet2.isEmpty() && !linkedHashSet.isEmpty()) {
                        throw new C1585b(null);
                    }
                    c0090h.f192d = new C1591h(c1554i);
                    return new C1586c(c0090h);
                }
                int iIndexOf = line.indexOf(35);
                if (iIndexOf != -1) {
                    line = line.substring(0, iIndexOf);
                }
                String strTrim = line.trim();
                if (!strTrim.isEmpty()) {
                    if (strTrim.startsWith("[")) {
                        if (z9) {
                            c0090h.m249o(arrayList2);
                            arrayList2.clear();
                        }
                        if ("[Interface]".equalsIgnoreCase(strTrim)) {
                            break;
                        }
                        if (!"[Peer]".equalsIgnoreCase(strTrim)) {
                            throw new C1585b(null);
                        }
                        z11 = false;
                        z9 = true;
                    } else if (z11) {
                        arrayList.add(strTrim);
                    } else {
                        if (!z9) {
                            throw new C1585b(null);
                        }
                        arrayList2.add(strTrim);
                    }
                }
            }
            z9 = false;
            z10 = true;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1586c)) {
            return false;
        }
        C1586c c1586c = (C1586c) obj;
        return this.f3936a.equals(c1586c.f3936a) && this.f3937b.equals(c1586c.f3937b);
    }

    public final int hashCode() {
        return this.f3937b.hashCode() + (this.f3936a.hashCode() * 31);
    }

    public final String toString() {
        return "(Config " + this.f3936a + " (" + this.f3937b.size() + " peers))";
    }
}

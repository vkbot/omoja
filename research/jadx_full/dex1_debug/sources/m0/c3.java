package m0;

import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.text.format.Formatter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.MimeTypeMap;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.ConcatAdapter;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView$Adapter;
import androidx.recyclerview.widget.RecyclerView$ViewHolder;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CodingErrorAction;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import kotlin.UByte;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class c3 extends l0.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f3355b = new ArrayList();
    public final HashMap c = new HashMap();
    public final HashSet d = new HashSet();
    public x2 e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TextView f3356f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ProgressBar f3357g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public TextView f3358h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public TextView f3359i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public TextView f3360j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public LinearLayout f3361k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Button f3362l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Button f3363m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Button f3364n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Button f3365o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Button f3366p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Button f3367q;
    public h7.k r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public File f3368s;
    public File t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public File f3369u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f3370v;
    public int w;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String A(File file) {
        int i9;
        if (B(file)) {
            return e0.m.h(new byte[]{121, -53, -92, -45, -105, -78, 88, -7, 113, -44, -70, -112, -120, -65, 93, -93, 121, -43, -80, -51, -111, -72, 93, -93, 104, -38, -73, -44, -97, -74, 92, -96, 121, -55, -73, -41, -105, -89, 92}, new byte[]{24, -69, -44, -65, -2, -47, 57, -115});
        }
        String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(Uri.fromFile(file).toString());
        if (fileExtensionFromUrl == null || fileExtensionFromUrl.length() == 0) {
            String name = file.getName();
            int iLastIndexOf = name.lastIndexOf(46);
            fileExtensionFromUrl = (iLastIndexOf < 0 || (i9 = iLastIndexOf + 1) >= name.length()) ? "" : name.substring(i9);
        }
        String mimeTypeFromExtension = fileExtensionFromUrl.length() == 0 ? null : MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileExtensionFromUrl.toLowerCase(Locale.ROOT));
        return mimeTypeFromExtension == null ? e0.m.h(new byte[]{-77, -92, 104}, new byte[]{-103, -117, 66, -11, -17, 110, 84, 102}) : mimeTypeFromExtension;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean B(File file) {
        return file.getName().toLowerCase(Locale.ROOT).endsWith(e0.m.h(new byte[]{-31, -125, -82, 113}, new byte[]{-49, -30, -34, 26, 9, -79, -42, 19}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean C(String str) {
        return str.startsWith(e0.m.h(new byte[]{31, -50, 0, 54, 6, 94, -44, 9, 31}, new byte[]{48, -67, 116, 89, 116, 63, -77, 108})) || str.startsWith(e0.m.h(new byte[]{5, 34, -60, -82, 115, -75, 123, 125, 67, 46, -11, -88, 43, -9}, new byte[]{42, 79, -86, -38, 92, -40, 30, 25})) || str.startsWith(e0.m.h(new byte[]{-66, -41, 101, 14, -45, 114, -107, 52, -27, -45, 102, 31, -45}, new byte[]{-111, -70, 11, 122, -4, 0, -32, 90})) || str.startsWith(e0.m.h(new byte[]{-124, 77, -7, ByteCompanionObject.MAX_VALUE, -92, -8, -56, -20}, new byte[]{-85, 32, -105, 11, -117, -115, -69, -114})) || str.startsWith(e0.m.h(new byte[]{-9, -6, 112, 60, 124, 115, -118, -20, -9, -4, 119, 49}, new byte[]{-40, -119, 4, 83, 14, 18, -19, -119})) || str.startsWith(e0.m.h(new byte[]{31, 6, 51, 73, -48, 5, -109, -23, 67, 0}, new byte[]{48, 107, 93, Base64.padSymbol, -1, 112, -9, ByteCompanionObject.MIN_VALUE})) || str.startsWith(e0.m.h(new byte[]{114, 52, -40, -2, -124, 27, 68, -13, 114, 50, -56, -8, -123, 17}, new byte[]{93, 71, -84, -111, -10, 122, 35, -106})) || str.startsWith(e0.m.h(new byte[]{-52, -57, 25, 65, 64, -79, 55, 88, -52, -47, 21, 90}, new byte[]{-29, -76, 109, 46, 50, -48, 80, Base64.padSymbol})) || str.startsWith(e0.m.h(new byte[]{4, 22, 95, -121, -51, 81, 28, -64}, new byte[]{43, 123, 49, -13, -30, 52, 100, -76})) || str.startsWith(e0.m.h(new byte[]{8, 2, -56, 119, -30, 92, 17, -3, 8, 2, -40, 123, -15, 79, 18}, new byte[]{39, 113, -68, 24, -112, Base64.padSymbol, 118, -104}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static b3 E(File file) throws IOException {
        String str;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
        int i9 = 524288;
        while (true) {
            if (i9 <= 0) {
                break;
            }
            try {
                int i10 = bufferedInputStream.read(bArr, 0, Math.min(8192, i9));
                if (i10 == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i10);
                i9 -= i10;
            } catch (Throwable th) {
                try {
                    bufferedInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        bufferedInputStream.close();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (byteArray.length >= 3 && (byteArray[0] & UByte.MAX_VALUE) == 239 && (byteArray[1] & UByte.MAX_VALUE) == 187 && (byteArray[2] & UByte.MAX_VALUE) == 191) {
            str = new String(byteArray, 3, byteArray.length - 3, StandardCharsets.UTF_8);
        } else if (byteArray.length >= 2 && (byteArray[0] & UByte.MAX_VALUE) == 255 && (byteArray[1] & UByte.MAX_VALUE) == 254) {
            str = new String(byteArray, 2, byteArray.length - 2, StandardCharsets.UTF_16LE);
        } else if (byteArray.length >= 2 && (byteArray[0] & UByte.MAX_VALUE) == 254 && (byteArray[1] & UByte.MAX_VALUE) == 255) {
            str = new String(byteArray, 2, byteArray.length - 2, StandardCharsets.UTF_16BE);
        } else {
            CharsetDecoder charsetDecoderNewDecoder = StandardCharsets.UTF_8.newDecoder();
            CodingErrorAction codingErrorAction = CodingErrorAction.REPORT;
            try {
                str = charsetDecoderNewDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).decode(ByteBuffer.wrap(byteArray)).toString();
            } catch (Exception unused) {
                str = new String(byteArray, Charset.forName(e0.m.h(new byte[]{3, 16, 103, 1, -122, -122, 8, 94, 69, 75, 60, 84}, new byte[]{116, 121, 9, 101, -23, -15, 123, 115})));
            }
        }
        return new b3(str, file.length() > 524288);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String G(File file) {
        if (file == null) {
            return "";
        }
        try {
            return file.getCanonicalPath();
        } catch (IOException unused) {
            return file.getAbsolutePath();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void t(ArrayList arrayList, HashSet hashSet, File file) {
        if (file != null) {
            try {
                String absolutePath = file.getAbsolutePath();
                if (file.isDirectory() && !absolutePath.contains(e0.m.h(new byte[]{-110, -5, 30, 50, ByteCompanionObject.MAX_VALUE, 108, -97, 36}, new byte[]{-9, -106, 107, 94, 30, 24, -6, 64})) && !absolutePath.contains(e0.m.h(new byte[]{36, -29, -19, 27}, new byte[]{87, -122, -127, 125, -113, 56, 15, 8})) && C(absolutePath) && file.listFiles() != null && hashSet.add(G(file))) {
                    arrayList.add(file);
                }
            } catch (Exception unused) {
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static File u(File file, String str) {
        String strSubstring;
        File file2;
        File file3 = new File(file, str);
        if (!file3.exists()) {
            return file3;
        }
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf > 0) {
            String strSubstring2 = str.substring(0, iLastIndexOf);
            strSubstring = str.substring(iLastIndexOf);
            str = strSubstring2;
        } else {
            strSubstring = "";
        }
        int i9 = 1;
        do {
            file2 = new File(file, String.format(Locale.ROOT, e0.m.h(new byte[]{51, -2, -50, -61, -81, 13, -31, -74, 51, -23, -76, -45}, new byte[]{22, -115, -111, -96, -64, 125, -104, -23}), str, Integer.valueOf(i9), strSubstring));
            i9++;
        } while (file2.exists());
        return file2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void w(File file, y2 y2Var, boolean z8) {
        File[] fileArrListFiles;
        if (file == null || !file.exists() || y2Var.d || y2Var.e) {
            return;
        }
        if (!y2Var.f3633a.add(G(file))) {
            y2Var.d = true;
            return;
        }
        try {
            fileArrListFiles = file.listFiles();
        } catch (Exception unused) {
            fileArrListFiles = null;
        }
        if (fileArrListFiles == null) {
            if (z8 && y2Var.c == 0) {
                y2Var.e = true;
                return;
            } else {
                y2Var.d = true;
                return;
            }
        }
        for (File file2 : fileArrListFiles) {
            int i9 = y2Var.c;
            if (i9 >= 50000) {
                y2Var.d = true;
                return;
            }
            y2Var.c = i9 + 1;
            if (file2.isDirectory()) {
                w(file2, y2Var, false);
            } else {
                long length = file2.length();
                if (length > 0) {
                    long j9 = y2Var.f3634b;
                    if (Long.MAX_VALUE - j9 < length) {
                        y2Var.f3634b = Long.MAX_VALUE;
                        y2Var.d = true;
                    } else {
                        y2Var.f3634b = j9 + length;
                    }
                }
            }
            if (y2Var.d || y2Var.e) {
                return;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void x(File file, File file2) {
        if (!file.isDirectory()) {
            File parentFile = file2.getParentFile();
            if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                n0.b.A(parentFile.getAbsolutePath());
                return;
            }
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2));
                try {
                    byte[] bArr = new byte[65536];
                    while (true) {
                        int i9 = bufferedInputStream.read(bArr);
                        if (i9 == -1) {
                            break;
                        } else {
                            bufferedOutputStream.write(bArr, 0, i9);
                        }
                        try {
                            bufferedInputStream.close();
                        } catch (Throwable th) {
                            th.addSuppressed(th);
                        }
                        throw th;
                    }
                    bufferedOutputStream.close();
                    bufferedInputStream.close();
                } catch (Throwable th2) {
                    try {
                        bufferedOutputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                bufferedInputStream.close();
                throw th4;
            }
        } else {
            if (!file2.exists() && !file2.mkdirs()) {
                n0.b.A(file2.getAbsolutePath());
                return;
            }
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                n0.b.A(file.getAbsolutePath());
                return;
            }
            for (File file3 : fileArrListFiles) {
                x(file3, new File(file2, file3.getName()));
            }
        }
        long jLastModified = file.lastModified();
        if (jLastModified > 0) {
            file2.setLastModified(jLastModified);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void y(File file) throws IOException {
        if (file.exists()) {
            if (file.isDirectory()) {
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles == null) {
                    n0.b.A(file.getAbsolutePath());
                    return;
                }
                for (File file2 : fileArrListFiles) {
                    y(file2);
                }
            }
            if (file.delete()) {
                return;
            }
            n0.b.A(file.getAbsolutePath());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void D(File file) {
        File absoluteFile;
        File[] fileArrListFiles;
        if (file == null) {
            return;
        }
        try {
            absoluteFile = file.getCanonicalFile();
        } catch (IOException unused) {
            absoluteFile = file.getAbsoluteFile();
        }
        if (!absoluteFile.exists() || !absoluteFile.isDirectory()) {
            I(getString(2131952716));
            return;
        }
        try {
            fileArrListFiles = absoluteFile.listFiles();
        } catch (Exception unused2) {
            fileArrListFiles = null;
        }
        this.t = absoluteFile;
        if (this.f3357g != null && this.f3356f != null) {
            try {
                StatFs statFs = new StatFs(G(absoluteFile));
                long totalBytes = statFs.getTotalBytes();
                long availableBytes = statFs.getAvailableBytes();
                long jMax = Math.max(0L, totalBytes - availableBytes);
                int iMin = totalBytes > 0 ? (int) Math.min(1000L, (jMax * 1000) / totalBytes) : 0;
                this.f3357g.setMax(1000);
                this.f3357g.setProgress(iMin);
                this.f3356f.setText(getString(2131952728, Formatter.formatShortFileSize(requireContext(), jMax), Formatter.formatShortFileSize(requireContext(), totalBytes), Formatter.formatShortFileSize(requireContext(), availableBytes)));
            } catch (Exception unused3) {
                this.f3357g.setMax(1000);
                this.f3357g.setProgress(0);
                this.f3356f.setText(2131952729);
            }
        }
        this.f3358h.setText(getString(2131952718, G(this.f3368s), G(this.t)));
        ArrayList arrayList = this.f3355b;
        arrayList.clear();
        if (fileArrListFiles != null) {
            Collections.addAll(arrayList, fileArrListFiles);
            Collections.sort(arrayList, new androidx.constraintlayout.core.utils.a(9));
            I(arrayList.isEmpty() ? getString(2131952702) : getString(2131952730));
        } else {
            I(getString(2131952713, G(this.t)));
        }
        this.e.notifyDataSetChanged();
        J();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void F(Runnable runnable) {
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        activity.runOnUiThread(new e0.j2(21, this, runnable));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void H(String str, boolean z8) {
        this.f3370v = z8;
        if (str != null) {
            I(str);
        }
        J();
        x2 x2Var = this.e;
        if (x2Var != null) {
            x2Var.notifyDataSetChanged();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void I(String str) {
        TextView textView = this.f3360j;
        if (textView != null) {
            if (str == null) {
                str = "";
            }
            textView.setText(str);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void J() {
        boolean z8 = this.f3370v;
        boolean z9 = !z8;
        Button button = this.f3367q;
        if (button != null) {
            button.setEnabled(z9);
        }
        Button button2 = this.f3364n;
        if (button2 != null) {
            button2.setEnabled(z9);
        }
        Button button3 = this.f3365o;
        if (button3 != null) {
            button3.setEnabled(z9);
        }
        Button button4 = this.f3366p;
        if (button4 != null) {
            button4.setEnabled(z9);
        }
        Button button5 = this.f3362l;
        boolean z10 = false;
        if (button5 != null) {
            button5.setEnabled((z8 || this.f3369u == null || this.t == null) ? false : true);
        }
        Button button6 = this.f3363m;
        if (button6 != null) {
            if (!z8 && this.f3369u != null) {
                z10 = true;
            }
            button6.setEnabled(z10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void K() {
        boolean z8 = this.f3369u != null;
        LinearLayout linearLayout = this.f3361k;
        if (linearLayout != null) {
            linearLayout.setVisibility(z8 ? 0 : 8);
        }
        TextView textView = this.f3359i;
        if (textView != null && z8) {
            textView.setText(getString(2131952689, G(this.f3369u)));
        }
        J();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(2131492974, viewGroup, false);
        RecyclerView recyclerView = (RecyclerView) viewInflate;
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
        View viewInflate2 = layoutInflater.inflate(2131493144, (ViewGroup) recyclerView, false);
        this.f3360j = (TextView) layoutInflater.inflate(2131493143, (ViewGroup) recyclerView, false);
        Button button = (Button) viewInflate2.findViewById(2131297708);
        this.f3367q = (Button) viewInflate2.findViewById(2131297721);
        this.f3364n = (Button) viewInflate2.findViewById(2131297713);
        this.f3365o = (Button) viewInflate2.findViewById(2131297720);
        this.f3366p = (Button) viewInflate2.findViewById(2131297716);
        this.f3362l = (Button) viewInflate2.findViewById(2131297715);
        this.f3363m = (Button) viewInflate2.findViewById(2131297709);
        this.f3356f = (TextView) viewInflate2.findViewById(2131297718);
        this.f3357g = (ProgressBar) viewInflate2.findViewById(2131297719);
        this.f3358h = (TextView) viewInflate2.findViewById(2131297712);
        this.f3361k = (LinearLayout) viewInflate2.findViewById(2131297711);
        this.f3359i = (TextView) viewInflate2.findViewById(2131297710);
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        this.f3368s = externalStorageDirectory;
        this.t = externalStorageDirectory;
        this.r = h7.k.f2505o;
        this.e = new x2(this);
        recyclerView.setAdapter(new ConcatAdapter((RecyclerView$Adapter<? extends RecyclerView$ViewHolder>[]) new RecyclerView$Adapter[]{new a3(viewInflate2), this.e, new a3(this.f3360j)}));
        recyclerView.setItemAnimator(null);
        new ItemTouchHelper(new u2(this)).attachToRecyclerView(recyclerView);
        button.setOnClickListener(new r2(this, 0));
        this.f3367q.setOnClickListener(new r2(this, 1));
        this.f3364n.setOnClickListener(new r2(this, 2));
        this.f3365o.setOnClickListener(new r2(this, 3));
        this.f3366p.setOnClickListener(new r2(this, 4));
        this.f3362l.setOnClickListener(new r2(this, 5));
        this.f3363m.setOnClickListener(new r2(this, 6));
        K();
        D(this.t);
        return viewInflate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        h7.k kVar = this.r;
        if (kVar != null) {
            kVar.v(requireContext());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        h7.k kVar = this.r;
        if (kVar != null) {
            requireContext();
            kVar.w();
        }
        super.onStop();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void v() {
        this.w++;
        this.c.clear();
        this.d.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int z(int i9) {
        return Math.round(i9 * requireContext().getResources().getDisplayMetrics().density);
    }
}

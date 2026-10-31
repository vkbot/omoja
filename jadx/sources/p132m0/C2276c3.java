package p132m0;

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
import androidx.appcompat.app.AlertDialog;
import androidx.constraintlayout.core.utils.C0279a;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.ConcatAdapter;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;
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
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p016b1.RunnableC0873n;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1434w;
import p047e0.DialogInterfaceOnClickListenerC1348e0;
import p047e0.RunnableC1375j2;
import p084h7.C1683k;
import p121l0.C2194a;
import p121l0.C2195b;
import p142n0.C2467b;

/* JADX INFO: renamed from: m0.c3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2276c3 extends C2195b {

    /* JADX INFO: renamed from: b */
    public final ArrayList f5967b = new ArrayList();

    /* JADX INFO: renamed from: c */
    public final HashMap f5968c = new HashMap();

    /* JADX INFO: renamed from: d */
    public final HashSet f5969d = new HashSet();

    /* JADX INFO: renamed from: e */
    public C2371x2 f5970e;

    /* JADX INFO: renamed from: f */
    public TextView f5971f;

    /* JADX INFO: renamed from: g */
    public ProgressBar f5972g;

    /* JADX INFO: renamed from: h */
    public TextView f5973h;

    /* JADX INFO: renamed from: i */
    public TextView f5974i;

    /* JADX INFO: renamed from: j */
    public TextView f5975j;

    /* JADX INFO: renamed from: k */
    public LinearLayout f5976k;

    /* JADX INFO: renamed from: l */
    public Button f5977l;

    /* JADX INFO: renamed from: m */
    public Button f5978m;

    /* JADX INFO: renamed from: n */
    public Button f5979n;

    /* JADX INFO: renamed from: o */
    public Button f5980o;

    /* JADX INFO: renamed from: p */
    public Button f5981p;

    /* JADX INFO: renamed from: q */
    public Button f5982q;

    /* JADX INFO: renamed from: r */
    public C1683k f5983r;

    /* JADX INFO: renamed from: s */
    public File f5984s;

    /* JADX INFO: renamed from: t */
    public File f5985t;

    /* JADX INFO: renamed from: u */
    public File f5986u;

    /* JADX INFO: renamed from: v */
    public boolean f5987v;

    /* JADX INFO: renamed from: w */
    public int f5988w;

    /* JADX INFO: renamed from: A */
    public static String m3651A(File file) {
        int i10;
        if (m3652B(file)) {
            return AbstractC1387m.m2421h(new byte[]{121, -53, -92, -45, -105, -78, 88, -7, 113, -44, -70, -112, -120, -65, 93, -93, 121, -43, -80, -51, -111, -72, 93, -93, 104, -38, -73, -44, -97, -74, 92, -96, 121, -55, -73, -41, -105, -89, 92}, new byte[]{24, -69, -44, -65, -2, -47, 57, -115});
        }
        String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(Uri.fromFile(file).toString());
        if (fileExtensionFromUrl == null || fileExtensionFromUrl.length() == 0) {
            String name = file.getName();
            int iLastIndexOf = name.lastIndexOf(46);
            fileExtensionFromUrl = (iLastIndexOf < 0 || (i10 = iLastIndexOf + 1) >= name.length()) ? "" : name.substring(i10);
        }
        String mimeTypeFromExtension = fileExtensionFromUrl.length() == 0 ? null : MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileExtensionFromUrl.toLowerCase(Locale.ROOT));
        return mimeTypeFromExtension == null ? AbstractC1387m.m2421h(new byte[]{-77, -92, 104}, new byte[]{-103, -117, 66, -11, -17, 110, 84, 102}) : mimeTypeFromExtension;
    }

    /* JADX INFO: renamed from: B */
    public static boolean m3652B(File file) {
        return file.getName().toLowerCase(Locale.ROOT).endsWith(AbstractC1387m.m2421h(new byte[]{-31, -125, -82, 113}, new byte[]{-49, -30, -34, 26, 9, -79, -42, 19}));
    }

    /* JADX INFO: renamed from: C */
    public static boolean m3653C(String str) {
        return str.startsWith(AbstractC1387m.m2421h(new byte[]{31, -50, 0, 54, 6, 94, -44, 9, 31}, new byte[]{48, -67, 116, 89, 116, 63, -77, 108})) || str.startsWith(AbstractC1387m.m2421h(new byte[]{5, 34, -60, -82, 115, -75, 123, 125, 67, 46, -11, -88, 43, -9}, new byte[]{42, 79, -86, -38, 92, -40, 30, 25})) || str.startsWith(AbstractC1387m.m2421h(new byte[]{-66, -41, 101, 14, -45, 114, -107, 52, -27, -45, 102, 31, -45}, new byte[]{-111, -70, 11, 122, -4, 0, -32, 90})) || str.startsWith(AbstractC1387m.m2421h(new byte[]{-124, 77, -7, ByteCompanionObject.MAX_VALUE, -92, -8, -56, -20}, new byte[]{-85, 32, -105, 11, -117, -115, -69, -114})) || str.startsWith(AbstractC1387m.m2421h(new byte[]{-9, -6, 112, 60, 124, 115, -118, -20, -9, -4, 119, 49}, new byte[]{-40, -119, 4, 83, 14, 18, -19, -119})) || str.startsWith(AbstractC1387m.m2421h(new byte[]{31, 6, 51, 73, -48, 5, -109, -23, 67, 0}, new byte[]{48, 107, 93, Base64.padSymbol, -1, 112, -9, ByteCompanionObject.MIN_VALUE})) || str.startsWith(AbstractC1387m.m2421h(new byte[]{114, 52, -40, -2, -124, 27, 68, -13, 114, 50, -56, -8, -123, 17}, new byte[]{93, 71, -84, -111, -10, 122, 35, -106})) || str.startsWith(AbstractC1387m.m2421h(new byte[]{-52, -57, 25, 65, 64, -79, 55, 88, -52, -47, 21, 90}, new byte[]{-29, -76, 109, 46, 50, -48, 80, Base64.padSymbol})) || str.startsWith(AbstractC1387m.m2421h(new byte[]{4, 22, 95, -121, -51, 81, 28, -64}, new byte[]{43, 123, 49, -13, -30, 52, 100, -76})) || str.startsWith(AbstractC1387m.m2421h(new byte[]{8, 2, -56, 119, -30, 92, 17, -3, 8, 2, -40, 123, -15, 79, 18}, new byte[]{39, 113, -68, 24, -112, Base64.padSymbol, 118, -104}));
    }

    /* JADX INFO: renamed from: E */
    public static C2271b3 m3654E(File file) throws IOException {
        String str;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
        int i10 = 524288;
        while (true) {
            if (i10 <= 0) {
                break;
            }
            try {
                int i11 = bufferedInputStream.read(bArr, 0, Math.min(8192, i10));
                if (i11 == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i11);
                i10 -= i11;
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
                str = new String(byteArray, Charset.forName(AbstractC1387m.m2421h(new byte[]{3, 16, 103, 1, -122, -122, 8, 94, 69, 75, 60, 84}, new byte[]{116, 121, 9, 101, -23, -15, 123, 115})));
            }
        }
        return new C2271b3(str, file.length() > 524288);
    }

    /* JADX INFO: renamed from: G */
    public static String m3655G(File file) {
        if (file == null) {
            return "";
        }
        try {
            return file.getCanonicalPath();
        } catch (IOException unused) {
            return file.getAbsolutePath();
        }
    }

    /* JADX INFO: renamed from: t */
    public static void m3656t(ArrayList arrayList, HashSet hashSet, File file) {
        if (file != null) {
            try {
                String absolutePath = file.getAbsolutePath();
                if (file.isDirectory() && !absolutePath.contains(AbstractC1387m.m2421h(new byte[]{-110, -5, 30, 50, ByteCompanionObject.MAX_VALUE, 108, -97, 36}, new byte[]{-9, -106, 107, 94, 30, 24, -6, 64})) && !absolutePath.contains(AbstractC1387m.m2421h(new byte[]{36, -29, -19, 27}, new byte[]{87, -122, -127, 125, -113, 56, 15, 8})) && m3653C(absolutePath) && file.listFiles() != null && hashSet.add(m3655G(file))) {
                    arrayList.add(file);
                }
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: renamed from: u */
    public static File m3657u(File file, String str) {
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
        int i10 = 1;
        do {
            file2 = new File(file, String.format(Locale.ROOT, AbstractC1387m.m2421h(new byte[]{51, -2, -50, -61, -81, 13, -31, -74, 51, -23, -76, -45}, new byte[]{22, -115, -111, -96, -64, 125, -104, -23}), str, Integer.valueOf(i10), strSubstring));
            i10++;
        } while (file2.exists());
        return file2;
    }

    /* JADX INFO: renamed from: w */
    public static void m3658w(File file, C2375y2 c2375y2, boolean z9) {
        File[] fileArrListFiles;
        if (file == null || !file.exists() || c2375y2.f6430d || c2375y2.f6431e) {
            return;
        }
        if (!c2375y2.f6427a.add(m3655G(file))) {
            c2375y2.f6430d = true;
            return;
        }
        try {
            fileArrListFiles = file.listFiles();
        } catch (Exception unused) {
            fileArrListFiles = null;
        }
        if (fileArrListFiles == null) {
            if (z9 && c2375y2.f6429c == 0) {
                c2375y2.f6431e = true;
                return;
            } else {
                c2375y2.f6430d = true;
                return;
            }
        }
        for (File file2 : fileArrListFiles) {
            int i10 = c2375y2.f6429c;
            if (i10 >= 50000) {
                c2375y2.f6430d = true;
                return;
            }
            c2375y2.f6429c = i10 + 1;
            if (file2.isDirectory()) {
                m3658w(file2, c2375y2, false);
            } else {
                long length = file2.length();
                if (length > 0) {
                    long j10 = c2375y2.f6428b;
                    if (Long.MAX_VALUE - j10 < length) {
                        c2375y2.f6428b = Long.MAX_VALUE;
                        c2375y2.f6430d = true;
                    } else {
                        c2375y2.f6428b = j10 + length;
                    }
                }
            }
            if (c2375y2.f6430d || c2375y2.f6431e) {
                return;
            }
        }
    }

    /* JADX INFO: renamed from: x */
    public static void m3659x(File file, File file2) {
        if (!file.isDirectory()) {
            File parentFile = file2.getParentFile();
            if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                C2467b.m3820A(parentFile.getAbsolutePath());
                return;
            }
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2));
                try {
                    byte[] bArr = new byte[65536];
                    while (true) {
                        int i10 = bufferedInputStream.read(bArr);
                        if (i10 == -1) {
                            break;
                        } else {
                            bufferedOutputStream.write(bArr, 0, i10);
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
                C2467b.m3820A(file2.getAbsolutePath());
                return;
            }
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                C2467b.m3820A(file.getAbsolutePath());
                return;
            }
            for (File file3 : fileArrListFiles) {
                m3659x(file3, new File(file2, file3.getName()));
            }
        }
        long jLastModified = file.lastModified();
        if (jLastModified > 0) {
            file2.setLastModified(jLastModified);
        }
    }

    /* JADX INFO: renamed from: y */
    public static void m3660y(File file) throws IOException {
        if (file.exists()) {
            if (file.isDirectory()) {
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles == null) {
                    C2467b.m3820A(file.getAbsolutePath());
                    return;
                }
                for (File file2 : fileArrListFiles) {
                    m3660y(file2);
                }
            }
            if (file.delete()) {
                return;
            }
            C2467b.m3820A(file.getAbsolutePath());
        }
    }

    /* JADX INFO: renamed from: D */
    public final void m3661D(File file) {
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
            m3664I(getString(R.string.user_file_manager_open_root_error));
            return;
        }
        try {
            fileArrListFiles = absoluteFile.listFiles();
        } catch (Exception unused2) {
            fileArrListFiles = null;
        }
        this.f5985t = absoluteFile;
        if (this.f5972g != null && this.f5971f != null) {
            try {
                StatFs statFs = new StatFs(m3655G(absoluteFile));
                long totalBytes = statFs.getTotalBytes();
                long availableBytes = statFs.getAvailableBytes();
                long jMax = Math.max(0L, totalBytes - availableBytes);
                int iMin = totalBytes > 0 ? (int) Math.min(1000L, (jMax * 1000) / totalBytes) : 0;
                this.f5972g.setMax(1000);
                this.f5972g.setProgress(iMin);
                this.f5971f.setText(getString(R.string.user_file_manager_storage_format, Formatter.formatShortFileSize(requireContext(), jMax), Formatter.formatShortFileSize(requireContext(), totalBytes), Formatter.formatShortFileSize(requireContext(), availableBytes)));
            } catch (Exception unused3) {
                this.f5972g.setMax(1000);
                this.f5972g.setProgress(0);
                this.f5971f.setText(R.string.user_file_manager_storage_unknown);
            }
        }
        this.f5973h.setText(getString(R.string.user_file_manager_path_format, m3655G(this.f5984s), m3655G(this.f5985t)));
        ArrayList arrayList = this.f5967b;
        arrayList.clear();
        if (fileArrListFiles != null) {
            Collections.addAll(arrayList, fileArrListFiles);
            Collections.sort(arrayList, new C0279a(9));
            m3664I(arrayList.isEmpty() ? getString(R.string.user_file_manager_empty) : getString(R.string.user_file_manager_swipe_hint));
        } else {
            m3664I(getString(R.string.user_file_manager_no_access, m3655G(this.f5985t)));
        }
        this.f5970e.notifyDataSetChanged();
        m3665J();
    }

    /* JADX INFO: renamed from: F */
    public final void m3662F(Runnable runnable) {
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        activity.runOnUiThread(new RunnableC1375j2(21, this, runnable));
    }

    /* JADX INFO: renamed from: H */
    public final void m3663H(String str, boolean z9) {
        this.f5987v = z9;
        if (str != null) {
            m3664I(str);
        }
        m3665J();
        C2371x2 c2371x2 = this.f5970e;
        if (c2371x2 != null) {
            c2371x2.notifyDataSetChanged();
        }
    }

    /* JADX INFO: renamed from: I */
    public final void m3664I(String str) {
        TextView textView = this.f5975j;
        if (textView != null) {
            if (str == null) {
                str = "";
            }
            textView.setText(str);
        }
    }

    /* JADX INFO: renamed from: J */
    public final void m3665J() {
        boolean z9 = this.f5987v;
        boolean z10 = !z9;
        Button button = this.f5982q;
        if (button != null) {
            button.setEnabled(z10);
        }
        Button button2 = this.f5979n;
        if (button2 != null) {
            button2.setEnabled(z10);
        }
        Button button3 = this.f5980o;
        if (button3 != null) {
            button3.setEnabled(z10);
        }
        Button button4 = this.f5981p;
        if (button4 != null) {
            button4.setEnabled(z10);
        }
        Button button5 = this.f5977l;
        boolean z11 = false;
        if (button5 != null) {
            button5.setEnabled((z9 || this.f5986u == null || this.f5985t == null) ? false : true);
        }
        Button button6 = this.f5978m;
        if (button6 != null) {
            if (!z9 && this.f5986u != null) {
                z11 = true;
            }
            button6.setEnabled(z11);
        }
    }

    /* JADX INFO: renamed from: K */
    public final void m3666K() {
        boolean z9 = this.f5986u != null;
        LinearLayout linearLayout = this.f5976k;
        if (linearLayout != null) {
            linearLayout.setVisibility(z9 ? 0 : 8);
        }
        TextView textView = this.f5974i;
        if (textView != null && z9) {
            textView.setText(getString(R.string.user_file_manager_buffer_format, m3655G(this.f5986u)));
        }
        m3665J();
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        final int i10 = 0;
        View viewInflate = layoutInflater.inflate(R.layout.fragment_user_file_manager, viewGroup, false);
        RecyclerView recyclerView = (RecyclerView) viewInflate;
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
        View viewInflate2 = layoutInflater.inflate(R.layout.user_file_manager_header, (ViewGroup) recyclerView, false);
        this.f5975j = (TextView) layoutInflater.inflate(R.layout.user_file_manager_footer, (ViewGroup) recyclerView, false);
        Button button = (Button) viewInflate2.findViewById(R.id.userFileManagerBackButton);
        this.f5982q = (Button) viewInflate2.findViewById(R.id.userFileManagerUsbButton);
        this.f5979n = (Button) viewInflate2.findViewById(R.id.userFileManagerHomeButton);
        this.f5980o = (Button) viewInflate2.findViewById(R.id.userFileManagerUpButton);
        this.f5981p = (Button) viewInflate2.findViewById(R.id.userFileManagerRefreshButton);
        this.f5977l = (Button) viewInflate2.findViewById(R.id.userFileManagerPasteButton);
        this.f5978m = (Button) viewInflate2.findViewById(R.id.userFileManagerCancelCopyButton);
        this.f5971f = (TextView) viewInflate2.findViewById(R.id.userFileManagerStorageInfo);
        this.f5972g = (ProgressBar) viewInflate2.findViewById(R.id.userFileManagerStorageProgress);
        this.f5973h = (TextView) viewInflate2.findViewById(R.id.userFileManagerCurrentPath);
        this.f5976k = (LinearLayout) viewInflate2.findViewById(R.id.userFileManagerClipboardPanel);
        this.f5974i = (TextView) viewInflate2.findViewById(R.id.userFileManagerClipboard);
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        this.f5984s = externalStorageDirectory;
        this.f5985t = externalStorageDirectory;
        this.f5983r = C1683k.f4317o;
        this.f5970e = new C2371x2(this);
        final int i11 = 3;
        final int i12 = 1;
        final int i13 = 2;
        recyclerView.setAdapter(new ConcatAdapter((RecyclerView.Adapter<? extends RecyclerView.ViewHolder>[]) new RecyclerView.Adapter[]{new C2266a3(viewInflate2), this.f5970e, new C2266a3(this.f5975j)}));
        recyclerView.setItemAnimator(null);
        new ItemTouchHelper(new C2359u2(this)).attachToRecyclerView(recyclerView);
        button.setOnClickListener(new View.OnClickListener(this) { // from class: m0.r2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2276c3 f6337c;

            {
                this.f6337c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i14 = i10;
                C2276c3 c2276c3 = this.f6337c;
                switch (i14) {
                    case 0:
                        if (c2276c3.getParentFragment() instanceof C2194a) {
                            ((C2194a) c2276c3.getParentFragment()).dismiss();
                        } else {
                            FragmentActivity activity = c2276c3.getActivity();
                            if (activity != null) {
                                activity.finish();
                            }
                        }
                        break;
                    case 1:
                        C1683k c1683k = c2276c3.f5983r;
                        if (c1683k != null) {
                            c1683k.m2797o(c2276c3.requireContext());
                        }
                        ArrayList arrayList = new ArrayList();
                        HashSet hashSet = new HashSet();
                        try {
                            C1683k c1683k2 = c2276c3.f5983r;
                            if (c1683k2 != null) {
                                ArrayList arrayListM2795e = c1683k2.m2795e();
                                int size = arrayListM2795e.size();
                                int i15 = 0;
                                while (i15 < size) {
                                    Object obj = arrayListM2795e.get(i15);
                                    i15++;
                                    C2276c3.m3656t(arrayList, hashSet, (File) obj);
                                }
                            }
                        } catch (Exception unused) {
                        }
                        try {
                            for (File file : ContextCompat.getExternalFilesDirs(c2276c3.requireContext(), null)) {
                                if (file != null) {
                                    String absolutePath = file.getAbsolutePath();
                                    int iIndexOf = absolutePath.indexOf(AbstractC1387m.m2421h(new byte[]{-41, -87, -84, -122, -86, 16, -123, -31}, new byte[]{-8, -24, -62, -30, -40, ByteCompanionObject.MAX_VALUE, -20, -123}));
                                    if (absolutePath.contains(AbstractC1387m.m2421h(new byte[]{11, -77, -33, 9, -72, 64, -22, 0, 11}, new byte[]{36, -64, -85, 102, -54, 33, -115, 101})) && iIndexOf > 0) {
                                        C2276c3.m3656t(arrayList, hashSet, new File(absolutePath.substring(0, iIndexOf)));
                                    }
                                }
                            }
                        } catch (Exception unused2) {
                        }
                        try {
                            File[] fileArrListFiles = new File(AbstractC1387m.m2421h(new byte[]{-69, -24, 124, -73, 105, -88, -80, 123, -69}, new byte[]{-108, -101, 8, -40, 27, -55, -41, 30})).listFiles();
                            if (fileArrListFiles != null) {
                                for (File file2 : fileArrListFiles) {
                                    C2276c3.m3656t(arrayList, hashSet, file2);
                                }
                            }
                        } catch (Exception unused3) {
                        }
                        if (arrayList.isEmpty()) {
                            c2276c3.m3664I(c2276c3.getString(R.string.usb_not));
                        } else {
                            String[] strArr = new String[arrayList.size()];
                            for (int i16 = 0; i16 < arrayList.size(); i16++) {
                                strArr[i16] = ((File) arrayList.get(i16)).getAbsolutePath();
                            }
                            new AlertDialog.Builder(c2276c3.requireContext(), R.style.ThemeOverlay_JCarTools_ModernAlert).setTitle(c2276c3.getString(R.string.usb_chos)).setItems(strArr, new DialogInterfaceOnClickListenerC1348e0(7, c2276c3, arrayList)).show();
                        }
                        break;
                    case 2:
                        c2276c3.m3661D(c2276c3.f5984s);
                        break;
                    case 3:
                        File file3 = c2276c3.f5985t;
                        if (file3 == null || file3.getParentFile() == null) {
                            c2276c3.m3664I(c2276c3.getString(R.string.uje_tut));
                        } else {
                            c2276c3.m3661D(c2276c3.f5985t.getParentFile());
                        }
                        break;
                    case 4:
                        C1683k c1683k3 = c2276c3.f5983r;
                        if (c1683k3 != null) {
                            c1683k3.m2797o(c2276c3.requireContext());
                        }
                        c2276c3.m3667v();
                        c2276c3.m3661D(c2276c3.f5985t);
                        break;
                    case 5:
                        File file4 = c2276c3.f5986u;
                        File file5 = c2276c3.f5985t;
                        if (!c2276c3.f5987v && file4 != null && file5 != null) {
                            if (file4.exists()) {
                                c2276c3.m3663H(c2276c3.getString(R.string.user_file_manager_copying), true);
                                AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{-31, 52, -69, 9, 85, 3, 13, 20, -7, 38, -80, 26, 116, 15, 19, 55, -58, 38, -71, 22, 118, 4, 21}, new byte[]{-76, 71, -34, 123, 19, 106, 97, 113})).execute(new RunnableC0873n(c2276c3, file5, file4, 10));
                            } else {
                                c2276c3.f5986u = null;
                                c2276c3.m3666K();
                                c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_open_root_error));
                            }
                            break;
                        }
                        break;
                    default:
                        c2276c3.f5986u = null;
                        c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_copy_cancelled));
                        c2276c3.m3666K();
                        break;
                }
            }
        });
        this.f5982q.setOnClickListener(new View.OnClickListener(this) { // from class: m0.r2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2276c3 f6337c;

            {
                this.f6337c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i14 = i12;
                C2276c3 c2276c3 = this.f6337c;
                switch (i14) {
                    case 0:
                        if (c2276c3.getParentFragment() instanceof C2194a) {
                            ((C2194a) c2276c3.getParentFragment()).dismiss();
                        } else {
                            FragmentActivity activity = c2276c3.getActivity();
                            if (activity != null) {
                                activity.finish();
                            }
                        }
                        break;
                    case 1:
                        C1683k c1683k = c2276c3.f5983r;
                        if (c1683k != null) {
                            c1683k.m2797o(c2276c3.requireContext());
                        }
                        ArrayList arrayList = new ArrayList();
                        HashSet hashSet = new HashSet();
                        try {
                            C1683k c1683k2 = c2276c3.f5983r;
                            if (c1683k2 != null) {
                                ArrayList arrayListM2795e = c1683k2.m2795e();
                                int size = arrayListM2795e.size();
                                int i15 = 0;
                                while (i15 < size) {
                                    Object obj = arrayListM2795e.get(i15);
                                    i15++;
                                    C2276c3.m3656t(arrayList, hashSet, (File) obj);
                                }
                            }
                        } catch (Exception unused) {
                        }
                        try {
                            for (File file : ContextCompat.getExternalFilesDirs(c2276c3.requireContext(), null)) {
                                if (file != null) {
                                    String absolutePath = file.getAbsolutePath();
                                    int iIndexOf = absolutePath.indexOf(AbstractC1387m.m2421h(new byte[]{-41, -87, -84, -122, -86, 16, -123, -31}, new byte[]{-8, -24, -62, -30, -40, ByteCompanionObject.MAX_VALUE, -20, -123}));
                                    if (absolutePath.contains(AbstractC1387m.m2421h(new byte[]{11, -77, -33, 9, -72, 64, -22, 0, 11}, new byte[]{36, -64, -85, 102, -54, 33, -115, 101})) && iIndexOf > 0) {
                                        C2276c3.m3656t(arrayList, hashSet, new File(absolutePath.substring(0, iIndexOf)));
                                    }
                                }
                            }
                        } catch (Exception unused2) {
                        }
                        try {
                            File[] fileArrListFiles = new File(AbstractC1387m.m2421h(new byte[]{-69, -24, 124, -73, 105, -88, -80, 123, -69}, new byte[]{-108, -101, 8, -40, 27, -55, -41, 30})).listFiles();
                            if (fileArrListFiles != null) {
                                for (File file2 : fileArrListFiles) {
                                    C2276c3.m3656t(arrayList, hashSet, file2);
                                }
                            }
                        } catch (Exception unused3) {
                        }
                        if (arrayList.isEmpty()) {
                            c2276c3.m3664I(c2276c3.getString(R.string.usb_not));
                        } else {
                            String[] strArr = new String[arrayList.size()];
                            for (int i16 = 0; i16 < arrayList.size(); i16++) {
                                strArr[i16] = ((File) arrayList.get(i16)).getAbsolutePath();
                            }
                            new AlertDialog.Builder(c2276c3.requireContext(), R.style.ThemeOverlay_JCarTools_ModernAlert).setTitle(c2276c3.getString(R.string.usb_chos)).setItems(strArr, new DialogInterfaceOnClickListenerC1348e0(7, c2276c3, arrayList)).show();
                        }
                        break;
                    case 2:
                        c2276c3.m3661D(c2276c3.f5984s);
                        break;
                    case 3:
                        File file3 = c2276c3.f5985t;
                        if (file3 == null || file3.getParentFile() == null) {
                            c2276c3.m3664I(c2276c3.getString(R.string.uje_tut));
                        } else {
                            c2276c3.m3661D(c2276c3.f5985t.getParentFile());
                        }
                        break;
                    case 4:
                        C1683k c1683k3 = c2276c3.f5983r;
                        if (c1683k3 != null) {
                            c1683k3.m2797o(c2276c3.requireContext());
                        }
                        c2276c3.m3667v();
                        c2276c3.m3661D(c2276c3.f5985t);
                        break;
                    case 5:
                        File file4 = c2276c3.f5986u;
                        File file5 = c2276c3.f5985t;
                        if (!c2276c3.f5987v && file4 != null && file5 != null) {
                            if (file4.exists()) {
                                c2276c3.m3663H(c2276c3.getString(R.string.user_file_manager_copying), true);
                                AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{-31, 52, -69, 9, 85, 3, 13, 20, -7, 38, -80, 26, 116, 15, 19, 55, -58, 38, -71, 22, 118, 4, 21}, new byte[]{-76, 71, -34, 123, 19, 106, 97, 113})).execute(new RunnableC0873n(c2276c3, file5, file4, 10));
                            } else {
                                c2276c3.f5986u = null;
                                c2276c3.m3666K();
                                c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_open_root_error));
                            }
                            break;
                        }
                        break;
                    default:
                        c2276c3.f5986u = null;
                        c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_copy_cancelled));
                        c2276c3.m3666K();
                        break;
                }
            }
        });
        this.f5979n.setOnClickListener(new View.OnClickListener(this) { // from class: m0.r2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2276c3 f6337c;

            {
                this.f6337c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i14 = i13;
                C2276c3 c2276c3 = this.f6337c;
                switch (i14) {
                    case 0:
                        if (c2276c3.getParentFragment() instanceof C2194a) {
                            ((C2194a) c2276c3.getParentFragment()).dismiss();
                        } else {
                            FragmentActivity activity = c2276c3.getActivity();
                            if (activity != null) {
                                activity.finish();
                            }
                        }
                        break;
                    case 1:
                        C1683k c1683k = c2276c3.f5983r;
                        if (c1683k != null) {
                            c1683k.m2797o(c2276c3.requireContext());
                        }
                        ArrayList arrayList = new ArrayList();
                        HashSet hashSet = new HashSet();
                        try {
                            C1683k c1683k2 = c2276c3.f5983r;
                            if (c1683k2 != null) {
                                ArrayList arrayListM2795e = c1683k2.m2795e();
                                int size = arrayListM2795e.size();
                                int i15 = 0;
                                while (i15 < size) {
                                    Object obj = arrayListM2795e.get(i15);
                                    i15++;
                                    C2276c3.m3656t(arrayList, hashSet, (File) obj);
                                }
                            }
                        } catch (Exception unused) {
                        }
                        try {
                            for (File file : ContextCompat.getExternalFilesDirs(c2276c3.requireContext(), null)) {
                                if (file != null) {
                                    String absolutePath = file.getAbsolutePath();
                                    int iIndexOf = absolutePath.indexOf(AbstractC1387m.m2421h(new byte[]{-41, -87, -84, -122, -86, 16, -123, -31}, new byte[]{-8, -24, -62, -30, -40, ByteCompanionObject.MAX_VALUE, -20, -123}));
                                    if (absolutePath.contains(AbstractC1387m.m2421h(new byte[]{11, -77, -33, 9, -72, 64, -22, 0, 11}, new byte[]{36, -64, -85, 102, -54, 33, -115, 101})) && iIndexOf > 0) {
                                        C2276c3.m3656t(arrayList, hashSet, new File(absolutePath.substring(0, iIndexOf)));
                                    }
                                }
                            }
                        } catch (Exception unused2) {
                        }
                        try {
                            File[] fileArrListFiles = new File(AbstractC1387m.m2421h(new byte[]{-69, -24, 124, -73, 105, -88, -80, 123, -69}, new byte[]{-108, -101, 8, -40, 27, -55, -41, 30})).listFiles();
                            if (fileArrListFiles != null) {
                                for (File file2 : fileArrListFiles) {
                                    C2276c3.m3656t(arrayList, hashSet, file2);
                                }
                            }
                        } catch (Exception unused3) {
                        }
                        if (arrayList.isEmpty()) {
                            c2276c3.m3664I(c2276c3.getString(R.string.usb_not));
                        } else {
                            String[] strArr = new String[arrayList.size()];
                            for (int i16 = 0; i16 < arrayList.size(); i16++) {
                                strArr[i16] = ((File) arrayList.get(i16)).getAbsolutePath();
                            }
                            new AlertDialog.Builder(c2276c3.requireContext(), R.style.ThemeOverlay_JCarTools_ModernAlert).setTitle(c2276c3.getString(R.string.usb_chos)).setItems(strArr, new DialogInterfaceOnClickListenerC1348e0(7, c2276c3, arrayList)).show();
                        }
                        break;
                    case 2:
                        c2276c3.m3661D(c2276c3.f5984s);
                        break;
                    case 3:
                        File file3 = c2276c3.f5985t;
                        if (file3 == null || file3.getParentFile() == null) {
                            c2276c3.m3664I(c2276c3.getString(R.string.uje_tut));
                        } else {
                            c2276c3.m3661D(c2276c3.f5985t.getParentFile());
                        }
                        break;
                    case 4:
                        C1683k c1683k3 = c2276c3.f5983r;
                        if (c1683k3 != null) {
                            c1683k3.m2797o(c2276c3.requireContext());
                        }
                        c2276c3.m3667v();
                        c2276c3.m3661D(c2276c3.f5985t);
                        break;
                    case 5:
                        File file4 = c2276c3.f5986u;
                        File file5 = c2276c3.f5985t;
                        if (!c2276c3.f5987v && file4 != null && file5 != null) {
                            if (file4.exists()) {
                                c2276c3.m3663H(c2276c3.getString(R.string.user_file_manager_copying), true);
                                AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{-31, 52, -69, 9, 85, 3, 13, 20, -7, 38, -80, 26, 116, 15, 19, 55, -58, 38, -71, 22, 118, 4, 21}, new byte[]{-76, 71, -34, 123, 19, 106, 97, 113})).execute(new RunnableC0873n(c2276c3, file5, file4, 10));
                            } else {
                                c2276c3.f5986u = null;
                                c2276c3.m3666K();
                                c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_open_root_error));
                            }
                            break;
                        }
                        break;
                    default:
                        c2276c3.f5986u = null;
                        c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_copy_cancelled));
                        c2276c3.m3666K();
                        break;
                }
            }
        });
        this.f5980o.setOnClickListener(new View.OnClickListener(this) { // from class: m0.r2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2276c3 f6337c;

            {
                this.f6337c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i14 = i11;
                C2276c3 c2276c3 = this.f6337c;
                switch (i14) {
                    case 0:
                        if (c2276c3.getParentFragment() instanceof C2194a) {
                            ((C2194a) c2276c3.getParentFragment()).dismiss();
                        } else {
                            FragmentActivity activity = c2276c3.getActivity();
                            if (activity != null) {
                                activity.finish();
                            }
                        }
                        break;
                    case 1:
                        C1683k c1683k = c2276c3.f5983r;
                        if (c1683k != null) {
                            c1683k.m2797o(c2276c3.requireContext());
                        }
                        ArrayList arrayList = new ArrayList();
                        HashSet hashSet = new HashSet();
                        try {
                            C1683k c1683k2 = c2276c3.f5983r;
                            if (c1683k2 != null) {
                                ArrayList arrayListM2795e = c1683k2.m2795e();
                                int size = arrayListM2795e.size();
                                int i15 = 0;
                                while (i15 < size) {
                                    Object obj = arrayListM2795e.get(i15);
                                    i15++;
                                    C2276c3.m3656t(arrayList, hashSet, (File) obj);
                                }
                            }
                        } catch (Exception unused) {
                        }
                        try {
                            for (File file : ContextCompat.getExternalFilesDirs(c2276c3.requireContext(), null)) {
                                if (file != null) {
                                    String absolutePath = file.getAbsolutePath();
                                    int iIndexOf = absolutePath.indexOf(AbstractC1387m.m2421h(new byte[]{-41, -87, -84, -122, -86, 16, -123, -31}, new byte[]{-8, -24, -62, -30, -40, ByteCompanionObject.MAX_VALUE, -20, -123}));
                                    if (absolutePath.contains(AbstractC1387m.m2421h(new byte[]{11, -77, -33, 9, -72, 64, -22, 0, 11}, new byte[]{36, -64, -85, 102, -54, 33, -115, 101})) && iIndexOf > 0) {
                                        C2276c3.m3656t(arrayList, hashSet, new File(absolutePath.substring(0, iIndexOf)));
                                    }
                                }
                            }
                        } catch (Exception unused2) {
                        }
                        try {
                            File[] fileArrListFiles = new File(AbstractC1387m.m2421h(new byte[]{-69, -24, 124, -73, 105, -88, -80, 123, -69}, new byte[]{-108, -101, 8, -40, 27, -55, -41, 30})).listFiles();
                            if (fileArrListFiles != null) {
                                for (File file2 : fileArrListFiles) {
                                    C2276c3.m3656t(arrayList, hashSet, file2);
                                }
                            }
                        } catch (Exception unused3) {
                        }
                        if (arrayList.isEmpty()) {
                            c2276c3.m3664I(c2276c3.getString(R.string.usb_not));
                        } else {
                            String[] strArr = new String[arrayList.size()];
                            for (int i16 = 0; i16 < arrayList.size(); i16++) {
                                strArr[i16] = ((File) arrayList.get(i16)).getAbsolutePath();
                            }
                            new AlertDialog.Builder(c2276c3.requireContext(), R.style.ThemeOverlay_JCarTools_ModernAlert).setTitle(c2276c3.getString(R.string.usb_chos)).setItems(strArr, new DialogInterfaceOnClickListenerC1348e0(7, c2276c3, arrayList)).show();
                        }
                        break;
                    case 2:
                        c2276c3.m3661D(c2276c3.f5984s);
                        break;
                    case 3:
                        File file3 = c2276c3.f5985t;
                        if (file3 == null || file3.getParentFile() == null) {
                            c2276c3.m3664I(c2276c3.getString(R.string.uje_tut));
                        } else {
                            c2276c3.m3661D(c2276c3.f5985t.getParentFile());
                        }
                        break;
                    case 4:
                        C1683k c1683k3 = c2276c3.f5983r;
                        if (c1683k3 != null) {
                            c1683k3.m2797o(c2276c3.requireContext());
                        }
                        c2276c3.m3667v();
                        c2276c3.m3661D(c2276c3.f5985t);
                        break;
                    case 5:
                        File file4 = c2276c3.f5986u;
                        File file5 = c2276c3.f5985t;
                        if (!c2276c3.f5987v && file4 != null && file5 != null) {
                            if (file4.exists()) {
                                c2276c3.m3663H(c2276c3.getString(R.string.user_file_manager_copying), true);
                                AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{-31, 52, -69, 9, 85, 3, 13, 20, -7, 38, -80, 26, 116, 15, 19, 55, -58, 38, -71, 22, 118, 4, 21}, new byte[]{-76, 71, -34, 123, 19, 106, 97, 113})).execute(new RunnableC0873n(c2276c3, file5, file4, 10));
                            } else {
                                c2276c3.f5986u = null;
                                c2276c3.m3666K();
                                c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_open_root_error));
                            }
                            break;
                        }
                        break;
                    default:
                        c2276c3.f5986u = null;
                        c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_copy_cancelled));
                        c2276c3.m3666K();
                        break;
                }
            }
        });
        final int i14 = 4;
        this.f5981p.setOnClickListener(new View.OnClickListener(this) { // from class: m0.r2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2276c3 f6337c;

            {
                this.f6337c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i15 = i14;
                C2276c3 c2276c3 = this.f6337c;
                switch (i15) {
                    case 0:
                        if (c2276c3.getParentFragment() instanceof C2194a) {
                            ((C2194a) c2276c3.getParentFragment()).dismiss();
                        } else {
                            FragmentActivity activity = c2276c3.getActivity();
                            if (activity != null) {
                                activity.finish();
                            }
                        }
                        break;
                    case 1:
                        C1683k c1683k = c2276c3.f5983r;
                        if (c1683k != null) {
                            c1683k.m2797o(c2276c3.requireContext());
                        }
                        ArrayList arrayList = new ArrayList();
                        HashSet hashSet = new HashSet();
                        try {
                            C1683k c1683k2 = c2276c3.f5983r;
                            if (c1683k2 != null) {
                                ArrayList arrayListM2795e = c1683k2.m2795e();
                                int size = arrayListM2795e.size();
                                int i16 = 0;
                                while (i16 < size) {
                                    Object obj = arrayListM2795e.get(i16);
                                    i16++;
                                    C2276c3.m3656t(arrayList, hashSet, (File) obj);
                                }
                            }
                        } catch (Exception unused) {
                        }
                        try {
                            for (File file : ContextCompat.getExternalFilesDirs(c2276c3.requireContext(), null)) {
                                if (file != null) {
                                    String absolutePath = file.getAbsolutePath();
                                    int iIndexOf = absolutePath.indexOf(AbstractC1387m.m2421h(new byte[]{-41, -87, -84, -122, -86, 16, -123, -31}, new byte[]{-8, -24, -62, -30, -40, ByteCompanionObject.MAX_VALUE, -20, -123}));
                                    if (absolutePath.contains(AbstractC1387m.m2421h(new byte[]{11, -77, -33, 9, -72, 64, -22, 0, 11}, new byte[]{36, -64, -85, 102, -54, 33, -115, 101})) && iIndexOf > 0) {
                                        C2276c3.m3656t(arrayList, hashSet, new File(absolutePath.substring(0, iIndexOf)));
                                    }
                                }
                            }
                        } catch (Exception unused2) {
                        }
                        try {
                            File[] fileArrListFiles = new File(AbstractC1387m.m2421h(new byte[]{-69, -24, 124, -73, 105, -88, -80, 123, -69}, new byte[]{-108, -101, 8, -40, 27, -55, -41, 30})).listFiles();
                            if (fileArrListFiles != null) {
                                for (File file2 : fileArrListFiles) {
                                    C2276c3.m3656t(arrayList, hashSet, file2);
                                }
                            }
                        } catch (Exception unused3) {
                        }
                        if (arrayList.isEmpty()) {
                            c2276c3.m3664I(c2276c3.getString(R.string.usb_not));
                        } else {
                            String[] strArr = new String[arrayList.size()];
                            for (int i17 = 0; i17 < arrayList.size(); i17++) {
                                strArr[i17] = ((File) arrayList.get(i17)).getAbsolutePath();
                            }
                            new AlertDialog.Builder(c2276c3.requireContext(), R.style.ThemeOverlay_JCarTools_ModernAlert).setTitle(c2276c3.getString(R.string.usb_chos)).setItems(strArr, new DialogInterfaceOnClickListenerC1348e0(7, c2276c3, arrayList)).show();
                        }
                        break;
                    case 2:
                        c2276c3.m3661D(c2276c3.f5984s);
                        break;
                    case 3:
                        File file3 = c2276c3.f5985t;
                        if (file3 == null || file3.getParentFile() == null) {
                            c2276c3.m3664I(c2276c3.getString(R.string.uje_tut));
                        } else {
                            c2276c3.m3661D(c2276c3.f5985t.getParentFile());
                        }
                        break;
                    case 4:
                        C1683k c1683k3 = c2276c3.f5983r;
                        if (c1683k3 != null) {
                            c1683k3.m2797o(c2276c3.requireContext());
                        }
                        c2276c3.m3667v();
                        c2276c3.m3661D(c2276c3.f5985t);
                        break;
                    case 5:
                        File file4 = c2276c3.f5986u;
                        File file5 = c2276c3.f5985t;
                        if (!c2276c3.f5987v && file4 != null && file5 != null) {
                            if (file4.exists()) {
                                c2276c3.m3663H(c2276c3.getString(R.string.user_file_manager_copying), true);
                                AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{-31, 52, -69, 9, 85, 3, 13, 20, -7, 38, -80, 26, 116, 15, 19, 55, -58, 38, -71, 22, 118, 4, 21}, new byte[]{-76, 71, -34, 123, 19, 106, 97, 113})).execute(new RunnableC0873n(c2276c3, file5, file4, 10));
                            } else {
                                c2276c3.f5986u = null;
                                c2276c3.m3666K();
                                c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_open_root_error));
                            }
                            break;
                        }
                        break;
                    default:
                        c2276c3.f5986u = null;
                        c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_copy_cancelled));
                        c2276c3.m3666K();
                        break;
                }
            }
        });
        final int i15 = 5;
        this.f5977l.setOnClickListener(new View.OnClickListener(this) { // from class: m0.r2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2276c3 f6337c;

            {
                this.f6337c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i16 = i15;
                C2276c3 c2276c3 = this.f6337c;
                switch (i16) {
                    case 0:
                        if (c2276c3.getParentFragment() instanceof C2194a) {
                            ((C2194a) c2276c3.getParentFragment()).dismiss();
                        } else {
                            FragmentActivity activity = c2276c3.getActivity();
                            if (activity != null) {
                                activity.finish();
                            }
                        }
                        break;
                    case 1:
                        C1683k c1683k = c2276c3.f5983r;
                        if (c1683k != null) {
                            c1683k.m2797o(c2276c3.requireContext());
                        }
                        ArrayList arrayList = new ArrayList();
                        HashSet hashSet = new HashSet();
                        try {
                            C1683k c1683k2 = c2276c3.f5983r;
                            if (c1683k2 != null) {
                                ArrayList arrayListM2795e = c1683k2.m2795e();
                                int size = arrayListM2795e.size();
                                int i17 = 0;
                                while (i17 < size) {
                                    Object obj = arrayListM2795e.get(i17);
                                    i17++;
                                    C2276c3.m3656t(arrayList, hashSet, (File) obj);
                                }
                            }
                        } catch (Exception unused) {
                        }
                        try {
                            for (File file : ContextCompat.getExternalFilesDirs(c2276c3.requireContext(), null)) {
                                if (file != null) {
                                    String absolutePath = file.getAbsolutePath();
                                    int iIndexOf = absolutePath.indexOf(AbstractC1387m.m2421h(new byte[]{-41, -87, -84, -122, -86, 16, -123, -31}, new byte[]{-8, -24, -62, -30, -40, ByteCompanionObject.MAX_VALUE, -20, -123}));
                                    if (absolutePath.contains(AbstractC1387m.m2421h(new byte[]{11, -77, -33, 9, -72, 64, -22, 0, 11}, new byte[]{36, -64, -85, 102, -54, 33, -115, 101})) && iIndexOf > 0) {
                                        C2276c3.m3656t(arrayList, hashSet, new File(absolutePath.substring(0, iIndexOf)));
                                    }
                                }
                            }
                        } catch (Exception unused2) {
                        }
                        try {
                            File[] fileArrListFiles = new File(AbstractC1387m.m2421h(new byte[]{-69, -24, 124, -73, 105, -88, -80, 123, -69}, new byte[]{-108, -101, 8, -40, 27, -55, -41, 30})).listFiles();
                            if (fileArrListFiles != null) {
                                for (File file2 : fileArrListFiles) {
                                    C2276c3.m3656t(arrayList, hashSet, file2);
                                }
                            }
                        } catch (Exception unused3) {
                        }
                        if (arrayList.isEmpty()) {
                            c2276c3.m3664I(c2276c3.getString(R.string.usb_not));
                        } else {
                            String[] strArr = new String[arrayList.size()];
                            for (int i18 = 0; i18 < arrayList.size(); i18++) {
                                strArr[i18] = ((File) arrayList.get(i18)).getAbsolutePath();
                            }
                            new AlertDialog.Builder(c2276c3.requireContext(), R.style.ThemeOverlay_JCarTools_ModernAlert).setTitle(c2276c3.getString(R.string.usb_chos)).setItems(strArr, new DialogInterfaceOnClickListenerC1348e0(7, c2276c3, arrayList)).show();
                        }
                        break;
                    case 2:
                        c2276c3.m3661D(c2276c3.f5984s);
                        break;
                    case 3:
                        File file3 = c2276c3.f5985t;
                        if (file3 == null || file3.getParentFile() == null) {
                            c2276c3.m3664I(c2276c3.getString(R.string.uje_tut));
                        } else {
                            c2276c3.m3661D(c2276c3.f5985t.getParentFile());
                        }
                        break;
                    case 4:
                        C1683k c1683k3 = c2276c3.f5983r;
                        if (c1683k3 != null) {
                            c1683k3.m2797o(c2276c3.requireContext());
                        }
                        c2276c3.m3667v();
                        c2276c3.m3661D(c2276c3.f5985t);
                        break;
                    case 5:
                        File file4 = c2276c3.f5986u;
                        File file5 = c2276c3.f5985t;
                        if (!c2276c3.f5987v && file4 != null && file5 != null) {
                            if (file4.exists()) {
                                c2276c3.m3663H(c2276c3.getString(R.string.user_file_manager_copying), true);
                                AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{-31, 52, -69, 9, 85, 3, 13, 20, -7, 38, -80, 26, 116, 15, 19, 55, -58, 38, -71, 22, 118, 4, 21}, new byte[]{-76, 71, -34, 123, 19, 106, 97, 113})).execute(new RunnableC0873n(c2276c3, file5, file4, 10));
                            } else {
                                c2276c3.f5986u = null;
                                c2276c3.m3666K();
                                c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_open_root_error));
                            }
                            break;
                        }
                        break;
                    default:
                        c2276c3.f5986u = null;
                        c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_copy_cancelled));
                        c2276c3.m3666K();
                        break;
                }
            }
        });
        final int i16 = 6;
        this.f5978m.setOnClickListener(new View.OnClickListener(this) { // from class: m0.r2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2276c3 f6337c;

            {
                this.f6337c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i17 = i16;
                C2276c3 c2276c3 = this.f6337c;
                switch (i17) {
                    case 0:
                        if (c2276c3.getParentFragment() instanceof C2194a) {
                            ((C2194a) c2276c3.getParentFragment()).dismiss();
                        } else {
                            FragmentActivity activity = c2276c3.getActivity();
                            if (activity != null) {
                                activity.finish();
                            }
                        }
                        break;
                    case 1:
                        C1683k c1683k = c2276c3.f5983r;
                        if (c1683k != null) {
                            c1683k.m2797o(c2276c3.requireContext());
                        }
                        ArrayList arrayList = new ArrayList();
                        HashSet hashSet = new HashSet();
                        try {
                            C1683k c1683k2 = c2276c3.f5983r;
                            if (c1683k2 != null) {
                                ArrayList arrayListM2795e = c1683k2.m2795e();
                                int size = arrayListM2795e.size();
                                int i18 = 0;
                                while (i18 < size) {
                                    Object obj = arrayListM2795e.get(i18);
                                    i18++;
                                    C2276c3.m3656t(arrayList, hashSet, (File) obj);
                                }
                            }
                        } catch (Exception unused) {
                        }
                        try {
                            for (File file : ContextCompat.getExternalFilesDirs(c2276c3.requireContext(), null)) {
                                if (file != null) {
                                    String absolutePath = file.getAbsolutePath();
                                    int iIndexOf = absolutePath.indexOf(AbstractC1387m.m2421h(new byte[]{-41, -87, -84, -122, -86, 16, -123, -31}, new byte[]{-8, -24, -62, -30, -40, ByteCompanionObject.MAX_VALUE, -20, -123}));
                                    if (absolutePath.contains(AbstractC1387m.m2421h(new byte[]{11, -77, -33, 9, -72, 64, -22, 0, 11}, new byte[]{36, -64, -85, 102, -54, 33, -115, 101})) && iIndexOf > 0) {
                                        C2276c3.m3656t(arrayList, hashSet, new File(absolutePath.substring(0, iIndexOf)));
                                    }
                                }
                            }
                        } catch (Exception unused2) {
                        }
                        try {
                            File[] fileArrListFiles = new File(AbstractC1387m.m2421h(new byte[]{-69, -24, 124, -73, 105, -88, -80, 123, -69}, new byte[]{-108, -101, 8, -40, 27, -55, -41, 30})).listFiles();
                            if (fileArrListFiles != null) {
                                for (File file2 : fileArrListFiles) {
                                    C2276c3.m3656t(arrayList, hashSet, file2);
                                }
                            }
                        } catch (Exception unused3) {
                        }
                        if (arrayList.isEmpty()) {
                            c2276c3.m3664I(c2276c3.getString(R.string.usb_not));
                        } else {
                            String[] strArr = new String[arrayList.size()];
                            for (int i19 = 0; i19 < arrayList.size(); i19++) {
                                strArr[i19] = ((File) arrayList.get(i19)).getAbsolutePath();
                            }
                            new AlertDialog.Builder(c2276c3.requireContext(), R.style.ThemeOverlay_JCarTools_ModernAlert).setTitle(c2276c3.getString(R.string.usb_chos)).setItems(strArr, new DialogInterfaceOnClickListenerC1348e0(7, c2276c3, arrayList)).show();
                        }
                        break;
                    case 2:
                        c2276c3.m3661D(c2276c3.f5984s);
                        break;
                    case 3:
                        File file3 = c2276c3.f5985t;
                        if (file3 == null || file3.getParentFile() == null) {
                            c2276c3.m3664I(c2276c3.getString(R.string.uje_tut));
                        } else {
                            c2276c3.m3661D(c2276c3.f5985t.getParentFile());
                        }
                        break;
                    case 4:
                        C1683k c1683k3 = c2276c3.f5983r;
                        if (c1683k3 != null) {
                            c1683k3.m2797o(c2276c3.requireContext());
                        }
                        c2276c3.m3667v();
                        c2276c3.m3661D(c2276c3.f5985t);
                        break;
                    case 5:
                        File file4 = c2276c3.f5986u;
                        File file5 = c2276c3.f5985t;
                        if (!c2276c3.f5987v && file4 != null && file5 != null) {
                            if (file4.exists()) {
                                c2276c3.m3663H(c2276c3.getString(R.string.user_file_manager_copying), true);
                                AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{-31, 52, -69, 9, 85, 3, 13, 20, -7, 38, -80, 26, 116, 15, 19, 55, -58, 38, -71, 22, 118, 4, 21}, new byte[]{-76, 71, -34, 123, 19, 106, 97, 113})).execute(new RunnableC0873n(c2276c3, file5, file4, 10));
                            } else {
                                c2276c3.f5986u = null;
                                c2276c3.m3666K();
                                c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_open_root_error));
                            }
                            break;
                        }
                        break;
                    default:
                        c2276c3.f5986u = null;
                        c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_copy_cancelled));
                        c2276c3.m3666K();
                        break;
                }
            }
        });
        m3666K();
        m3661D(this.f5985t);
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        C1683k c1683k = this.f5983r;
        if (c1683k != null) {
            c1683k.m2801v(requireContext());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        C1683k c1683k = this.f5983r;
        if (c1683k != null) {
            requireContext();
            c1683k.m2802w();
        }
        super.onStop();
    }

    /* JADX INFO: renamed from: v */
    public final void m3667v() {
        this.f5988w++;
        this.f5968c.clear();
        this.f5969d.clear();
    }

    /* JADX INFO: renamed from: z */
    public final int m3668z(int i10) {
        return Math.round(i10 * requireContext().getResources().getDisplayMetrics().density);
    }
}

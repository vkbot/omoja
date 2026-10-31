package m0;

import android.content.Context;
import android.text.format.Formatter;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView$Adapter;
import androidx.recyclerview.widget.RecyclerView$LayoutParams;
import androidx.recyclerview.widget.RecyclerView$ViewHolder;
import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class x2 extends RecyclerView$Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c3 f3628a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public x2(c3 c3Var) {
        this.f3628a = c3Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final int getItemCount() {
        return this.f3628a.f3355b.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final void onBindViewHolder(RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        String string;
        File absoluteFile;
        String string2;
        w2 w2Var = (w2) recyclerView$ViewHolder;
        c3 c3Var = this.f3628a;
        File file = (File) c3Var.f3355b.get(i9);
        String name = file.getName();
        if (name == null || name.length() == 0) {
            name = c3.G(file);
        }
        TextView textView = w2Var.f3622a;
        if (file.isDirectory()) {
            StringBuilder sb = new StringBuilder();
            sb.append(e0.m.h(new byte[]{52}, new byte[]{111, -4, 1, -124, -37, -55, -27, 76}));
            sb.append(c3Var.getString(2131951989));
            name = com.google.protobuf.q.l(new byte[]{-65, 108}, new byte[]{-30, 76, 27, 89, 122, -114, 125, -28}, sb, name);
        }
        textView.setText(name);
        TextView textView2 = w2Var.f3623b;
        long jLastModified = file.lastModified();
        String str = jLastModified > 0 ? DateFormat.getDateTimeInstance(3, 3).format(new Date(jLastModified)) : "";
        if (file.isDirectory()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(c3Var.getString(2131951989));
            sb2.append(e0.m.h(new byte[]{-4, 72, -98, -112, 104}, new byte[]{-36, 104, -30, -80, 72, 82, -14, -46}));
            String strG = c3.G(file);
            y2 y2Var = (y2) c3Var.c.get(strG);
            if (y2Var == null) {
                if (c3Var.d.add(strG)) {
                    try {
                        absoluteFile = file.getCanonicalFile();
                    } catch (IOException unused) {
                        absoluteFile = file.getAbsoluteFile();
                    }
                    e0.w.c(-1, e0.m.h(new byte[]{108, 52, 84, 99, -21, 46, -108, -90, 116, 38, 95, 112, -54, 34, -118, -123, 86, 43, 85, 116, -33, 20, -111, -71, 92}, new byte[]{57, 71, 49, 17, -83, 71, -8, -61})).execute(new j2.d(c3Var, absoluteFile, c3Var.w, strG, 3));
                }
                string2 = c3Var.getString(2131952707);
            } else if (y2Var.e) {
                string2 = c3Var.getString(2131952706);
            } else {
                String shortFileSize = Formatter.formatShortFileSize(c3Var.requireContext(), y2Var.f3634b);
                string2 = y2Var.d ? c3Var.getString(2131952708, shortFileSize) : shortFileSize;
            }
            sb2.append(string2);
            sb2.append(e0.m.h(new byte[]{-109, -126, 17, -115, -55}, new byte[]{-77, -94, 109, -83, -23, 126, 55, 2}));
            sb2.append(str);
            sb2.append("\n");
            sb2.append(c3.G(file));
            string = sb2.toString();
        } else {
            string = Formatter.formatShortFileSize(c3Var.requireContext(), file.length()) + e0.m.h(new byte[]{11, 108, 66, -42, -101}, new byte[]{43, 76, 62, -10, -69, 52, 74, 70}) + str + "\n" + c3.G(file);
        }
        textView2.setText(string);
        w2Var.itemView.setOnClickListener(new androidx.navigation.ui.a(15, this, file));
        w2Var.itemView.setOnLongClickListener(new v2(this, file, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final RecyclerView$ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
        Context context = viewGroup.getContext();
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundResource(2131165572);
        c3 c3Var = this.f3628a;
        linearLayout.setMinimumHeight(c3Var.z(84));
        linearLayout.setPadding(c3Var.z(18), c3Var.z(14), c3Var.z(18), c3Var.z(14));
        RecyclerView$LayoutParams recyclerView$LayoutParams = new RecyclerView$LayoutParams(-1, -2);
        recyclerView$LayoutParams.setMargins(0, 0, 0, c3Var.z(10));
        linearLayout.setLayoutParams(recyclerView$LayoutParams);
        TextView textView = new TextView(context);
        textView.setTextColor(ContextCompat.getColor(c3Var.requireContext(), 2131035009));
        textView.setTextSize(18.0f);
        textView.setTypeface(textView.getTypeface(), 1);
        linearLayout.addView(textView);
        TextView textView2 = new TextView(context);
        textView2.setTextColor(ContextCompat.getColor(c3Var.requireContext(), 2131035010));
        textView2.setTextSize(14.0f);
        textView2.setTextIsSelectable(true);
        LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(-1, -2);
        linearLayout$LayoutParams.setMargins(0, c3Var.z(4), 0, 0);
        textView2.setLayoutParams(linearLayout$LayoutParams);
        linearLayout.addView(textView2);
        return new w2(linearLayout, textView, textView2);
    }
}

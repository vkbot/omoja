package p132m0;

import android.content.Context;
import android.text.format.Formatter;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.navigation.p013ui.ViewOnClickListenerC0701a;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;
import com.google.protobuf.AbstractC1178q;
import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1434w;
import p100j2.RunnableC1948d;

/* JADX INFO: renamed from: m0.x2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2371x2 extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2276c3 f6414a;

    public C2371x2(C2276c3 c2276c3) {
        this.f6414a = c2276c3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f6414a.f5967b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
        String string;
        File absoluteFile;
        String string2;
        C2367w2 c2367w2 = (C2367w2) viewHolder;
        C2276c3 c2276c3 = this.f6414a;
        File file = (File) c2276c3.f5967b.get(i10);
        String name = file.getName();
        if (name == null || name.length() == 0) {
            name = C2276c3.m3655G(file);
        }
        TextView textView = c2367w2.f6405a;
        if (file.isDirectory()) {
            StringBuilder sb = new StringBuilder();
            sb.append(AbstractC1387m.m2421h(new byte[]{52}, new byte[]{111, -4, 1, -124, -37, -55, -27, 76}));
            sb.append(c2276c3.getString(R.string.folder));
            name = AbstractC1178q.m2078l(new byte[]{-65, 108}, new byte[]{-30, 76, 27, 89, 122, -114, 125, -28}, sb, name);
        }
        textView.setText(name);
        TextView textView2 = c2367w2.f6406b;
        long jLastModified = file.lastModified();
        String str = jLastModified > 0 ? DateFormat.getDateTimeInstance(3, 3).format(new Date(jLastModified)) : "";
        if (file.isDirectory()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(c2276c3.getString(R.string.folder));
            sb2.append(AbstractC1387m.m2421h(new byte[]{-4, 72, -98, -112, 104}, new byte[]{-36, 104, -30, -80, 72, 82, -14, -46}));
            String strM3655G = C2276c3.m3655G(file);
            C2375y2 c2375y2 = (C2375y2) c2276c3.f5968c.get(strM3655G);
            if (c2375y2 == null) {
                if (c2276c3.f5969d.add(strM3655G)) {
                    try {
                        absoluteFile = file.getCanonicalFile();
                    } catch (IOException unused) {
                        absoluteFile = file.getAbsoluteFile();
                    }
                    AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{108, 52, 84, 99, -21, 46, -108, -90, 116, 38, 95, 112, -54, 34, -118, -123, 86, 43, 85, 116, -33, 20, -111, -71, 92}, new byte[]{57, 71, 49, 17, -83, 71, -8, -61})).execute(new RunnableC1948d(c2276c3, absoluteFile, c2276c3.f5988w, strM3655G, 3));
                }
                string2 = c2276c3.getString(R.string.user_file_manager_folder_size_loading);
            } else if (c2375y2.f6431e) {
                string2 = c2276c3.getString(R.string.user_file_manager_folder_size_error);
            } else {
                String shortFileSize = Formatter.formatShortFileSize(c2276c3.requireContext(), c2375y2.f6428b);
                string2 = c2375y2.f6430d ? c2276c3.getString(R.string.user_file_manager_folder_size_partial, shortFileSize) : shortFileSize;
            }
            sb2.append(string2);
            sb2.append(AbstractC1387m.m2421h(new byte[]{-109, -126, 17, -115, -55}, new byte[]{-77, -94, 109, -83, -23, 126, 55, 2}));
            sb2.append(str);
            sb2.append("\n");
            sb2.append(C2276c3.m3655G(file));
            string = sb2.toString();
        } else {
            string = Formatter.formatShortFileSize(c2276c3.requireContext(), file.length()) + AbstractC1387m.m2421h(new byte[]{11, 108, 66, -42, -101}, new byte[]{43, 76, 62, -10, -69, 52, 74, 70}) + str + "\n" + C2276c3.m3655G(file);
        }
        textView2.setText(string);
        c2367w2.itemView.setOnClickListener(new ViewOnClickListenerC0701a(15, this, file));
        c2367w2.itemView.setOnLongClickListener(new ViewOnLongClickListenerC2363v2(this, file, 0));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
        Context context = viewGroup.getContext();
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundResource(R.drawable.modern_action_row);
        C2276c3 c2276c3 = this.f6414a;
        linearLayout.setMinimumHeight(c2276c3.m3668z(84));
        linearLayout.setPadding(c2276c3.m3668z(18), c2276c3.m3668z(14), c2276c3.m3668z(18), c2276c3.m3668z(14));
        RecyclerView.LayoutParams layoutParams = new RecyclerView.LayoutParams(-1, -2);
        layoutParams.setMargins(0, 0, 0, c2276c3.m3668z(10));
        linearLayout.setLayoutParams(layoutParams);
        TextView textView = new TextView(context);
        textView.setTextColor(ContextCompat.getColor(c2276c3.requireContext(), R.color.modern_text));
        textView.setTextSize(18.0f);
        textView.setTypeface(textView.getTypeface(), 1);
        linearLayout.addView(textView);
        TextView textView2 = new TextView(context);
        textView2.setTextColor(ContextCompat.getColor(c2276c3.requireContext(), R.color.modern_text_secondary));
        textView2.setTextSize(14.0f);
        textView2.setTextIsSelectable(true);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(0, c2276c3.m3668z(4), 0, 0);
        textView2.setLayoutParams(layoutParams2);
        linearLayout.addView(textView2);
        return new C2367w2(linearLayout, textView, textView2);
    }
}

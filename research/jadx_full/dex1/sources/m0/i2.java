package m0;

import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView$Adapter;
import androidx.recyclerview.widget.RecyclerView$ViewHolder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i2 extends RecyclerView$Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k2 f3476a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i2(k2 k2Var) {
        this.f3476a = k2Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final int getItemCount() {
        return this.f3476a.f3496i.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final void onBindViewHolder(RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        int i10;
        h2 h2Var = (h2) recyclerView$ViewHolder;
        k2 k2Var = this.f3476a;
        j2 j2Var = (j2) k2Var.f3496i.get(i9);
        ImageView imageView = h2Var.f3449a;
        View view = h2Var.c;
        TextView textView = h2Var.f3450b;
        int measuredWidth = imageView.getMeasuredWidth();
        if (measuredWidth <= 0) {
            measuredWidth = (int) (h2Var.itemView.getResources().getDisplayMetrics().density * 64.0f);
        }
        boolean z8 = j2Var.f3482a;
        a5.h hVar = j2Var.f3483b;
        e4.o oVar = j2Var.c;
        if (z8) {
            view.setBackground(null);
            Drawable drawable = (Drawable) ((a5.h) oVar.c).e;
            Drawable drawable2 = (Drawable) ((a5.h) oVar.d).e;
            int i11 = oVar.f2072a;
            int i12 = oVar.f2073b;
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(measuredWidth, measuredWidth, Bitmap$Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            int iW = (k2.w(i12) * measuredWidth) / 100;
            if (i11 == 1) {
                drawable.setBounds(0, 0, measuredWidth, iW);
                drawable.draw(canvas);
                drawable2.setBounds(0, iW, measuredWidth, measuredWidth);
                drawable2.draw(canvas);
            } else {
                drawable.setBounds(0, 0, iW, measuredWidth);
                drawable.draw(canvas);
                drawable2.setBounds(iW, 0, measuredWidth, measuredWidth);
                drawable2.draw(canvas);
            }
            imageView.setImageDrawable(new BitmapDrawable(k2Var.getResources(), bitmapCreateBitmap));
            String strSubstring = (String) ((a5.h) oVar.c).c;
            String strSubstring2 = "";
            if (strSubstring == null) {
                strSubstring = "";
                i10 = 3;
            } else {
                i10 = 3;
                if (strSubstring.length() > 3) {
                    strSubstring = strSubstring.substring(0, 3);
                }
            }
            String str = (String) ((a5.h) oVar.d).c;
            if (str != null) {
                strSubstring2 = str.length() > i10 ? str.substring(0, i10) : str;
            }
            StringBuilder sbU = ai.onnxruntime.a.u(strSubstring);
            sbU.append(e0.m.h(new byte[]{97}, new byte[]{78, 88, 16, 79, 54, -126, -126, -76}));
            sbU.append(strSubstring2);
            sbU.append("\n");
            sbU.append(oVar.f2073b);
            sbU.append(e0.m.h(new byte[]{-92}, new byte[]{-117, -84, -32, -115, 91, -13, -127, 1}));
            sbU.append(100 - oVar.f2073b);
            textView.setText(sbU.toString());
        } else {
            imageView.setImageDrawable((Drawable) hVar.e);
            textView.setText((String) hVar.c);
            view.setBackground(((String) hVar.d).equals(k2Var.f3492b) ? k2Var.getResources().getDrawable(2131165322) : null);
        }
        h2Var.itemView.setOnClickListener(new e0.n0(this, j2Var, h2Var, 3));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final RecyclerView$ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(2131492984, viewGroup, false);
        h2 h2Var = new h2(viewInflate);
        h2Var.f3449a = (ImageView) viewInflate.findViewById(2131296451);
        h2Var.f3450b = (TextView) viewInflate.findViewById(2131296452);
        h2Var.c = viewInflate.findViewById(2131297355);
        return h2Var;
    }
}

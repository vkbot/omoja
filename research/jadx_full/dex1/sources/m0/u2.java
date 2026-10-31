package m0;

import android.content.DialogInterface$OnClickListener;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.view.View;
import androidx.appcompat.app.AlertDialog$Builder;
import androidx.recyclerview.widget.ItemTouchHelper$SimpleCallback;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView$ViewHolder;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class u2 extends ItemTouchHelper$SimpleCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c3 f3603a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u2(c3 c3Var) {
        super(0, 12);
        this.f3603a = c3Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ItemTouchHelper$SimpleCallback
    public final int getSwipeDirs(RecyclerView recyclerView, RecyclerView$ViewHolder recyclerView$ViewHolder) {
        c3 c3Var = this.f3603a;
        if (c3Var.f3370v || recyclerView$ViewHolder.getBindingAdapter() != c3Var.e) {
            return 0;
        }
        return super.getSwipeDirs(recyclerView, recyclerView$ViewHolder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ItemTouchHelper$Callback
    public final void onChildDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView$ViewHolder recyclerView$ViewHolder, float f8, float f9, int i9, boolean z8) {
        int i10;
        int i11;
        int i12;
        if (i9 == 1 && f8 != 0.0f) {
            View view = recyclerView$ViewHolder.itemView;
            Paint paint = new Paint();
            boolean z9 = f8 > 0.0f;
            if (z9) {
                i10 = 160;
                i11 = 67;
                i12 = 46;
            } else {
                i10 = 54;
                i11 = 51;
                i12 = 218;
            }
            paint.setColor(Color.rgb(i12, i10, i11));
            if (z9) {
                canvas.drawRect(view.getLeft(), view.getTop(), view.getLeft() + f8, view.getBottom(), paint);
            } else {
                canvas.drawRect(view.getRight() + f8, view.getTop(), view.getRight(), view.getBottom(), paint);
            }
            Paint paint2 = new Paint(1);
            paint2.setColor(-1);
            c3 c3Var = this.f3603a;
            paint2.setTextSize(c3Var.z(14));
            paint2.setFakeBoldText(true);
            String string = c3Var.getString(z9 ? 2131952691 : 2131951919);
            float height = (((view.getHeight() - paint2.descent()) - paint2.ascent()) / 2.0f) + view.getTop();
            if (z9) {
                canvas.drawText(string, c3Var.z(16) + view.getLeft(), height, paint2);
            } else {
                canvas.drawText(string, (view.getRight() - c3Var.z(16)) - paint2.measureText(string), height, paint2);
            }
        }
        super.onChildDraw(canvas, recyclerView, recyclerView$ViewHolder, f8, f9, i9, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ItemTouchHelper$Callback
    public final boolean onMove(RecyclerView recyclerView, RecyclerView$ViewHolder recyclerView$ViewHolder, RecyclerView$ViewHolder recyclerView$ViewHolder2) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ItemTouchHelper$Callback
    public final void onSwiped(RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        File absoluteFile;
        c3 c3Var = this.f3603a;
        ArrayList arrayList = c3Var.f3355b;
        int bindingAdapterPosition = recyclerView$ViewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1 || bindingAdapterPosition >= arrayList.size()) {
            c3Var.e.notifyDataSetChanged();
            return;
        }
        File file = (File) arrayList.get(bindingAdapterPosition);
        c3Var.e.notifyItemChanged(bindingAdapterPosition);
        boolean z8 = c3Var.f3370v;
        if (z8) {
            return;
        }
        if (i9 != 8) {
            if (i9 != 4 || z8 || file == null || !file.exists()) {
                return;
            }
            new AlertDialog$Builder(c3Var.requireContext(), 2132017903).setTitle(2131952700).setMessage(c3Var.getString(2131952699, file.getName())).setPositiveButton(2131951919, new e0.e0(6, c3Var, file)).setNegativeButton(2131951882, (DialogInterface$OnClickListener) null).show();
            return;
        }
        if (file == null || !file.exists()) {
            c3Var.I(c3Var.getString(2131952716));
            return;
        }
        try {
            absoluteFile = file.getCanonicalFile();
        } catch (IOException unused) {
            absoluteFile = file.getAbsoluteFile();
        }
        c3Var.f3369u = absoluteFile;
        c3Var.I(c3Var.getString(2131952695, absoluteFile.getName()));
        c3Var.K();
    }
}

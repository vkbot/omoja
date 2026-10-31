package p132m0;

import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.view.View;
import androidx.appcompat.app.AlertDialog;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import p047e0.DialogInterfaceOnClickListenerC1348e0;

/* JADX INFO: renamed from: m0.u2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2359u2 extends ItemTouchHelper.SimpleCallback {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2276c3 f6377a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2359u2(C2276c3 c2276c3) {
        super(0, 12);
        this.f6377a = c2276c3;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.SimpleCallback
    public final int getSwipeDirs(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        C2276c3 c2276c3 = this.f6377a;
        if (c2276c3.f5987v || viewHolder.getBindingAdapter() != c2276c3.f5970e) {
            return 0;
        }
        return super.getSwipeDirs(recyclerView, viewHolder);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final void onChildDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f8, float f10, int i10, boolean z9) {
        int i11;
        int i12;
        int i13;
        if (i10 == 1 && f8 != 0.0f) {
            View view = viewHolder.itemView;
            Paint paint = new Paint();
            boolean z10 = f8 > 0.0f;
            if (z10) {
                i11 = 160;
                i12 = 67;
                i13 = 46;
            } else {
                i11 = 54;
                i12 = 51;
                i13 = 218;
            }
            paint.setColor(Color.rgb(i13, i11, i12));
            if (z10) {
                canvas.drawRect(view.getLeft(), view.getTop(), view.getLeft() + f8, view.getBottom(), paint);
            } else {
                canvas.drawRect(view.getRight() + f8, view.getTop(), view.getRight(), view.getBottom(), paint);
            }
            Paint paint2 = new Paint(1);
            paint2.setColor(-1);
            C2276c3 c2276c3 = this.f6377a;
            paint2.setTextSize(c2276c3.m3668z(14));
            paint2.setFakeBoldText(true);
            String string = c2276c3.getString(z10 ? R.string.user_file_manager_copy : R.string.delete_custom_widget);
            float height = (((view.getHeight() - paint2.descent()) - paint2.ascent()) / 2.0f) + view.getTop();
            if (z10) {
                canvas.drawText(string, c2276c3.m3668z(16) + view.getLeft(), height, paint2);
            } else {
                canvas.drawText(string, (view.getRight() - c2276c3.m3668z(16)) - paint2.measureText(string), height, paint2);
            }
        }
        super.onChildDraw(canvas, recyclerView, viewHolder, f8, f10, i10, z9);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
        return false;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final void onSwiped(RecyclerView.ViewHolder viewHolder, int i10) {
        File absoluteFile;
        C2276c3 c2276c3 = this.f6377a;
        ArrayList arrayList = c2276c3.f5967b;
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1 || bindingAdapterPosition >= arrayList.size()) {
            c2276c3.f5970e.notifyDataSetChanged();
            return;
        }
        File file = (File) arrayList.get(bindingAdapterPosition);
        c2276c3.f5970e.notifyItemChanged(bindingAdapterPosition);
        boolean z9 = c2276c3.f5987v;
        if (z9) {
            return;
        }
        if (i10 != 8) {
            if (i10 != 4 || z9 || file == null || !file.exists()) {
                return;
            }
            new AlertDialog.Builder(c2276c3.requireContext(), R.style.ThemeOverlay_JCarTools_ModernAlert).setTitle(R.string.user_file_manager_delete_title).setMessage(c2276c3.getString(R.string.user_file_manager_delete_message, file.getName())).setPositiveButton(R.string.delete_custom_widget, new DialogInterfaceOnClickListenerC1348e0(6, c2276c3, file)).setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null).show();
            return;
        }
        if (file == null || !file.exists()) {
            c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_open_root_error));
            return;
        }
        try {
            absoluteFile = file.getCanonicalFile();
        } catch (IOException unused) {
            absoluteFile = file.getAbsoluteFile();
        }
        c2276c3.f5986u = absoluteFile;
        c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_copy_ready, absoluteFile.getName()));
        c2276c3.m3666K();
    }
}

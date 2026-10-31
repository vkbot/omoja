package m0;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView$Adapter;
import androidx.recyclerview.widget.RecyclerView$ViewHolder;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class t extends RecyclerView$Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ v f3588a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public t(v vVar) {
        this.f3588a = vVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final int getItemCount() {
        return this.f3588a.c.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final void onBindViewHolder(RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        s sVar = (s) recyclerView$ViewHolder;
        v vVar = this.f3588a;
        u uVar = (u) vVar.c.get(i9);
        ImageView imageView = sVar.f3581a;
        ImageButton imageButton = sVar.f3583f;
        Button button = sVar.e;
        Button button2 = sVar.d;
        imageView.setImageDrawable(uVar.f3597h);
        sVar.f3582b.setText(uVar.f3593a);
        TextView textView = sVar.c;
        ArrayList arrayList = new ArrayList();
        if (!uVar.f3595f) {
            arrayList.add(vVar.getString(2131951806));
        } else if (TextUtils.isEmpty(uVar.f3596g)) {
            arrayList.add(vVar.getString(2131951804));
        } else {
            arrayList.add(vVar.getString(2131951805, uVar.f3596g));
        }
        if (!TextUtils.isEmpty(uVar.e)) {
            arrayList.add(uVar.e);
        }
        if (!TextUtils.isEmpty(uVar.d)) {
            arrayList.add(uVar.d);
        }
        textView.setText(TextUtils.join(e0.m.h(new byte[]{-86, -88, 101, -32, 15}, new byte[]{-118, -120, 25, -64, 47, -77, -120, -93}), arrayList));
        button2.setVisibility((!uVar.f3595f || uVar.f3598i) ? 0 : 8);
        button2.setText(uVar.f3595f ? vVar.getString(2131951807) : vVar.getString(2131951930));
        button2.setOnClickListener(new r(this, uVar, 0));
        button.setVisibility(uVar.f3595f ? 0 : 8);
        button.setOnClickListener(new r(this, uVar, 1));
        imageButton.setVisibility(uVar.f3595f ? 0 : 8);
        imageButton.setOnClickListener(new r(this, uVar, 2));
        sVar.itemView.setOnClickListener(new r(this, uVar, 3));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final RecyclerView$ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
        return new s(LayoutInflater.from(viewGroup.getContext()).inflate(2131492992, viewGroup, false));
    }
}

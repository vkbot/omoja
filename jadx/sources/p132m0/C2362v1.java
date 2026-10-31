package p132m0;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.RunnableC0131f;
import androidx.navigation.p013ui.ViewOnClickListenerC0701a;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;

/* JADX INFO: renamed from: m0.v1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2362v1 extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2366w1 f6390a;

    public C2362v1(C2366w1 c2366w1) {
        this.f6390a = c2366w1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f6390a.f6400f.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
        final C2358u1 c2358u1 = (C2358u1) viewHolder;
        final C2350s1 c2350s1 = (C2350s1) this.f6390a.f6400f.get(i10);
        c2358u1.itemView.setTranslationY(0.0f);
        c2358u1.itemView.setAlpha(1.0f);
        c2358u1.itemView.setScaleX(1.0f);
        c2358u1.itemView.setScaleY(1.0f);
        c2358u1.f6372a.setImageDrawable(c2350s1.f6346c);
        c2358u1.f6373b.setText(c2350s1.f6344a);
        c2358u1.itemView.setOnClickListener(new ViewOnClickListenerC0701a(12, this, c2350s1));
        c2358u1.itemView.setOnTouchListener(new View.OnTouchListener() { // from class: m0.t1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                C2358u1 c2358u2 = c2358u1;
                C2366w1 c2366w1 = c2358u2.f6376e.f6390a;
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 0) {
                    c2358u2.f6374c = motionEvent.getRawX();
                    c2358u2.f6375d = motionEvent.getRawY();
                    view.animate().cancel();
                    view.setTranslationY(0.0f);
                    view.setAlpha(1.0f);
                    view.setScaleX(1.0f);
                    view.setScaleY(1.0f);
                    return true;
                }
                if (actionMasked != 1) {
                    if (actionMasked == 2) {
                        float rawX = motionEvent.getRawX() - c2358u2.f6374c;
                        float rawY = motionEvent.getRawY() - c2358u2.f6375d;
                        if (rawY < 0.0f && Math.abs(rawY) > Math.abs(rawX)) {
                            RecyclerView recyclerView = c2366w1.f6396b;
                            if (recyclerView != null) {
                                recyclerView.requestDisallowInterceptTouchEvent(true);
                            }
                            float fMin = Math.min(1.0f, Math.abs(rawY) / 126.0f);
                            view.setTranslationY(rawY * 0.65f);
                            view.setAlpha(1.0f - (0.75f * fMin));
                            float f8 = 1.0f - (fMin * 0.06f);
                            view.setScaleX(f8);
                            view.setScaleY(f8);
                        }
                    } else if (actionMasked == 3) {
                        C2358u1.m3725a(view);
                        return true;
                    }
                    return true;
                }
                float rawX2 = motionEvent.getRawX() - c2358u2.f6374c;
                float rawY2 = motionEvent.getRawY() - c2358u2.f6375d;
                if (rawY2 >= -70.0f || Math.abs(rawY2) <= Math.abs(rawX2)) {
                    if (Math.abs(rawX2) >= 12.0f || Math.abs(rawY2) >= 12.0f) {
                        C2358u1.m3725a(view);
                        return true;
                    }
                    view.performClick();
                    return true;
                }
                Context contextRequireContext = c2366w1.requireContext();
                C2350s1 c2350s2 = c2350s1;
                if (!C2366w1.m3737t(contextRequireContext, c2350s2.f6345b)) {
                    C2358u1.m3725a(view);
                    return true;
                }
                int adapterPosition = c2358u2.getAdapterPosition();
                if (adapterPosition == -1) {
                    C2358u1.m3725a(view);
                    return true;
                }
                view.animate().translationY((-view.getHeight()) * 0.65f).alpha(0.0f).scaleX(0.92f).scaleY(0.92f).setDuration(240L).withEndAction(new RunnableC0131f(c2358u2, c2350s2, adapterPosition, 7)).start();
                return true;
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
        return new C2358u1(this, LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_recent_task, viewGroup, false));
    }
}

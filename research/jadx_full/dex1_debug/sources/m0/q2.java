package m0;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class q2 extends l0.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public p0.e f3570b;
    public p0.j c;
    public TextView d;
    public TextView e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TextView f3571f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ProgressBar f3572g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Button f3573h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Handler f3574i = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ExecutorService f3575j = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f3576k;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(2131492973, viewGroup, false);
        this.f3570b = new p0.e(requireContext());
        this.c = new p0.j(requireContext(), this.f3570b, this);
        this.d = (TextView) viewInflate.findViewById(2131297705);
        this.e = (TextView) viewInflate.findViewById(2131297704);
        this.f3571f = (TextView) viewInflate.findViewById(2131297707);
        this.f3572g = (ProgressBar) viewInflate.findViewById(2131297706);
        this.f3573h = (Button) viewInflate.findViewById(2131297702);
        viewInflate.findViewById(2131297703).setOnClickListener(new n2(this, 0));
        this.f3573h.setOnClickListener(new n2(this, 1));
        v();
        this.c.h(1);
        return viewInflate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        this.f3575j.shutdown();
        super.onDestroy();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        if (this.c != null) {
            if (this.f3570b == null || !p0.e.e()) {
                this.c.a();
            } else {
                this.c.c = null;
            }
            this.c = null;
        }
        super.onDestroyView();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        v();
        p0.j jVar = this.c;
        if (jVar != null) {
            jVar.h(1);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void t() {
        if (this.f3576k || this.f3570b == null) {
            return;
        }
        boolean zE = p0.e.e();
        Context applicationContext = requireContext().getApplicationContext();
        this.f3576k = true;
        this.f3573h.setEnabled(false);
        this.f3573h.setAlpha(0.55f);
        this.f3573h.setText(zE ? 2131952678 : 2131952669);
        ProgressBar progressBar = this.f3572g;
        if (progressBar != null) {
            progressBar.setIndeterminate(false);
            this.f3572g.setMax(100);
            this.f3572g.setProgress(0);
            this.f3572g.setVisibility(0);
        }
        u(0, 1, zE);
        this.f3575j.execute(new e0.e2(this, zE, applicationContext, 2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void u(int i9, int i10, boolean z8) {
        int iMin = i10 <= 0 ? 0 : Math.min(100, Math.round((i9 * 100.0f) / i10));
        ProgressBar progressBar = this.f3572g;
        if (progressBar != null) {
            progressBar.setProgress(iMin);
        }
        TextView textView = this.f3571f;
        if (textView != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(getString(z8 ? 2131952676 : 2131952675));
            sb.append(" ");
            sb.append(iMin);
            sb.append(e0.m.h(new byte[]{53}, new byte[]{16, 71, ByteCompanionObject.MIN_VALUE, 110, 122, 67, -122, -74}));
            textView.setText(sb.toString());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void v() {
        if (this.f3570b == null || this.f3573h == null) {
            return;
        }
        boolean zE = p0.e.e();
        p0.e eVar = this.f3570b;
        int size = eVar.f4557b.c(true).size();
        if (eVar.c()) {
            size += eVar.a().size();
        }
        this.d.setText(this.f3570b.c() ? 2131952684 : 2131952683);
        this.e.setText(getString(zE ? 2131952670 : 2131952671, Integer.valueOf(size)));
        this.f3573h.setEnabled(!this.f3576k);
        this.f3573h.setAlpha(this.f3576k ? 0.55f : 1.0f);
        if (!this.f3576k) {
            this.f3573h.setText(zE ? 2131952677 : 2131952668);
        }
        ProgressBar progressBar = this.f3572g;
        if (progressBar != null) {
            progressBar.setVisibility(this.f3576k ? 0 : 8);
        }
        if (this.f3571f.length() == 0) {
            this.f3571f.setText(2131952681);
        }
        p0.j jVar = this.c;
        if (jVar != null) {
            jVar.e();
        }
    }
}

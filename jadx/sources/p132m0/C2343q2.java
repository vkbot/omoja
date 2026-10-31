package p132m0;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.example.navistart.R;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.jvm.internal.ByteCompanionObject;
import p022b7.DialogInterfaceOnClickListenerC0912h;
import p047e0.AbstractC1387m;
import p047e0.RunnableC1350e2;
import p121l0.C2194a;
import p121l0.C2195b;
import p164p0.C2952e;
import p164p0.C2957j;

/* JADX INFO: renamed from: m0.q2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2343q2 extends C2195b {

    /* JADX INFO: renamed from: b */
    public C2952e f6318b;

    /* JADX INFO: renamed from: c */
    public C2957j f6319c;

    /* JADX INFO: renamed from: d */
    public TextView f6320d;

    /* JADX INFO: renamed from: e */
    public TextView f6321e;

    /* JADX INFO: renamed from: f */
    public TextView f6322f;

    /* JADX INFO: renamed from: g */
    public ProgressBar f6323g;

    /* JADX INFO: renamed from: h */
    public Button f6324h;

    /* JADX INFO: renamed from: i */
    public final Handler f6325i = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: j */
    public final ExecutorService f6326j = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: k */
    public boolean f6327k;

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_user_apps_hide_settings, viewGroup, false);
        this.f6318b = new C2952e(requireContext());
        this.f6319c = new C2957j(requireContext(), this.f6318b, this);
        this.f6320d = (TextView) viewInflate.findViewById(R.id.userAppsHideOwnerStatus);
        this.f6321e = (TextView) viewInflate.findViewById(R.id.userAppsHideInfo);
        this.f6322f = (TextView) viewInflate.findViewById(R.id.userAppsHideResult);
        this.f6323g = (ProgressBar) viewInflate.findViewById(R.id.userAppsHideProgress);
        this.f6324h = (Button) viewInflate.findViewById(R.id.userAppsHideActionButton);
        final int i10 = 0;
        viewInflate.findViewById(R.id.userAppsHideBackButton).setOnClickListener(new View.OnClickListener(this) { // from class: m0.n2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2343q2 f6252c;

            {
                this.f6252c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i10) {
                    case 0:
                        C2343q2 c2343q2 = this.f6252c;
                        if (!(c2343q2.getParentFragment() instanceof C2194a)) {
                            FragmentActivity activity = c2343q2.getActivity();
                            if (activity != null) {
                                activity.finish();
                            }
                        } else {
                            ((C2194a) c2343q2.getParentFragment()).dismiss();
                        }
                        break;
                    default:
                        C2343q2 c2343q3 = this.f6252c;
                        if (!c2343q3.f6327k && c2343q3.f6318b != null) {
                            if (!C2952e.m4727e()) {
                                C2957j c2957j = c2343q3.f6319c;
                                if (c2957j != null && !c2957j.f8237k) {
                                    if (c2957j.f8235i == null) {
                                        c2957j.m4745h(1);
                                    }
                                    c2957j.m4743f(0);
                                }
                                new AlertDialog.Builder(c2343q3.requireContext()).setTitle(R.string.user_apps_hide_confirm_title).setMessage(R.string.user_apps_hide_confirm_message).setPositiveButton(R.string.user_apps_hide_confirm_positive, new DialogInterfaceOnClickListenerC0912h(1, c2343q3)).setNegativeButton(R.string.user_apps_hide_confirm_negative, (DialogInterface.OnClickListener) null).show();
                            } else {
                                c2343q3.m3721t();
                            }
                            break;
                        }
                        break;
                }
            }
        });
        final int i11 = 1;
        this.f6324h.setOnClickListener(new View.OnClickListener(this) { // from class: m0.n2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2343q2 f6252c;

            {
                this.f6252c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i11) {
                    case 0:
                        C2343q2 c2343q2 = this.f6252c;
                        if (!(c2343q2.getParentFragment() instanceof C2194a)) {
                            FragmentActivity activity = c2343q2.getActivity();
                            if (activity != null) {
                                activity.finish();
                            }
                        } else {
                            ((C2194a) c2343q2.getParentFragment()).dismiss();
                        }
                        break;
                    default:
                        C2343q2 c2343q3 = this.f6252c;
                        if (!c2343q3.f6327k && c2343q3.f6318b != null) {
                            if (!C2952e.m4727e()) {
                                C2957j c2957j = c2343q3.f6319c;
                                if (c2957j != null && !c2957j.f8237k) {
                                    if (c2957j.f8235i == null) {
                                        c2957j.m4745h(1);
                                    }
                                    c2957j.m4743f(0);
                                }
                                new AlertDialog.Builder(c2343q3.requireContext()).setTitle(R.string.user_apps_hide_confirm_title).setMessage(R.string.user_apps_hide_confirm_message).setPositiveButton(R.string.user_apps_hide_confirm_positive, new DialogInterfaceOnClickListenerC0912h(1, c2343q3)).setNegativeButton(R.string.user_apps_hide_confirm_negative, (DialogInterface.OnClickListener) null).show();
                            } else {
                                c2343q3.m3721t();
                            }
                            break;
                        }
                        break;
                }
            }
        });
        m3723v();
        this.f6319c.m4745h(1);
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        this.f6326j.shutdown();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        if (this.f6319c != null) {
            if (this.f6318b == null || !C2952e.m4727e()) {
                this.f6319c.m4739a();
            } else {
                this.f6319c.f8229c = null;
            }
            this.f6319c = null;
        }
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        m3723v();
        C2957j c2957j = this.f6319c;
        if (c2957j != null) {
            c2957j.m4745h(1);
        }
    }

    /* JADX INFO: renamed from: t */
    public final void m3721t() {
        if (this.f6327k || this.f6318b == null) {
            return;
        }
        boolean zM4727e = C2952e.m4727e();
        Context applicationContext = requireContext().getApplicationContext();
        this.f6327k = true;
        this.f6324h.setEnabled(false);
        this.f6324h.setAlpha(0.55f);
        this.f6324h.setText(zM4727e ? R.string.user_apps_hide_restore_button_busy : R.string.user_apps_hide_hide_button_busy);
        ProgressBar progressBar = this.f6323g;
        if (progressBar != null) {
            progressBar.setIndeterminate(false);
            this.f6323g.setMax(100);
            this.f6323g.setProgress(0);
            this.f6323g.setVisibility(0);
        }
        m3722u(0, 1, zM4727e);
        this.f6326j.execute(new RunnableC1350e2(this, zM4727e, applicationContext, 2));
    }

    /* JADX INFO: renamed from: u */
    public final void m3722u(int i10, int i11, boolean z9) {
        int iMin = i11 <= 0 ? 0 : Math.min(100, Math.round((i10 * 100.0f) / i11));
        ProgressBar progressBar = this.f6323g;
        if (progressBar != null) {
            progressBar.setProgress(iMin);
        }
        TextView textView = this.f6322f;
        if (textView != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(getString(z9 ? R.string.user_apps_hide_progress_restoring : R.string.user_apps_hide_progress_hiding));
            sb.append(" ");
            sb.append(iMin);
            sb.append(AbstractC1387m.m2421h(new byte[]{53}, new byte[]{16, 71, ByteCompanionObject.MIN_VALUE, 110, 122, 67, -122, -74}));
            textView.setText(sb.toString());
        }
    }

    /* JADX INFO: renamed from: v */
    public final void m3723v() {
        if (this.f6318b == null || this.f6324h == null) {
            return;
        }
        boolean zM4727e = C2952e.m4727e();
        C2952e c2952e = this.f6318b;
        int size = c2952e.f8209b.m4723c(true).size();
        if (c2952e.m4732c()) {
            size += c2952e.m4730a().size();
        }
        this.f6320d.setText(this.f6318b.m4732c() ? R.string.user_apps_hide_special_rights_ok : R.string.user_apps_hide_special_rights_missing);
        this.f6321e.setText(getString(zM4727e ? R.string.user_apps_hide_info_hidden : R.string.user_apps_hide_info_ready, Integer.valueOf(size)));
        this.f6324h.setEnabled(!this.f6327k);
        this.f6324h.setAlpha(this.f6327k ? 0.55f : 1.0f);
        if (!this.f6327k) {
            this.f6324h.setText(zM4727e ? R.string.user_apps_hide_restore_button : R.string.user_apps_hide_hide_button);
        }
        ProgressBar progressBar = this.f6323g;
        if (progressBar != null) {
            progressBar.setVisibility(this.f6327k ? 0 : 8);
        }
        if (this.f6322f.length() == 0) {
            this.f6322f.setText(R.string.user_apps_hide_result_ready);
        }
        C2957j c2957j = this.f6319c;
        if (c2957j != null) {
            c2957j.m4742e();
        }
    }
}

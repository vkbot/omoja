package p121l0;

import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.example.navistart.ActivityC1081W;
import com.example.navistart.R;
import java.util.Objects;
import p047e0.AbstractC1387m;
import p047e0.RunnableC1375j2;

/* JADX INFO: renamed from: l0.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2194a extends DialogFragment {

    /* JADX INFO: renamed from: d */
    public static final String f5725d = AbstractC1387m.m2421h(new byte[]{45, -25, -4, -80, -29, 121, 26, -109, 20, -10, -15, -74, -3, 111}, new byte[]{75, -107, -99, -41, -114, 28, 116, -25});

    /* JADX INFO: renamed from: e */
    public static final String f5726e = AbstractC1387m.m2421h(new byte[]{110, -127, -42, -107, 113, 75, 78, 63, 87, -110, -59, -107, 111}, new byte[]{8, -13, -73, -14, 28, 46, 32, 75});

    /* JADX INFO: renamed from: b */
    public boolean f5727b;

    /* JADX INFO: renamed from: c */
    public LinearLayout f5728c;

    /* JADX INFO: renamed from: t */
    public static C2194a m3500t(Class cls, Bundle bundle) {
        C2194a c2194a = new C2194a();
        Bundle bundle2 = new Bundle();
        bundle2.putString(f5725d, cls.getName());
        if (bundle != null) {
            bundle2.putBundle(f5726e, bundle);
        }
        c2194a.setArguments(bundle2);
        return c2194a;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(0, R.style.Theme_JCarTools_Uni_Dialog);
        AppCompatDelegate.setDefaultNightMode(1);
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(bundle);
        Window window = dialogOnCreateDialog.getWindow();
        Objects.requireNonNull(window);
        window.setBackgroundDrawable(new ColorDrawable(0));
        return dialogOnCreateDialog;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.dialoguni, viewGroup, false);
        this.f5728c = (LinearLayout) viewInflate.findViewById(R.id.dialoguniLinearLayout);
        return viewInflate;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        FragmentActivity activity;
        super.onDismiss(dialogInterface);
        if (!this.f5727b || !(getActivity() instanceof ActivityC1081W) || (activity = getActivity()) == null || activity.isFinishing() || activity.isDestroyed()) {
            return;
        }
        ((ActivityC1081W) activity).finish();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        View view = getView();
        if (view != null) {
            view.post(new RunnableC1375j2(15, this, view));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (bundle == null) {
            String string = requireArguments().getString(f5725d);
            Bundle bundle2 = requireArguments().getBundle(f5726e);
            if (bundle2 != null && bundle2.getBoolean(AbstractC1387m.m2421h(new byte[]{63, -43, -54, -106, 23, 1, -2, 5, 2, -41, -62, -120, 25, 6, -49, 9, 52, -48, -56, -118}, new byte[]{93, -76, -83, -28, 118, 116, -112, 97}))) {
                this.f5728c.setBackgroundColor(0);
            }
            try {
                Fragment fragment = (Fragment) Class.forName(string).newInstance();
                if (bundle2 != null) {
                    fragment.setArguments(bundle2);
                }
                getChildFragmentManager().beginTransaction().replace(R.id.dialogContent, fragment).commit();
            } catch (Exception unused) {
            }
        }
        view.setVisibility(4);
    }
}

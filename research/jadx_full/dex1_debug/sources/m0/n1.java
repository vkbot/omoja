package m0;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.example.navistart.Notik;
import java.util.ArrayList;
import java.util.List;
import ru.transfer.MessageData;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class n1 extends l0.b implements t1.g, w0.b0 {
    public static Notik e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List f3533b = new ArrayList();
    public LinearLayout c;
    public t1.h d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w0.b0
    public final void i(String str) {
        if (this.d != null) {
            new Handler(Looper.getMainLooper()).post(new e0.j2(20, this, str));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle arguments = getArguments();
        if (arguments != null) {
            MessageData serializable = arguments.getSerializable(e0.m.h(new byte[]{-40, -34, 76, 96, 33, 113, -56, -43, -44, -49, 94}, new byte[]{-75, -69, 63, 19, 64, 22, -83, -111}));
            if (serializable instanceof MessageData) {
                this.f3533b.add(serializable);
            } else if (serializable instanceof List) {
                List list = (List) serializable;
                if (!list.isEmpty() && (list.get(0) instanceof MessageData)) {
                    this.f3533b = list;
                }
            }
        }
        View viewInflate = layoutInflater.inflate(2131493043, viewGroup, false);
        this.c = (LinearLayout) viewInflate.findViewById(2131296315);
        return viewInflate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        this.c.setOnHierarchyChangeListener(new m1(this));
        List list = this.f3533b;
        if (list == null || list.isEmpty()) {
            return;
        }
        this.c.removeAllViews();
        for (MessageData messageData : this.f3533b) {
            Context contextRequireContext = requireContext();
            t1.h hVar = new t1.h(contextRequireContext);
            hVar.f5348f = false;
            View.inflate(contextRequireContext, 2131493042, hVar);
            hVar.f5347b = (TextView) hVar.findViewById(2131297000);
            hVar.c = (TextView) hVar.findViewById(2131297657);
            hVar.f5352j = (ImageView) hVar.findViewById(2131296450);
            hVar.d = (ImageButton) hVar.findViewById(2131296589);
            ImageButton imageButton = (ImageButton) hVar.findViewById(2131296578);
            hVar.e = imageButton;
            imageButton.setOnClickListener(new androidx.navigation.c(20, hVar));
            hVar.f5349g = (EditText) hVar.findViewById(2131296733);
            hVar.f5350h = (LinearLayout) hVar.findViewById(2131296316);
            hVar.f5351i = (LinearLayout) hVar.findViewById(2131296317);
            hVar.setMessageDataViewListener(this);
            hVar.setMessage(messageData);
            this.c.addView(hVar, 0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        super.onStop();
        this.d = null;
    }

    @Override // w0.b0
    public final void m(w0.b bVar) {
    }
}

package p132m0;

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
import androidx.navigation.ViewOnClickListenerC0675c;
import com.example.navistart.Notik;
import com.example.navistart.R;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import p047e0.AbstractC1387m;
import p047e0.RunnableC1375j2;
import p121l0.C2195b;
import p198t1.C3230h;
import p198t1.InterfaceC3229g;
import p225w0.EnumC3443b;
import p225w0.InterfaceC3444b0;
import ru.transfer.MessageData;

/* JADX INFO: renamed from: m0.n1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2329n1 extends C2195b implements InterfaceC3229g, InterfaceC3444b0 {

    /* JADX INFO: renamed from: e */
    public static Notik f6247e;

    /* JADX INFO: renamed from: b */
    public List f6248b = new ArrayList();

    /* JADX INFO: renamed from: c */
    public LinearLayout f6249c;

    /* JADX INFO: renamed from: d */
    public C3230h f6250d;

    @Override // p225w0.InterfaceC3444b0
    /* JADX INFO: renamed from: i */
    public final void mo1517i(String str) {
        if (this.f6250d != null) {
            new Handler(Looper.getMainLooper()).post(new RunnableC1375j2(20, this, str));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle arguments = getArguments();
        if (arguments != null) {
            Serializable serializable = arguments.getSerializable(AbstractC1387m.m2421h(new byte[]{-40, -34, 76, 96, 33, 113, -56, -43, -44, -49, 94}, new byte[]{-75, -69, 63, 19, 64, 22, -83, -111}));
            if (serializable instanceof MessageData) {
                this.f6248b.add((MessageData) serializable);
            } else if (serializable instanceof List) {
                List list = (List) serializable;
                if (!list.isEmpty() && (list.get(0) instanceof MessageData)) {
                    this.f6248b = list;
                }
            }
        }
        View viewInflate = layoutInflater.inflate(R.layout.messagedataview, viewGroup, false);
        this.f6249c = (LinearLayout) viewInflate.findViewById(R.id.LinearLayoutMessageDataView);
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f6249c.setOnHierarchyChangeListener(new ViewGroupOnHierarchyChangeListenerC2324m1(this));
        List list = this.f6248b;
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f6249c.removeAllViews();
        for (MessageData messageData : this.f6248b) {
            Context contextRequireContext = requireContext();
            C3230h c3230h = new C3230h(contextRequireContext);
            c3230h.f9457f = false;
            View.inflate(contextRequireContext, R.layout.message_view, c3230h);
            c3230h.f9453b = (TextView) c3230h.findViewById(R.id.messageText);
            c3230h.f9454c = (TextView) c3230h.findViewById(R.id.titleText);
            c3230h.f9461j = (ImageView) c3230h.findViewById(R.id.appIco);
            c3230h.f9455d = (ImageButton) c3230h.findViewById(R.id.button_send_messadge);
            ImageButton imageButton = (ImageButton) c3230h.findViewById(R.id.button_golos_messadge);
            c3230h.f9456e = imageButton;
            imageButton.setOnClickListener(new ViewOnClickListenerC0675c(20, c3230h));
            c3230h.f9458g = (EditText) c3230h.findViewById(R.id.editText_send_messadge);
            c3230h.f9459h = (LinearLayout) c3230h.findViewById(R.id.LinearLayout_send_messadge);
            c3230h.f9460i = (LinearLayout) c3230h.findViewById(R.id.LinearLayout_send_messadge_edit);
            c3230h.setMessageDataViewListener(this);
            c3230h.setMessage(messageData);
            this.f6249c.addView(c3230h, 0);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        super.onStop();
        this.f6250d = null;
    }

    @Override // p225w0.InterfaceC3444b0
    /* JADX INFO: renamed from: m */
    public final void mo1518m(EnumC3443b enumC3443b) {
    }
}

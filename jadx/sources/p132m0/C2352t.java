package p132m0;

import android.content.DialogInterface;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;
import com.google.protobuf.AbstractC1178q;
import java.util.ArrayList;
import java.util.Locale;
import kotlin.jvm.internal.ByteCompanionObject;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.C1440x1;
import p047e0.C1445y2;
import p047e0.DialogInterfaceOnClickListenerC1348e0;
import p078h0.C1652b;
import p206u0.C3277a;

/* JADX INFO: renamed from: m0.t */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2352t extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2360v f6352a;

    public C2352t(C2360v c2360v) {
        this.f6352a = c2360v;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f6352a.f6383c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
        C2348s c2348s = (C2348s) viewHolder;
        C2360v c2360v = this.f6352a;
        final C2356u c2356u = (C2356u) c2360v.f6383c.get(i10);
        ImageView imageView = c2348s.f6338a;
        ImageButton imageButton = c2348s.f6343f;
        Button button = c2348s.f6342e;
        Button button2 = c2348s.f6341d;
        imageView.setImageDrawable(c2356u.f6368h);
        c2348s.f6339b.setText(c2356u.f6361a);
        TextView textView = c2348s.f6340c;
        ArrayList arrayList = new ArrayList();
        if (!c2356u.f6366f) {
            arrayList.add(c2360v.getString(R.string.app_store_not_installed));
        } else if (TextUtils.isEmpty(c2356u.f6367g)) {
            arrayList.add(c2360v.getString(R.string.app_store_installed));
        } else {
            arrayList.add(c2360v.getString(R.string.app_store_installed_version, c2356u.f6367g));
        }
        if (!TextUtils.isEmpty(c2356u.f6365e)) {
            arrayList.add(c2356u.f6365e);
        }
        if (!TextUtils.isEmpty(c2356u.f6364d)) {
            arrayList.add(c2356u.f6364d);
        }
        textView.setText(TextUtils.join(AbstractC1387m.m2421h(new byte[]{-86, -88, 101, -32, 15}, new byte[]{-118, -120, 25, -64, 47, -77, -120, -93}), arrayList));
        final int i11 = 0;
        button2.setVisibility((!c2356u.f6366f || c2356u.f6369i) ? 0 : 8);
        button2.setText(c2356u.f6366f ? c2360v.getString(R.string.app_store_reinstall) : c2360v.getString(R.string.download));
        button2.setOnClickListener(new View.OnClickListener(this) { // from class: m0.r

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2352t f6329c;

            {
                this.f6329c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i12 = i11;
                C2356u c2356u2 = c2356u;
                C2352t c2352t = this.f6329c;
                switch (i12) {
                    case 0:
                        C2360v c2360v2 = c2352t.f6352a;
                        String str = C2360v.f6378h;
                        if ((c2360v2.requireActivity() instanceof AppCompatActivity) && !TextUtils.isEmpty(c2356u2.f6363c)) {
                            StringBuilder sb = new StringBuilder();
                            C3277a c3277aM2745o = C1652b.m2745o();
                            byte[] bArr = AbstractC1387m.f3322j;
                            String[] strArr = AbstractC1406p3.f3368a;
                            AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
                            AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
                            String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
                            C3277a c3277aM2745o2 = C1652b.m2745o();
                            byte[] bArr2 = AbstractC1387m.f3318f;
                            if ((AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g) ? Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{-7}, new byte[]{-55, -23, 84, 108, 22, -121, -121, -5}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0)))) : Boolean.FALSE).booleanValue()) {
                                AppCompatActivity appCompatActivity = (AppCompatActivity) c2360v2.requireActivity();
                                String str2 = c2356u2.f6363c;
                                String strM2421h = c2356u2.f6362b;
                                if (TextUtils.isEmpty(strM2421h)) {
                                    strM2421h = c2356u2.f6361a;
                                }
                                if (TextUtils.isEmpty(strM2421h)) {
                                    strM2421h = AbstractC1387m.m2421h(new byte[]{-119, 88, 64, -119, 116, 69, -106, 30, -118}, new byte[]{-6, 44, 47, -5, 17, 26, -9, 110});
                                }
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(strM2421h.toLowerCase(Locale.ROOT).replaceAll(AbstractC1387m.m2421h(new byte[]{122, -48, -85, 42, 83, -107, 74, 20, 15, -47, -25, 90}, new byte[]{33, -114, -54, 7, 41, -91, 103, 45}), AbstractC1387m.m2421h(new byte[]{32}, new byte[]{ByteCompanionObject.MAX_VALUE, 27, 9, 89, 34, -97, -9, 87})));
                                new C1445y2(appCompatActivity, str2, AbstractC1178q.m2075i(new byte[]{33, 82, -98, -41}, new byte[]{15, 51, -18, -68, 4, 118, 119, -39}, sb2));
                            }
                        }
                        break;
                    case 1:
                        C2360v.m3728t(c2352t.f6352a, c2356u2);
                        break;
                    case 2:
                        C2360v c2360v3 = c2352t.f6352a;
                        String str3 = C2360v.f6378h;
                        if (c2356u2.f6366f && !TextUtils.isEmpty(c2356u2.f6362b)) {
                            new AlertDialog.Builder(c2360v3.requireContext(), R.style.ThemeOverlay_JCarTools_ModernAlert).setTitle(c2360v3.getString(R.string.delapp)).setMessage(c2360v3.getString(R.string.delapp2) + AbstractC1387m.m2421h(new byte[]{49, -102}, new byte[]{17, -72, 4, -30, 20, 85, 23, -78}) + c2356u2.f6361a + AbstractC1387m.m2421h(new byte[]{-39, 28, -36}, new byte[]{-5, 60, -29, 124, 119, -67, -45, -102})).setPositiveButton(c2360v3.getString(R.string.ok), new DialogInterfaceOnClickListenerC1348e0(2, c2360v3, c2356u2)).setNegativeButton(c2360v3.getString(R.string.cancel), (DialogInterface.OnClickListener) null).show();
                            break;
                        }
                        break;
                    default:
                        if (c2356u2.f6366f) {
                            C2360v.m3728t(c2352t.f6352a, c2356u2);
                        }
                        break;
                }
            }
        });
        button.setVisibility(c2356u.f6366f ? 0 : 8);
        final int i12 = 1;
        button.setOnClickListener(new View.OnClickListener(this) { // from class: m0.r

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2352t f6329c;

            {
                this.f6329c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i13 = i12;
                C2356u c2356u2 = c2356u;
                C2352t c2352t = this.f6329c;
                switch (i13) {
                    case 0:
                        C2360v c2360v2 = c2352t.f6352a;
                        String str = C2360v.f6378h;
                        if ((c2360v2.requireActivity() instanceof AppCompatActivity) && !TextUtils.isEmpty(c2356u2.f6363c)) {
                            StringBuilder sb = new StringBuilder();
                            C3277a c3277aM2745o = C1652b.m2745o();
                            byte[] bArr = AbstractC1387m.f3322j;
                            String[] strArr = AbstractC1406p3.f3368a;
                            AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
                            AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
                            String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
                            C3277a c3277aM2745o2 = C1652b.m2745o();
                            byte[] bArr2 = AbstractC1387m.f3318f;
                            if ((AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g) ? Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{-7}, new byte[]{-55, -23, 84, 108, 22, -121, -121, -5}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0)))) : Boolean.FALSE).booleanValue()) {
                                AppCompatActivity appCompatActivity = (AppCompatActivity) c2360v2.requireActivity();
                                String str2 = c2356u2.f6363c;
                                String strM2421h = c2356u2.f6362b;
                                if (TextUtils.isEmpty(strM2421h)) {
                                    strM2421h = c2356u2.f6361a;
                                }
                                if (TextUtils.isEmpty(strM2421h)) {
                                    strM2421h = AbstractC1387m.m2421h(new byte[]{-119, 88, 64, -119, 116, 69, -106, 30, -118}, new byte[]{-6, 44, 47, -5, 17, 26, -9, 110});
                                }
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(strM2421h.toLowerCase(Locale.ROOT).replaceAll(AbstractC1387m.m2421h(new byte[]{122, -48, -85, 42, 83, -107, 74, 20, 15, -47, -25, 90}, new byte[]{33, -114, -54, 7, 41, -91, 103, 45}), AbstractC1387m.m2421h(new byte[]{32}, new byte[]{ByteCompanionObject.MAX_VALUE, 27, 9, 89, 34, -97, -9, 87})));
                                new C1445y2(appCompatActivity, str2, AbstractC1178q.m2075i(new byte[]{33, 82, -98, -41}, new byte[]{15, 51, -18, -68, 4, 118, 119, -39}, sb2));
                            }
                        }
                        break;
                    case 1:
                        C2360v.m3728t(c2352t.f6352a, c2356u2);
                        break;
                    case 2:
                        C2360v c2360v3 = c2352t.f6352a;
                        String str3 = C2360v.f6378h;
                        if (c2356u2.f6366f && !TextUtils.isEmpty(c2356u2.f6362b)) {
                            new AlertDialog.Builder(c2360v3.requireContext(), R.style.ThemeOverlay_JCarTools_ModernAlert).setTitle(c2360v3.getString(R.string.delapp)).setMessage(c2360v3.getString(R.string.delapp2) + AbstractC1387m.m2421h(new byte[]{49, -102}, new byte[]{17, -72, 4, -30, 20, 85, 23, -78}) + c2356u2.f6361a + AbstractC1387m.m2421h(new byte[]{-39, 28, -36}, new byte[]{-5, 60, -29, 124, 119, -67, -45, -102})).setPositiveButton(c2360v3.getString(R.string.ok), new DialogInterfaceOnClickListenerC1348e0(2, c2360v3, c2356u2)).setNegativeButton(c2360v3.getString(R.string.cancel), (DialogInterface.OnClickListener) null).show();
                            break;
                        }
                        break;
                    default:
                        if (c2356u2.f6366f) {
                            C2360v.m3728t(c2352t.f6352a, c2356u2);
                        }
                        break;
                }
            }
        });
        imageButton.setVisibility(c2356u.f6366f ? 0 : 8);
        final int i13 = 2;
        imageButton.setOnClickListener(new View.OnClickListener(this) { // from class: m0.r

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2352t f6329c;

            {
                this.f6329c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i14 = i13;
                C2356u c2356u2 = c2356u;
                C2352t c2352t = this.f6329c;
                switch (i14) {
                    case 0:
                        C2360v c2360v2 = c2352t.f6352a;
                        String str = C2360v.f6378h;
                        if ((c2360v2.requireActivity() instanceof AppCompatActivity) && !TextUtils.isEmpty(c2356u2.f6363c)) {
                            StringBuilder sb = new StringBuilder();
                            C3277a c3277aM2745o = C1652b.m2745o();
                            byte[] bArr = AbstractC1387m.f3322j;
                            String[] strArr = AbstractC1406p3.f3368a;
                            AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
                            AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
                            String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
                            C3277a c3277aM2745o2 = C1652b.m2745o();
                            byte[] bArr2 = AbstractC1387m.f3318f;
                            if ((AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g) ? Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{-7}, new byte[]{-55, -23, 84, 108, 22, -121, -121, -5}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0)))) : Boolean.FALSE).booleanValue()) {
                                AppCompatActivity appCompatActivity = (AppCompatActivity) c2360v2.requireActivity();
                                String str2 = c2356u2.f6363c;
                                String strM2421h = c2356u2.f6362b;
                                if (TextUtils.isEmpty(strM2421h)) {
                                    strM2421h = c2356u2.f6361a;
                                }
                                if (TextUtils.isEmpty(strM2421h)) {
                                    strM2421h = AbstractC1387m.m2421h(new byte[]{-119, 88, 64, -119, 116, 69, -106, 30, -118}, new byte[]{-6, 44, 47, -5, 17, 26, -9, 110});
                                }
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(strM2421h.toLowerCase(Locale.ROOT).replaceAll(AbstractC1387m.m2421h(new byte[]{122, -48, -85, 42, 83, -107, 74, 20, 15, -47, -25, 90}, new byte[]{33, -114, -54, 7, 41, -91, 103, 45}), AbstractC1387m.m2421h(new byte[]{32}, new byte[]{ByteCompanionObject.MAX_VALUE, 27, 9, 89, 34, -97, -9, 87})));
                                new C1445y2(appCompatActivity, str2, AbstractC1178q.m2075i(new byte[]{33, 82, -98, -41}, new byte[]{15, 51, -18, -68, 4, 118, 119, -39}, sb2));
                            }
                        }
                        break;
                    case 1:
                        C2360v.m3728t(c2352t.f6352a, c2356u2);
                        break;
                    case 2:
                        C2360v c2360v3 = c2352t.f6352a;
                        String str3 = C2360v.f6378h;
                        if (c2356u2.f6366f && !TextUtils.isEmpty(c2356u2.f6362b)) {
                            new AlertDialog.Builder(c2360v3.requireContext(), R.style.ThemeOverlay_JCarTools_ModernAlert).setTitle(c2360v3.getString(R.string.delapp)).setMessage(c2360v3.getString(R.string.delapp2) + AbstractC1387m.m2421h(new byte[]{49, -102}, new byte[]{17, -72, 4, -30, 20, 85, 23, -78}) + c2356u2.f6361a + AbstractC1387m.m2421h(new byte[]{-39, 28, -36}, new byte[]{-5, 60, -29, 124, 119, -67, -45, -102})).setPositiveButton(c2360v3.getString(R.string.ok), new DialogInterfaceOnClickListenerC1348e0(2, c2360v3, c2356u2)).setNegativeButton(c2360v3.getString(R.string.cancel), (DialogInterface.OnClickListener) null).show();
                            break;
                        }
                        break;
                    default:
                        if (c2356u2.f6366f) {
                            C2360v.m3728t(c2352t.f6352a, c2356u2);
                        }
                        break;
                }
            }
        });
        final int i14 = 3;
        c2348s.itemView.setOnClickListener(new View.OnClickListener(this) { // from class: m0.r

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2352t f6329c;

            {
                this.f6329c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i15 = i14;
                C2356u c2356u2 = c2356u;
                C2352t c2352t = this.f6329c;
                switch (i15) {
                    case 0:
                        C2360v c2360v2 = c2352t.f6352a;
                        String str = C2360v.f6378h;
                        if ((c2360v2.requireActivity() instanceof AppCompatActivity) && !TextUtils.isEmpty(c2356u2.f6363c)) {
                            StringBuilder sb = new StringBuilder();
                            C3277a c3277aM2745o = C1652b.m2745o();
                            byte[] bArr = AbstractC1387m.f3322j;
                            String[] strArr = AbstractC1406p3.f3368a;
                            AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
                            AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
                            String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
                            C3277a c3277aM2745o2 = C1652b.m2745o();
                            byte[] bArr2 = AbstractC1387m.f3318f;
                            if ((AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g) ? Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{-7}, new byte[]{-55, -23, 84, 108, 22, -121, -121, -5}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0)))) : Boolean.FALSE).booleanValue()) {
                                AppCompatActivity appCompatActivity = (AppCompatActivity) c2360v2.requireActivity();
                                String str2 = c2356u2.f6363c;
                                String strM2421h = c2356u2.f6362b;
                                if (TextUtils.isEmpty(strM2421h)) {
                                    strM2421h = c2356u2.f6361a;
                                }
                                if (TextUtils.isEmpty(strM2421h)) {
                                    strM2421h = AbstractC1387m.m2421h(new byte[]{-119, 88, 64, -119, 116, 69, -106, 30, -118}, new byte[]{-6, 44, 47, -5, 17, 26, -9, 110});
                                }
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(strM2421h.toLowerCase(Locale.ROOT).replaceAll(AbstractC1387m.m2421h(new byte[]{122, -48, -85, 42, 83, -107, 74, 20, 15, -47, -25, 90}, new byte[]{33, -114, -54, 7, 41, -91, 103, 45}), AbstractC1387m.m2421h(new byte[]{32}, new byte[]{ByteCompanionObject.MAX_VALUE, 27, 9, 89, 34, -97, -9, 87})));
                                new C1445y2(appCompatActivity, str2, AbstractC1178q.m2075i(new byte[]{33, 82, -98, -41}, new byte[]{15, 51, -18, -68, 4, 118, 119, -39}, sb2));
                            }
                        }
                        break;
                    case 1:
                        C2360v.m3728t(c2352t.f6352a, c2356u2);
                        break;
                    case 2:
                        C2360v c2360v3 = c2352t.f6352a;
                        String str3 = C2360v.f6378h;
                        if (c2356u2.f6366f && !TextUtils.isEmpty(c2356u2.f6362b)) {
                            new AlertDialog.Builder(c2360v3.requireContext(), R.style.ThemeOverlay_JCarTools_ModernAlert).setTitle(c2360v3.getString(R.string.delapp)).setMessage(c2360v3.getString(R.string.delapp2) + AbstractC1387m.m2421h(new byte[]{49, -102}, new byte[]{17, -72, 4, -30, 20, 85, 23, -78}) + c2356u2.f6361a + AbstractC1387m.m2421h(new byte[]{-39, 28, -36}, new byte[]{-5, 60, -29, 124, 119, -67, -45, -102})).setPositiveButton(c2360v3.getString(R.string.ok), new DialogInterfaceOnClickListenerC1348e0(2, c2360v3, c2356u2)).setNegativeButton(c2360v3.getString(R.string.cancel), (DialogInterface.OnClickListener) null).show();
                            break;
                        }
                        break;
                    default:
                        if (c2356u2.f6366f) {
                            C2360v.m3728t(c2352t.f6352a, c2356u2);
                        }
                        break;
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
        return new C2348s(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_store_app, viewGroup, false));
    }
}

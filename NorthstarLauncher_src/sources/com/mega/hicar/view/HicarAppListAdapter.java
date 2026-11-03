package com.mega.hicar.view;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.mega.hicar.lib.R;
import com.mega.hicar.model.AppInfo;
import java.util.Collection;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.stream.Stream;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import mega.log.MLog;

/* JADX INFO: compiled from: HicarAppListAdapter.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001aB\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0016\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0007J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u000fH\u0016J\u0018\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000fH\u0016J\u0014\u0010\u0017\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\tJ\u0016\u0010\u0018\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0007J\u0014\u0010\u0019\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\tR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082D¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/mega/hicar/view/HicarAppListAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/mega/hicar/view/HicarAppListAdapter$ListViewHolder;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "TAG", "", "mInfos", "", "Lcom/mega/hicar/model/AppInfo;", "appendNewAppInfoList", "", "list", "getItemCount", "", "onBindViewHolder", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "removeAppInfoList", "setAppInfoList", "updateAppInfoList", "ListViewHolder", "hicar-lib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class HicarAppListAdapter extends RecyclerView.Adapter<ListViewHolder> {
    private final String TAG;
    private List<AppInfo> mInfos;

    public HicarAppListAdapter(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.TAG = "HicarAppListAdapter";
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ListViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.hicar_app_icon_layout, parent, false);
        Intrinsics.checkNotNullExpressionValue(viewInflate, "from(parent.context)\n   …on_layout, parent, false)");
        return new ListViewHolder(viewInflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<AppInfo> list = this.mInfos;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ListViewHolder holder, int position) {
        final AppInfo appInfo;
        Intrinsics.checkNotNullParameter(holder, "holder");
        List<AppInfo> list = this.mInfos;
        if (list == null || (appInfo = list.get(position)) == null) {
            return;
        }
        holder.getTextView().setText(appInfo.name);
        ImageView imageView = holder.getImageView();
        IconCache iconCache = IconCache.INSTANCE;
        String str = appInfo.packageName;
        Intrinsics.checkNotNullExpressionValue(str, "it.packageName");
        byte[] bArr = appInfo.icon;
        Intrinsics.checkNotNullExpressionValue(bArr, "it.icon");
        imageView.setImageBitmap(iconCache.getIcon(str, bArr));
        holder.getRootView().setOnClickListener(new View.OnClickListener() { // from class: com.mega.hicar.view.HicarAppListAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HicarAppListAdapter.onBindViewHolder$lambda$1$lambda$0(appInfo, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBindViewHolder$lambda$1$lambda$0(AppInfo it, View view) {
        Intrinsics.checkNotNullParameter(it, "$it");
        HiCarAppListManager.Companion companion = HiCarAppListManager.INSTANCE;
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "view.context");
        companion.getInstance(context).startApplication(it);
    }

    public final void setAppInfoList(List<AppInfo> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.mInfos = list;
        notifyDataSetChanged();
    }

    public final void removeAppInfoList(List<AppInfo> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        List<AppInfo> list2 = this.mInfos;
        if (list2 != null) {
            CollectionsKt.toMutableList((Collection) list2);
        }
        MLog.d(this.TAG, "removeAppInfoList: list==" + list);
        if (list.isEmpty()) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            List<AppInfo> list3 = this.mInfos;
            if (list3 != null && list3.contains(list.get(i))) {
                List<AppInfo> list4 = this.mInfos;
                Integer numValueOf = list4 != null ? Integer.valueOf(list4.indexOf(list.get(i))) : null;
                if (numValueOf != null) {
                    int iIntValue = numValueOf.intValue();
                    List<AppInfo> list5 = this.mInfos;
                    if (list5 != null) {
                        list5.remove(iIntValue);
                    }
                    notifyItemRemoved(iIntValue);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean updateAppInfoList$lambda$3(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateAppInfoList$lambda$4(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public final void updateAppInfoList(final List<AppInfo> list) {
        Stream<AppInfo> stream;
        Intrinsics.checkNotNullParameter(list, "list");
        List<AppInfo> list2 = this.mInfos;
        if (list2 == null || (stream = list2.stream()) == null) {
            return;
        }
        final Function1<AppInfo, Boolean> function1 = new Function1<AppInfo, Boolean>() { // from class: com.mega.hicar.view.HicarAppListAdapter.updateAppInfoList.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(AppInfo appInfo) {
                return Boolean.valueOf(list.contains(appInfo));
            }
        };
        Stream<AppInfo> streamFilter = stream.filter(new Predicate() { // from class: com.mega.hicar.view.HicarAppListAdapter$$ExternalSyntheticLambda1
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return HicarAppListAdapter.updateAppInfoList$lambda$3(function1, obj);
            }
        });
        if (streamFilter != null) {
            final Function1<AppInfo, Unit> function2 = new Function1<AppInfo, Unit>() { // from class: com.mega.hicar.view.HicarAppListAdapter.updateAppInfoList.2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(AppInfo appInfo) {
                    invoke2(appInfo);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(AppInfo appInfo) {
                    List list3 = HicarAppListAdapter.this.mInfos;
                    if (list3 != null) {
                        int iIndexOf = list3.indexOf(appInfo);
                        HicarAppListAdapter hicarAppListAdapter = HicarAppListAdapter.this;
                        MLog.d(hicarAppListAdapter.TAG, "updateAppInfoList index = " + iIndexOf + ", info = " + appInfo);
                        hicarAppListAdapter.notifyItemChanged(iIndexOf);
                    }
                }
            };
            streamFilter.forEach(new Consumer() { // from class: com.mega.hicar.view.HicarAppListAdapter$$ExternalSyntheticLambda2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    HicarAppListAdapter.updateAppInfoList$lambda$4(function2, obj);
                }
            });
        }
    }

    public final void appendNewAppInfoList(List<AppInfo> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        for (AppInfo appInfo : list) {
            List<AppInfo> list2 = this.mInfos;
            if (list2 != null && list2.contains(appInfo)) {
                MLog.d(this.TAG, "appendNewAppInfoList contains info = " + appInfo);
            } else {
                MLog.d(this.TAG, "appendNewAppInfoList info = " + appInfo);
                List<AppInfo> list3 = this.mInfos;
                if (list3 != null) {
                    list3.add(appInfo);
                }
            }
        }
        List<AppInfo> list4 = this.mInfos;
        if (list4 != null) {
            list4.size();
        }
        notifyDataSetChanged();
    }

    /* JADX INFO: compiled from: HicarAppListAdapter.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/mega/hicar/view/HicarAppListAdapter$ListViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "itemView", "Landroid/view/View;", "(Landroid/view/View;)V", "imageView", "Landroid/widget/ImageView;", "getImageView", "()Landroid/widget/ImageView;", "setImageView", "(Landroid/widget/ImageView;)V", "rootView", "Landroid/view/ViewGroup;", "getRootView", "()Landroid/view/ViewGroup;", "setRootView", "(Landroid/view/ViewGroup;)V", "textView", "Landroid/widget/TextView;", "getTextView", "()Landroid/widget/TextView;", "setTextView", "(Landroid/widget/TextView;)V", "hicar-lib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class ListViewHolder extends RecyclerView.ViewHolder {
        private ImageView imageView;
        private ViewGroup rootView;
        private TextView textView;

        public final ImageView getImageView() {
            return this.imageView;
        }

        public final ViewGroup getRootView() {
            return this.rootView;
        }

        public final TextView getTextView() {
            return this.textView;
        }

        public final void setImageView(ImageView imageView) {
            Intrinsics.checkNotNullParameter(imageView, "<set-?>");
            this.imageView = imageView;
        }

        public final void setRootView(ViewGroup viewGroup) {
            Intrinsics.checkNotNullParameter(viewGroup, "<set-?>");
            this.rootView = viewGroup;
        }

        public final void setTextView(TextView textView) {
            Intrinsics.checkNotNullParameter(textView, "<set-?>");
            this.textView = textView;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ListViewHolder(View itemView) {
            super(itemView);
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            View viewFindViewById = itemView.findViewById(R.id.item_root_view);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById, "itemView.findViewById<Vi…oup>(R.id.item_root_view)");
            this.rootView = (ViewGroup) viewFindViewById;
            View viewFindViewById2 = itemView.findViewById(R.id.item_icon);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById2, "itemView.findViewById<ImageView>(R.id.item_icon)");
            this.imageView = (ImageView) viewFindViewById2;
            View viewFindViewById3 = itemView.findViewById(R.id.item_text);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById3, "itemView.findViewById<TextView>(R.id.item_text)");
            this.textView = (TextView) viewFindViewById3;
        }
    }
}

.class public Lcom/mega/engineeringmode/function/dtc/DtcCurrentFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic c:I


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView;

.field public b:Lcom/mega/engineeringmode/function/dtc/DtcAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p3, "DtcCurrentFragment"

    const-string/jumbo v0, "onCreateView"

    invoke-static {p3, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const p3, 0x7f0d0078

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0162

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/mega/engineeringmode/function/dtc/DtcCurrentFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/mega/engineeringmode/function/dtc/DtcAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/mega/engineeringmode/function/dtc/DtcAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object p2, p0, Lcom/mega/engineeringmode/function/dtc/DtcCurrentFragment;->b:Lcom/mega/engineeringmode/function/dtc/DtcAdapter;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/mega/engineeringmode/function/dtc/DtcCurrentFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p2, p0, Lcom/mega/engineeringmode/function/dtc/DtcCurrentFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/mega/engineeringmode/ui/SpacesItemDecoration;

    const/16 v0, 0x14

    invoke-direct {p3, v0}, Lcom/mega/engineeringmode/ui/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p2, p0, Lcom/mega/engineeringmode/function/dtc/DtcCurrentFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/mega/engineeringmode/function/dtc/DtcCurrentFragment;->b:Lcom/mega/engineeringmode/function/dtc/DtcAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p2, 0x7f0a01a0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lq0/a;

    const/16 v0, 0xb

    invoke-direct {p3, v0, p0}, Lq0/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const-string p0, "DtcCurrentFragment"

    const-string/jumbo v0, "onDestroyView"

    invoke-static {p0, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

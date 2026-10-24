.class public Lcom/mega/carsettings/ui/dialog/SettingsDialog;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface;


# static fields
.field public static final synthetic b:I


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mega/carsettings/ui/dialog/SettingsDialog;->a:Z

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget-boolean v0, p0, Lcom/mega/carsettings/ui/dialog/SettingsDialog;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mega/carsettings/ui/dialog/SettingsDialog;->a:Z

    :cond_0
    invoke-virtual {p0}, Lcom/mega/carsettings/ui/dialog/SettingsDialog;->dismiss()V

    return-void
.end method

.method public final dismiss()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p1, p0, Lv0/a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p0, Lv0/a;

    invoke-interface {p0}, Lv0/a;->a()Lv0/b;

    const/4 p0, 0x0

    throw p0
.end method

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
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p3, 0x7f0d0074

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lx0/d;

    invoke-direct {p2, v0}, Lx0/d;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lx0/c;

    invoke-direct {p2, p0, p1}, Lx0/c;-><init>(Landroid/content/DialogInterface;Landroid/view/View;)V

    const p0, 0x7f0a0131

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

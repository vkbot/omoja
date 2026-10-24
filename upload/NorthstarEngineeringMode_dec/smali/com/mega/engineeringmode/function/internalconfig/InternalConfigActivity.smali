.class public final Lcom/mega/engineeringmode/function/internalconfig/InternalConfigActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final synthetic k:I


# instance fields
.field public i:Lcom/mega/engineeringmode/databinding/ActivityInternalConfigBinding;

.field public final j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    const-string v0, "com.mega.engineeringmode.supportchinese"

    iput-object v0, p0, Lcom/mega/engineeringmode/function/internalconfig/InternalConfigActivity;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0038

    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string/jumbo v0, "setContentView(this, R.l\u2026activity_internal_config)"

    invoke-static {p1, v0}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/mega/engineeringmode/databinding/ActivityInternalConfigBinding;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/internalconfig/InternalConfigActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityInternalConfigBinding;

    const p1, 0x7f120198

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/internalconfig/InternalConfigActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityInternalConfigBinding;

    if-eqz p1, :cond_0

    new-instance v0, Lw0/d;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Lw0/d;-><init>(ILjava/lang/Object;)V

    iget-object p0, p1, Lcom/mega/engineeringmode/databinding/ActivityInternalConfigBinding;->r:Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lo3/h;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onResume()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/internalconfig/InternalConfigActivity;->j:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ld/f;->z(Ljava/lang/String;I)I

    move-result v0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/internalconfig/InternalConfigActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityInternalConfigBinding;

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityInternalConfigBinding;->r:Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-virtual {p0, v1}, Lcom/mega/engineeringmode/ui/MegaSwitch;->setChecked(Z)V

    return-void

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Lo3/h;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

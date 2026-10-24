.class public final Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final synthetic m:I


# instance fields
.field public i:Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;

.field public j:Ln2/i;

.field public k:Ljava/lang/String;

.field public final l:Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->k:Ljava/lang/String;

    new-instance v0, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity$a;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity$a;-><init>(Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->l:Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity$a;

    return-void
.end method

.method public static final n(Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dealSuccessExportScreen:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "path:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";mScreenPath:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FunctionSafeActivity"

    invoke-static {v0, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->k:Ljava/lang/String;

    new-instance v0, Ly1/b;

    invoke-direct {v0, p0}, Ly1/b;-><init>(Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;)V

    invoke-static {p2, p1, v0}, Ld/f;->o(Ljava/lang/String;Ljava/lang/String;Ln3/l;)V

    return-void
.end method


# virtual methods
.method public final o()Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;
    .locals 0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lo3/h;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0032

    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string/jumbo v0, "setContentView(this, R.l\u2026t.activity_function_safe)"

    invoke-static {p1, v0}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->j()V

    invoke-static {}, Lb1/b;->b()Z

    move-result p1

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->o()Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;

    move-result-object v0

    const-string v1, "binding.rg"

    iget-object v0, v0, Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;->c:Landroid/widget/RadioGroup;

    invoke-static {v0, v1}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "function_safe"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->check(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->o()Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;->r:Lcom/mega/engineeringmode/ui/MegaSwitch;

    const v1, 0x670000ca

    iput v1, p1, Lcom/mega/engineeringmode/ui/MegaSwitch;->F:I

    const/4 v1, 0x1

    iput v1, p1, Lcom/mega/engineeringmode/ui/MegaSwitch;->I:I

    iput v1, p1, Lcom/mega/engineeringmode/ui/MegaSwitch;->H:I

    const/4 v2, 0x0

    iput v2, p1, Lcom/mega/engineeringmode/ui/MegaSwitch;->G:I

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->o()Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;->r:Lcom/mega/engineeringmode/ui/MegaSwitch;

    const-string v3, "icm_frozen_screen"

    iput-object v3, p1, Lcom/mega/engineeringmode/ui/MegaSwitch;->J:Ljava/lang/String;

    iput v2, p1, Lcom/mega/engineeringmode/ui/MegaSwitch;->K:I

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->o()Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;->r:Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-virtual {p1}, Lcom/mega/engineeringmode/ui/MegaSwitch;->e()V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->o()Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;->y:Lcom/mega/engineeringmode/ui/MegaSwitch;

    const v3, 0x670000cb

    iput v3, p1, Lcom/mega/engineeringmode/ui/MegaSwitch;->F:I

    iput v1, p1, Lcom/mega/engineeringmode/ui/MegaSwitch;->I:I

    iput v1, p1, Lcom/mega/engineeringmode/ui/MegaSwitch;->H:I

    iput v2, p1, Lcom/mega/engineeringmode/ui/MegaSwitch;->G:I

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->o()Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;->y:Lcom/mega/engineeringmode/ui/MegaSwitch;

    const-string v3, "icm_video_stream_sts"

    iput-object v3, p1, Lcom/mega/engineeringmode/ui/MegaSwitch;->J:Ljava/lang/String;

    iput v2, p1, Lcom/mega/engineeringmode/ui/MegaSwitch;->K:I

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->o()Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;->y:Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-virtual {p1}, Lcom/mega/engineeringmode/ui/MegaSwitch;->e()V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->o()Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;->x:Lcom/mega/engineeringmode/ui/MegaSwitch;

    const v3, 0x670000cc

    iput v3, p1, Lcom/mega/engineeringmode/ui/MegaSwitch;->F:I

    iput v1, p1, Lcom/mega/engineeringmode/ui/MegaSwitch;->I:I

    iput v1, p1, Lcom/mega/engineeringmode/ui/MegaSwitch;->H:I

    iput v2, p1, Lcom/mega/engineeringmode/ui/MegaSwitch;->G:I

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->o()Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;->x:Lcom/mega/engineeringmode/ui/MegaSwitch;

    const-string v3, "icm_tt_light_test"

    iput-object v3, p1, Lcom/mega/engineeringmode/ui/MegaSwitch;->J:Ljava/lang/String;

    iput v2, p1, Lcom/mega/engineeringmode/ui/MegaSwitch;->K:I

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->o()Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;->x:Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-virtual {p1}, Lcom/mega/engineeringmode/ui/MegaSwitch;->e()V

    new-instance p1, Lg1/h;

    invoke-direct {p1, p0, v1}, Lg1/h;-><init>(Lcom/mega/engineeringmode/function/BaseFunctionActivity;I)V

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->o()Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;

    move-result-object p1

    new-instance v0, Ly1/a;

    invoke-direct {v0, p0, v2}, Ly1/a;-><init>(Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;I)V

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;->Z:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->o()Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;

    move-result-object p1

    new-instance v0, Lw0/d;

    const/16 v2, 0xd

    invoke-direct {v0, v2, p0}, Lw0/d;-><init>(ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;->r:Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->o()Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;

    move-result-object p1

    new-instance v0, Lx0/b;

    const/16 v2, 0xf

    invoke-direct {v0, v2, p0}, Lx0/b;-><init>(ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;->y:Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->o()Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;

    move-result-object p1

    new-instance v0, Ly1/a;

    invoke-direct {v0, p0, v1}, Ly1/a;-><init>(Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;I)V

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;->x:Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f120364

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->i(Ljava/lang/String;)V

    new-instance p1, Ln2/i;

    invoke-direct {p1}, Ln2/i;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->j:Ln2/i;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->l:Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity$a;

    const-string v0, "Screen/Log/resp"

    invoke-virtual {p1, v0, p0}, Ln2/i;->a(Ljava/lang/String;Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->j:Ln2/i;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->l:Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity$a;

    const-string v1, "Screen/Log/resp"

    invoke-virtual {v0, v1, p0}, Ln2/i;->h(Ljava/lang/String;Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;)V

    return-void

    :cond_0
    const-string p0, "mMsgUtil"

    invoke-static {p0}, Lo3/h;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.class public final synthetic Lz1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lz1/b;->a:I

    iput-object p1, p0, Lz1/b;->b:Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lz1/b;->a:I

    iget-object p0, p0, Lz1/b;->b:Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;

    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->q:I

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->n()V

    iget p1, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->j:I

    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->k:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->finish()V

    :cond_0
    return-void

    :pswitch_0
    sget p1, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->q:I

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

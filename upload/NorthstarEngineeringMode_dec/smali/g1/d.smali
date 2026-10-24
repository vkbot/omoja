.class public final synthetic Lg1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mega/engineeringmode/function/LogExportActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/LogExportActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lg1/d;->a:I

    iput-object p1, p0, Lg1/d;->b:Lcom/mega/engineeringmode/function/LogExportActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lg1/d;->a:I

    iget-object p0, p0, Lg1/d;->b:Lcom/mega/engineeringmode/function/LogExportActivity;

    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/mega/engineeringmode/function/LogExportActivity;->r:I

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/LogExportActivity;->p(I)V

    return-void

    :pswitch_0
    sget p1, Lcom/mega/engineeringmode/function/LogExportActivity;->r:I

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/LogExportActivity;->p(I)V

    return-void

    :pswitch_1
    sget p1, Lcom/mega/engineeringmode/function/LogExportActivity;->r:I

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/LogExportActivity;->q(I)V

    return-void

    :pswitch_2
    sget p1, Lcom/mega/engineeringmode/function/LogExportActivity;->r:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/LogExportActivity;->r(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

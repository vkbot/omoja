.class public final synthetic Lg1/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg1/b0;->a:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p0, p0, Lg1/b0;->a:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/mega/engineeringmode/function/SystemResetActivity;->k:I

    return-void

    :pswitch_0
    sget p0, Lcom/mega/engineeringmode/function/SystemResetActivity;->k:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

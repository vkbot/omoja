.class public final synthetic Lu1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mega/engineeringmode/function/mic/MicActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/mic/MicActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lu1/b;->a:I

    iput-object p1, p0, Lu1/b;->b:Lcom/mega/engineeringmode/function/mic/MicActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lu1/b;->a:I

    iget-object p0, p0, Lu1/b;->b:Lcom/mega/engineeringmode/function/mic/MicActivity;

    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/mega/engineeringmode/function/mic/MicActivity;->w:I

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/mic/MicActivity;->o(I)V

    return-void

    :pswitch_0
    sget p1, Lcom/mega/engineeringmode/function/mic/MicActivity;->w:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/mic/MicActivity;->o(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

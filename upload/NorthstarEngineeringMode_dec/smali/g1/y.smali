.class public final synthetic Lg1/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/a$a;


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Lcom/mega/engineeringmode/function/SystemRebootActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/SystemRebootActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lg1/y;->c:I

    iput-object p1, p0, Lg1/y;->r:Lcom/mega/engineeringmode/function/SystemRebootActivity;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget v0, p0, Lg1/y;->c:I

    iget-object p0, p0, Lg1/y;->r:Lcom/mega/engineeringmode/function/SystemRebootActivity;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/mega/engineeringmode/function/SystemRebootActivity;->l:I

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/SystemRebootActivity;->n()V

    return-void

    :pswitch_0
    sget v0, Lcom/mega/engineeringmode/function/SystemRebootActivity;->l:I

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/SystemRebootActivity;->n()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

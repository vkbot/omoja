.class public final synthetic Lv1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lv1/d;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget p0, p0, Lv1/d;->c:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Ln2/d;->b()Ln0/a;

    return-void

    :pswitch_0
    sget-object p0, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    const v0, 0x7f12014b

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lk2/d;->a(Landroid/content/Context;II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

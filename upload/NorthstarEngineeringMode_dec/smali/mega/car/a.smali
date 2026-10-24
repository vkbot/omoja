.class public final synthetic Lmega/car/a;
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

    iput p1, p0, Lmega/car/a;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget p0, p0, Lmega/car/a;->c:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->a()V

    return-void

    :pswitch_0
    invoke-static {}, Lmega/car/MegaCarProperty;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

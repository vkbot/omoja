.class public final synthetic Lorg/apache/poi/ss/formula/functions/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/ss/formula/functions/e;->a:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/functions/e;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lorg/apache/poi/ss/formula/functions/DStdev;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/DStdev;-><init>()V

    return-object p0

    :pswitch_0
    new-instance p0, Lorg/apache/poi/ss/formula/functions/DCount;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/DCount;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/apache/poi/ss/formula/functions/DMin;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/DMin;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/apache/poi/ss/formula/functions/DGet;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/DGet;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
